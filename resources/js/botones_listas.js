document.addEventListener("DOMContentLoaded", () => {
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

    const nombres = {
        watchlist: "Watchlist",
        visto: "Visto",
        like: "Me gusta",
        dislike: "No me gusta",
    };

    const actualizarIcono = (boton, tipo, activo) => {
        const img = boton.querySelector("img");
        const { activo: iconoActivo, inactivo: iconoInactivo } = iconos[tipo];
        img.src = img.src.replace(/[^/]+$/, activo ? iconoActivo : iconoInactivo);
    };

    const toggleLista = async (tipo, id_reproducible, boton, activar) => {
        await fetch("/listas/agregar", {
            method: "POST",
            headers: {
                "Content-Type": "application/json",
                "X-CSRF-TOKEN": document.querySelector('meta[name="csrf-token"]').content
            },
            body: JSON.stringify({
                tipo: nombres[tipo],
                id_reproducible
            })
        });

        actualizarIcono(boton, tipo, activar);
    };

    document.querySelectorAll(".interacciones_peliculas button").forEach((boton) => {
        boton.addEventListener("click", async () => {
            const partes = boton.id.split("_");
            const tipo = partes[1]; // watchlist, visto, like, dislike
            const id = partes.pop();

            const btnVisto = document.querySelector(`#boton_visto_${id}`);
            const btnLike = document.querySelector(`#boton_like_${id}`);
            const btnDislike = document.querySelector(`#boton_dislike_${id}`);

            const img = boton.querySelector("img");
            const src = img.src.split("/").pop();
            const activo = src === iconos[tipo].activo;
            const nuevoEstado = !activo;

            // Caso: pulsas "like" o "dislike"
            if (tipo === "like" || tipo === "dislike") {
                if (!btnVisto.querySelector("img").src.includes(iconos.visto.activo)) {
                    await toggleLista("visto", id, btnVisto, true);
                }

                const opuesto = tipo === "like" ? "dislike" : "like";
                const btnOpuesto = document.querySelector(`#boton_${opuesto}_${id}`);

                if (btnOpuesto.querySelector("img").src.includes(iconos[opuesto].activo)) {
                    await toggleLista(opuesto, id, btnOpuesto, false);
                }
            }

            // Caso: desactivas "visto" → se eliminan también "like" y "dislike"
            if (tipo === "visto" && !nuevoEstado) {
                if (btnLike.querySelector("img").src.includes(iconos.like.activo)) {
                    await toggleLista("like", id, btnLike, false);
                }
                if (btnDislike.querySelector("img").src.includes(iconos.dislike.activo)) {
                    await toggleLista("dislike", id, btnDislike, false);
                }
            }

            // Acción principal
            await toggleLista(tipo, id, boton, nuevoEstado);
        });
    });
});
