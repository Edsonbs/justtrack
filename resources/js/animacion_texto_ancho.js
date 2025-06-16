// Esperamos a que el DOM esté completamente cargado antes de ejecutar el código
window.addEventListener('DOMContentLoaded', () => {

	// Seleccionamos todos los <h1> dentro de .pelicula que están en #contenedor_peliculas
	const peliculas = document.querySelectorAll('#contenedor_peliculas > .pelicula > h1');

	// Recorremos cada <h1> de película
	peliculas.forEach(h1 => {
		const span = h1.querySelector('span'); // Obtenemos el <span> dentro del <h1>
		if (!span) return; // Si no hay <span>, salimos de esta iteración

		// Comprobamos si el texto dentro del <span> es más ancho que el <h1> que lo contiene
		if (span.scrollWidth > h1.clientWidth) {
			// Calculamos cuánto se desborda el texto
			const distancia = span.scrollWidth - h1.clientWidth;

			// Establecemos una variable CSS personalizada para mover el texto en una animación
			span.style.setProperty('--distancia-movimiento', `-${distancia}px`);

			// Añadimos una clase para activar la animación de movimiento del texto
			h1.classList.add('animacion_texto');
		} else {
			// Si el texto no se desborda, quitamos la animación (por si antes se había activado)
			h1.classList.remove('animacion_texto');
			span.style.removeProperty('--distancia-movimiento'); // Eliminamos la propiedad CSS
		}
	});
});
