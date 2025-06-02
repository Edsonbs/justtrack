<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JustTrack - Listas</title>
    <link rel="icon" type="image/x-icon" href="{{ asset('storage/favicon/favicon.ico') }}">
    @vite(['resources/css/header.css', 'resources/css/general.css', 'resources/css/listasView.css'])
</head>

<body>
    <!--Traemos la plantilla que tiene el header de toda la web-->
    @include('plantillas.header')
    <main>
        <h1>Mis Listas</h1>
        <section id="contenedor_listas">
            <!--<a href="" class="lista">
                <h1>Me gusta</h1>
                <p>9999 títulos</p>
            </a>-->
            @foreach ($listas as $lista)
            <a href="{{ route('listas.mostrar', ['nombre' => $lista->nombre]) }}" class="lista">
                <h1>{{ $lista->nombre }}</h1>
                <p>{{ $lista->reproducibles_count }} títulos</p>
            </a>
            @endforeach
        </section>
    </main>
    <footer>

    </footer>
</body>

</html>