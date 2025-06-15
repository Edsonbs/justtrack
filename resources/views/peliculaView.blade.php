<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="csrf-token" content="{{ csrf_token() }}">
        <title>JustTrack - {{ $pelicula->nombre }}</title>
        <link rel="icon" type="image/x-icon" href="{{ asset('storage/favicon/favicon.ico') }}">
        {{-- Importamos el CSS y JS con Vite para ser compilado y optimizado para un mejor rendimiento y optimización --}}
        @vite(['resources/css/header.css', 'resources/css/footer.css', 'resources/css/general.css', 'resources/css/peliculaView.css', 'resources/js/botones_listas.js'])
        <style>
            /* Ponemos el banner detrás de la información detallada de la película, simplemente es estética */
            main {
                background-image: url("{{ $pelicula->url_banner }}");
            }

            /*
            Si el usuario no está identificado no verá los botones de interacción "Visto", "Me gusta", "No me gusta", "Watchlist",
            así que hacemos que la clasificación de edad ocupe el ancho completo del panel izquierdo cuando no hay sesión iniciada.
            */
            @if (auth()->guest())
                main>#contenedor_info>#limitador_ancho>#columna_izquierda>#primera_fila_izquierda>#restriccion_edad {
                    width: 100%;
                }
            @endif
        </style>
    </head>
    <body>
        {{-- Traemos la plantilla que tiene el header de toda la aplicación web --}}
        @include('plantillas.header')
        <main>
            <section id="contenedor_banner">
                {{-- Mostramos el banner de la película --}}
                <img src="{{ $pelicula->url_banner }}" id="banner_pelicula" alt="">
            </section>
            <section id="contenedor_info">
                {{-- Limitamos el ancho de la página por motivos estéticos --}}
                <div id="limitador_ancho">
                    <div id="columna_izquierda">
                        {{-- Mostramos la carátula de la película --}}
                        <img src="{{ $pelicula->url_caratula }}" id="caratula_pelicula" alt="">
                        <div id="primera_fila_izquierda">
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
                            <p id="restriccion_edad" title="Restricción de edad">{{ $pelicula->clasificacion_edad ?? '???' }}</p>
                        </div>
                        <div id="contenedor_info_rapida">
                            <p id="duracion_pelicula"><b>Duración:</b> {{ $pelicula->duracion_mins ?? '???' }} mins</p>
                            <p id="nombre_director"><b>Director:</b> {{ optional($pelicula->directores->first())->nombre ?? '??' }} </p>
                            @php
                                // Obtenemos la media de calificaciones proporcionadas por los usuarios a esta película
                                $calificacion = $pelicula->mediaCalificaciones();
                            @endphp
                            {{-- Mostramos la media de calificación de la película sobre una nota de 10 con un máximo de 2 decimales --}}
                            <p id="calificacion_promedio"><b>Calificación:</b> {{ $calificacion !== null ? number_format($calificacion, 2) . ' / 10' : 'Sin calificar' }}</p>
                            <p id="pais_produccion"><b>País de producción:</b> {{ $pelicula->pais_produccion ?? '???' }} </p>
                            {{-- Representamos los géneros de la película, como pueden ser acción, suspense, horror, aventura... --}}
                            <p id="generos_pelicula"><b>Géneros:</b> {{ $pelicula->generos->pluck('nombre')->join(', ') }} </p>
                        </div>
                    </div>
                    <div id="columna_derecha">
                        <div id="contenedor_titulo">
                            {{-- Mostramos el nombre de la película junto al año de lanzamiento de la película, eliminamos el día y mes --}}
                            <h1 id="titulo_pelicula"> {{ $pelicula->nombre }} <span id="ano_palicula">({{ \Carbon\Carbon::parse($pelicula->fecha_lanzamiento)->year }})</span></h1>
                            <p id="titulo_original_pelicula">{{ $pelicula->nombre_original ?? '???' }}</p>
                        </div>
                        <div id="contenedor_sinopsis">
                            <h2>Sinopsis</h2>
                            <p>{{ $pelicula->sinopsis }}</p>
                        </div>
                        <div id="contenedor_plataformas_pelicula">
                            <h2>Dónde ver</h2>
                            <div id="plataformas">
                                {{-- Representamos el logo y el nombre de cada plataforma de streaming o cine --}}
                                @foreach($pelicula->plataformas as $plataforma)
                                    {{-- Pasamos el nombre de la plataforma a formato de cadena sin espacios, en minúsculas y con guiones --}}
                                    <div class="plataforma" id="{{ Str::slug($plataforma->nombre) }}">
                                        <img src="http://justtrack.xyz/{{ $plataforma->ruta_logo }}" class="logo_plataforma" alt="">
                                        <p>{{ $plataforma->nombre }}</p>
                                    </div>
                                @endforeach
                            </div>
                        </div>
                        <div id="contenedor_trailers">
                            <h2>Tráilers película</h2>
                            <div id="trailers">
                                {{-- Representamos los tráilers asociados a esta película --}}
                                @foreach ($pelicula->trailers as $trailer)
                                    @php
                                        // Extraemos con regex el ID del video de YouTube de la URL del tráiler de la película
                                        preg_match('/(?:youtube\.com\/watch\?v=|youtu\.be\/)([^&\s]+)/', $trailer->url_trailer, $matches);
                                        $videoId = $matches[1] ?? null;
                                    @endphp

                                    {{-- Usamos el ID del video para representar el tráiler en un iframe de YouTube --}}
                                    @if ($videoId)
                                        <iframe
                                            src="https://www.youtube.com/embed/{{ $videoId }}"
                                            title="YouTube video player"
                                            frameborder="0"
                                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                                            referrerpolicy="strict-origin-when-cross-origin"
                                            allowfullscreen>
                                        </iframe>
                                    @endif
                                @endforeach
                            </div>
                        </div>
                        <div id="contenedor_reparto">
                            <h2>Reparto</h2>
                            <div id="actores">
                                {{-- Representamos el nombre de cada actor/actríz y su retrato --}}
                                @foreach ($pelicula->actores as $actor)
                                    <div class="actor">
                                        <img src="{{ $actor->url_foto }}" alt="">
                                        <p>{{ $actor->nombre }}</p>
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </main>
        {{-- Traemos la plantilla que tiene el footer de toda la aplicación web --}}
        @include('plantillas.footer')
    </body>
</html>