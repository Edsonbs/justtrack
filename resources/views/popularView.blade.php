<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JustTrack - Popular</title>
    <link rel="icon" type="image/x-icon" href="{{ asset('storage/favicon/favicon.ico') }}">
    @vite(['resources/css/header.css', 'resources/css/general.css', 'resources/css/popularView.css', 'resources/js/animacion_texto_ancho.js'])
</head>

<body>
    <!--Traemos la plantilla que tiene el header de toda la web-->
    @include('plantillas.header')
    <main>
        <section id="contenedor_peliculas">
            <!--<a class="pelicula" id="5340987" href="">
                <img src="https://m.media-amazon.com/images/M/MV5BZWU4NDY0ODktOGI3OC00NWE1LWIwYmQtNmJiZWU3NmZlMDhkXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg" alt="">
                <h1><span>Until Dawn: Noche De Terror</span></h1>
                <p>2025</p>
                <div class="interacciones_peliculas">
                    <img src="{{ asset('storage/botones_interaccion/contenido_no_marcado_icon.svg') }}" alt="">
                    <img src="{{ asset('storage/botones_interaccion/contenido_no_visto_icon.svg') }}" alt="">
                    <img src="{{ asset('storage/botones_interaccion/contenido_sin_like_icon.svg') }}" alt="">
                    <img src="{{ asset('storage/botones_interaccion/contenido_sin_dislike_icon.svg') }}" alt="">
                </div>
            </a>-->

            <!-- Usamos una plantilla para que muestre todas las películas de la base de datos-->
            @foreach ($peliculas as $pelicula)
            <a class="pelicula" id="{{ $pelicula->id }}" href="/pelicula/{{ $pelicula->id }}">
                <img src="{{ $pelicula->url_caratula }}" alt="{{ $pelicula->nombre }}">
                <h1><span>{{ $pelicula->nombre }}</span></h1>
                <p>{{ \Carbon\Carbon::parse($pelicula->fecha_lanzamiento)->year }}</p>
                <div class="interacciones_peliculas">
                    <button title="boton_watchlist" id="boton_watchlist_{{ $pelicula->id }}">
                        <img src="{{ asset('storage/botones_interaccion/contenido_no_marcado_icon.svg') }}" alt="">
                    </button>
                    <button title="boton_watchlist" id="boton_visto_{{ $pelicula->id }}">
                        <img src="{{ asset('storage/botones_interaccion/contenido_no_visto_icon.svg') }}" alt="">
                    </button>
                    <button title="boton_watchlist" id="boton_like_{{ $pelicula->id }}">
                        <img src="{{ asset('storage/botones_interaccion/contenido_sin_like_icon.svg') }}" alt="">
                    </button>
                    <button title="boton_watchlist" id="boton_dislike_{{ $pelicula->id }}">
                        <img src="{{ asset('storage/botones_interaccion/contenido_sin_dislike_icon.svg') }}" alt="">
                    </button>
                </div>
            </a>
            @endforeach
        </section>
    </main>
    <footer>

    </footer>
</body>

</html>