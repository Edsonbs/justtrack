<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>JustTrack - Popular</title>
    <link rel="icon" type="image/x-icon" href="{{ asset('storage/favicon/favicon.ico') }}">
    @vite(['resources/css/header.css', 'resources/css/footer.css', 'resources/css/general.css', 'resources/css/popularView.css', 'resources/js/animacion_texto_ancho.js', 'resources/js/botones_listas.js'])
</head>

<body>
    <!--Traemos la plantilla que tiene el header de toda la web-->
    @include('plantillas.header')
    <main>
        <section id="contenedor_peliculas">
            <!-- Usamos una plantilla para que muestre todas las películas de la base de datos-->
            @foreach ($peliculas as $pelicula)
            <div class="pelicula" id="{{ $pelicula->id }}">
                <a href="/pelicula/{{ $pelicula->id }}">
                    <img src="{{ $pelicula->url_caratula }}" alt="{{ $pelicula->nombre }}">
                </a>
                <h1><span>{{ $pelicula->nombre }}</span></h1>
                <p>{{ \Carbon\Carbon::parse($pelicula->fecha_lanzamiento)->year }}</p>
                @if (auth()->check())
                <div class="interacciones_peliculas">
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
    @include('plantillas.footer')
</body>

</html>