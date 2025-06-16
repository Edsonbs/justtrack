// Esperamos a que el DOM esté completamente cargado antes de ejecutar el script
document.addEventListener("DOMContentLoaded", () => {
    // Diccionario de iconos por tipo de lista, con sus versiones activas e inactivas
    const iconos = {
        watchlist: {
            activo: "contenido_marcado_icon.svg",
            inactivo: "contenido_no_marcado_icon.svg",
        },
        visto: {
            activo: "contenido_visto_icon.svg",
            inactivo: "contenido_no_visto_icon.svg",
        },
        like: {
            activo: "contenido_con_like_icon.svg",
            inactivo: "contenido_sin_like_icon.svg",
        },
        dislike: {
            activo: "contenido_con_dislike_icon.svg",
            inactivo: "contenido_sin_dislike_icon.svg",
        },
    };

    // Traducción del tipo de botón a los nombres de lista en la base de datos
    const nombres = {
        watchlist: "Watchlist",
        visto: "Visto",
        like: "Me gusta",
        dislike: "No me gusta",
    };

    // Función para actualizar el icono de un botón según si está activo o no
    const actualizarIcono = (boton, tipo, activo) => {
        const img = boton.querySelector("img"); // Obtener la imagen del botón
        const { activo: iconoActivo, inactivo: iconoInactivo } = iconos[tipo]; // Iconos correspondientes
        // Reemplazamos el nombre del archivo por el icono activo o inactivo
        img.src = img.src.replace(/[^/]+$/, activo ? iconoActivo : iconoInactivo);
    };

    // Función para alternar una película en una lista (añadir o quitar)
    const toggleLista = async (tipo, id_reproducible, boton, activar) => {
        await fetch("/listas/agregar", {
            method: "POST",
            headers: {
                "Content-Type": "application/json",
                "X-CSRF-TOKEN": document.querySelector('meta[name="csrf-token"]').content // Token CSRF para seguridad
            },
            body: JSON.stringify({
                tipo: nombres[tipo], // Nombre de la lista ("Visto", "Me gusta", etc.)
                id_reproducible // ID de la película
            })
        });

        // Actualiza visualmente el icono del botón
        actualizarIcono(boton, tipo, activar);
    };

    // Selecciona todos los botones de interacción de películas y les añade un event listener
    document.querySelectorAll(".interacciones_peliculas button").forEach((boton) => {
        boton.addEventListener("click", async () => {

            // Obtenemos el tipo (watchlist, visto, like, dislike) e ID de la película desde el ID del botón
            const partes = boton.id.split("_");
            const tipo = partes[1]; // Tipo: watchlist, visto, like, dislike
            const id = partes.pop(); // Último elemento es el ID numérico de la película

            // Referencias a los botones relacionados con esta película
            const btnVisto = document.querySelector(`#boton_visto_${id}`);
            const btnLike = document.querySelector(`#boton_like_${id}`);
            const btnDislike = document.querySelector(`#boton_dislike_${id}`);

            // Comprobamos si el botón actual está activo
            const img = boton.querySelector("img");
            const src = img.src.split("/").pop(); // Extrae el nombre del archivo
            const activo = src === iconos[tipo].activo; // ¿Está activo?
            const nuevoEstado = !activo; // Queremos invertir su estado

            // Si se pulsa "like" o "dislike"
            if (tipo === "like" || tipo === "dislike") {
                // Si no está ya en la lista "visto", lo añadimos automáticamente
                if (!btnVisto.querySelector("img").src.includes(iconos.visto.activo)) {
                    await toggleLista("visto", id, btnVisto, true);
                }

                // Si el otro (opuesto) está activo, lo desactivamos
                const opuesto = tipo === "like" ? "dislike" : "like";
                const btnOpuesto = document.querySelector(`#boton_${opuesto}_${id}`);

                if (btnOpuesto.querySelector("img").src.includes(iconos[opuesto].activo)) {
                    await toggleLista(opuesto, id, btnOpuesto, false);
                }
            }

            // Si se desactiva "visto", se eliminan también "like" y "dislike"
            if (tipo === "visto" && !nuevoEstado) {
                if (btnLike.querySelector("img").src.includes(iconos.like.activo)) {
                    await toggleLista("like", id, btnLike, false);
                }
                if (btnDislike.querySelector("img").src.includes(iconos.dislike.activo)) {
                    await toggleLista("dislike", id, btnDislike, false);
                }
            }

            // Acción principal: añadir o quitar el elemento en la lista correspondiente
            await toggleLista(tipo, id, boton, nuevoEstado);
        });
    });
});
