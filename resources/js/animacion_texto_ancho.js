window.addEventListener('DOMContentLoaded', () => {
  const peliculas = document.querySelectorAll('#contenedor_peliculas > .pelicula > h1');
  
  peliculas.forEach(h1 => {
    const span = h1.querySelector('span');
    if (!span) return;

    if (span.scrollWidth > h1.clientWidth) {
      const distancia = span.scrollWidth - h1.clientWidth;
      span.style.setProperty('--distancia-movimiento', `-${distancia}px`);
      h1.classList.add('animacion_texto');
    } else {
      h1.classList.remove('animacion_texto');
      span.style.removeProperty('--distancia-movimiento');
    }
  });
});
