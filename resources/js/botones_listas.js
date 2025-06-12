document.addEventListener("DOMContentLoaded", () => {
    document.querySelectorAll(".interacciones_peliculas button").forEach((boton) => {
        boton.addEventListener("click", () => {
            const id = boton.id.split("_").pop(); // ID de la película
            const tipo = boton.id.split("_")[1]; // tipo: watchlist, visto, like, dislike

            const map = {
                watchlist: "Watchlist",
                visto: "Visto",
                like: "Me gusta",
                dislike: "No me gusta",
            };

            fetch("/listas/agregar", {
                method: "POST",
                headers: {
                    "Content-Type": "application/json",
                    "X-CSRF-TOKEN": document.querySelector('meta[name="csrf-token"]').content
                },
                body: JSON.stringify({
                    tipo: map[tipo],
                    id_reproducible: id
                })
            })
            .then(res => res.json())
            .then(data => {
                if (data.success) {
                    const img = boton.querySelector("img");

                    const icons = {
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

                    const currentSrc = img.src.split("/").pop();
                    const { activo, inactivo } = icons[tipo];
                    img.src = img.src.replace(currentSrc, currentSrc === activo ? inactivo : activo);
                    console.log(`Añadido correctamente a ${map[tipo]}`);
                }
            });
        });
    });
});
