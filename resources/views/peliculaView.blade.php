<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JustTrack - {{ $pelicula->nombre }}</title>
    <link rel="icon" type="image/x-icon" href="{{ asset('storage/favicon/favicon.ico') }}">
    @vite(['resources/css/header.css', 'resources/css/general.css', 'resources/css/peliculaView.css'])
    <style>
        main {
            background-image: url("{{ $pelicula->url_banner }}");
        }
    </style>
</head>

<body>
    <!--Traemos la plantilla que tiene el header de toda la web-->
    @include('plantillas.header')
    <main>
        <section id="contenedor_banner">
            <img src="{{ $pelicula->url_banner }}" id="banner_pelicula" alt="">
        </section>
        <section id="contenedor_info">
            <div id="limitador_ancho">
                <div id="columna_izquierda">
                    <img src="{{ $pelicula->url_caratula }}" id="caratula_pelicula" alt="">
                    <div id="primera_fila_izquierda">
                        <div class="interacciones_peliculas">
                            <img src="{{ asset('storage/botones_interaccion/contenido_no_marcado_icon.svg') }}" alt="">
                            <img src="{{ asset('storage/botones_interaccion/contenido_no_visto_icon.svg') }}" alt="">
                            <img src="{{ asset('storage/botones_interaccion/contenido_sin_like_icon.svg') }}" alt="">
                            <img src="{{ asset('storage/botones_interaccion/contenido_sin_dislike_icon.svg') }}" alt="">
                        </div>
                        <p id="restriccion_edad" title="Restricción de edad">{{ $pelicula->clasificacion_edad ?? '???' }}</p>
                    </div>
                    <div id="contenedor_info_rapida">
                        <p id="duracion_pelicula"><b>Duración:</b> {{ $pelicula->duracion_mins ?? '???' }} mins</p>
                        <p id="nombre_director"><b>Director:</b> {{ optional($pelicula->directores->first())->nombre ?? '??' }} </p>
                        @php
                        $calificacion = $pelicula->mediaCalificaciones();
                        @endphp
                        <p id="calificacion_promedio"><b>Calificación:</b> {{ $calificacion !== null ? number_format($calificacion, 2) . ' / 10' : 'Sin calificar' }}</p>
                        <p id="pais_produccion"><b>País de producción:</b> {{ $pelicula->pais_produccion ?? '???' }} </p>
                        <p id="generos_pelicula"><b>Géneros:</b> {{ $pelicula->generos->pluck('nombre')->join(', ') }} </p>
                    </div>
                </div>
                <div id="columna_derecha">
                    <div id="contenedor_titulo">
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
                            <!--<div class="plataforma" id="netflix">
                                <img src="icons/platforms/netflix_logo.png" class="logo_plataforma" alt="">
                                <p>Netflix</p>
                            </div>-->
                            @foreach($pelicula->plataformas as $plataforma)
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
                            <!--<iframe width="560" height="315" src="https://www.youtube.com/embed/Il7cJMhTyJ4?si=G1IvDVYEiSfn51Ib" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>-->
                            @foreach ($pelicula->trailers as $trailer)
                            @php
                            // Extraer el ID del video (funciona tanto con enlaces largos como cortos)
                            preg_match('/(?:youtube\.com\/watch\?v=|youtu\.be\/)([^&\s]+)/', $trailer->url_trailer, $matches);
                            $videoId = $matches[1] ?? null;
                            @endphp

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
                            <!--<div class="actor">
                                <img src="https://images.mubicdn.net/images/cast_member/908306/cache-969809-1716130794/image-w856.jpg?size=300x" alt="">
                                <p>Ella Rubin</p>
                            </div>-->
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
</body>

</html>