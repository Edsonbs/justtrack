<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>JustTrack - Listas</title>
        <link rel="icon" type="image/x-icon" href="{{ asset('storage/favicon/favicon.ico') }}">
        {{-- Importamos el CSS y JS con Vite para ser compilado y optimizado para un mejor rendimiento y optimización --}}
        @vite(['resources/css/header.css', 'resources/css/footer.css', 'resources/css/general.css', 'resources/css/listasView.css'])
    </head>
    <body>
        {{-- Traemos la plantilla que tiene el header de toda la aplicación web --}}
        @include('plantillas.header')
        <main>
            <h1>Mis Listas</h1>
            <section id="contenedor_listas">
                {{-- Mostramos todas las listas del usuario que tiene la sesión iniciada --}}
                @foreach ($listas as $lista)
                    <a href="{{ route('listas.mostrar', ['nombre' => $lista->nombre]) }}" class="lista">
                        {{-- Nombre de la lista --}}
                        <h1>{{ $lista->nombre }}</h1>
                        {{-- Cantidad de películas que tiene la lista --}}
                        <p>{{ $lista->reproducibles_count }} títulos</p>
                    </a>
                @endforeach
            </section>
        </main>
        {{-- Traemos la plantilla que tiene el footer de toda la aplicación web --}}
        @include('plantillas.footer')
    </body>
</html>