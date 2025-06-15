<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="csrf-token" content="{{ csrf_token() }}">
        <title>JustTrack - Popular</title>
        <link rel="icon" type="image/x-icon" href="{{ asset('storage/favicon/favicon.ico') }}">
        {{-- Importamos el CSS y JS con Vite para ser compilado y optimizado para un mejor rendimiento y optimización --}}
        @vite(['resources/css/header.css', 'resources/css/footer.css', 'resources/css/general.css', 'resources/css/popularView.css', 'resources/js/animacion_texto_ancho.js', 'resources/js/botones_listas.js'])
    </head>
    <body>
        {{-- Traemos la plantilla que tiene el header de toda la aplicación web --}}
        @include('plantillas.header')
        <main>
            <section id="contenedor_peliculas">
                {{-- Usamos una plantilla para representar todas las películas de la base de datos --}}
                @foreach ($peliculas as $pelicula)
                    <div class="pelicula" id="{{ $pelicula->id }}">
                        {{-- Queremos que se abra el detalle de la película al clickear la carátula, no lo demás --}}
                        <a href="/pelicula/{{ $pelicula->id }}">
                            <img src="{{ $pelicula->url_caratula }}" alt="{{ $pelicula->nombre }}">
                        </a>
                        <h1><span>{{ $pelicula->nombre }}</span></h1>
                        {{-- Obtenemos el año de lanzamiento de la película, eliminamos el día y mes --}}
                        <p>{{ \Carbon\Carbon::parse($pelicula->fecha_lanzamiento)->year }}</p>
                        {{-- Sólo mostraremos los botones de interacción de la película si se ha iniciado sesión --}}
                        @if (auth()->check())
                            {{-- Aquí se encuentran los botones de "Watchlist", "Visto", "Me gusta" y "No me gusta" --}}
                            <div class="interacciones_peliculas">
                                {{-- Los botones son dinámicos, si están accionados tienen un aspecto, sino, tienen otro --}}
                                <button title="Marcar como 'Lo quiero ver'" id="boton_watchlist_{{ $pelicula->id }}">
                                    <img src="{{ in_array($pelicula->id, $idsPorLista['Watchlist']) 
                                ? asset('storage/botones_interaccion/contenido_marcado_icon.svg') 
                                : asset('storage/botones_interaccion/contenido_no_marcado_icon.svg') }}" alt="">
                                </button>
                                <button title="Marcar como 'Visto'" id="boton_visto_{{ $pelicula->id }}">
                                    <img src="{{ in_array($pelicula->id, $idsPorLista['Visto']) 
                                ? asset('storage/botones_interaccion/contenido_visto_icon.svg') 
                                : asset('storage/botones_interaccion/contenido_no_visto_icon.svg') }}" alt="">
                                </button>
                                <button title="Marcar como 'Me gusta'" id="boton_like_{{ $pelicula->id }}">
                                    <img src="{{ in_array($pelicula->id, $idsPorLista['Me gusta']) 
                                ? asset('storage/botones_interaccion/contenido_con_like_icon.svg') 
                                : asset('storage/botones_interaccion/contenido_sin_like_icon.svg') }}" alt="">
                                </button>
                                <button title="Marcar como 'No me gusta'" id="boton_dislike_{{ $pelicula->id }}">
                                    <img src="{{ in_array($pelicula->id, $idsPorLista['No me gusta']) 
                                ? asset('storage/botones_interaccion/contenido_con_dislike_icon.svg') 
                                : asset('storage/botones_interaccion/contenido_sin_dislike_icon.svg') }}" alt="">
                                </button>
                            </div>
                        @endif
                    </div>
                @endforeach
            </section>
        </main>
        {{-- Traemos la plantilla que tiene el footer de toda la aplicación web --}}
        @include('plantillas.footer')
    </body>
</html>