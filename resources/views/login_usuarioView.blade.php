<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>JustTrack - Iniciar sesión</title>
        <link rel="icon" type="image/x-icon" href="{{ asset('storage/favicon/favicon.ico') }}">
        {{-- Importamos el CSS y JS con Vite para ser compilado y optimizado para un mejor rendimiento y optimización --}}
        @vite(['resources/css/header.css', 'resources/css/footer.css', 'resources/css/general.css', 'resources/css/loginRegistro_usuarioView.css'])
    </head>
    <body>
        {{-- Traemos la plantilla que tiene el header de toda la aplicación web --}}
        @include('plantillas.header')
        <main>
            <form method="POST" action="{{ route('login') }}" id="formulario_login">
                @csrf
                <h1>Inicio de sesión</h1>
                <p>¿No tienes una cuenta? <a href="/registro">Registrarse</a>.</p>
                <div id="contenedor_campo_correo">
                    {{-- Campo para introducir el email del usuario --}}
                    <label for="correo_usuario">Correo:</label>
                    <input type="email" name="correo" id="campo_correo_usuario" placeholder="Escribe tu email..." required>
                    <img src="{{ asset('storage/login_register/correo_logo.svg') }}" alt="">
                </div>
                <div id="contenedor_campo_clave">
                    {{-- Campo para introducir la contraseña del usuario --}}
                    <label for="clave_usuario">Contraseña:</label>
                    <input type="password" name="clave" id="campo_clave_usuario" placeholder="Escribe tu contraseña..." required>
                    <img src="{{ asset('storage/login_register/llave_logo.svg') }}" alt="">
                </div>
                {{-- Botón para iniciar sesión --}}
                <button type="submit">
                    Iniciar sesión
                    <img src="{{ asset('storage/login_register/enviar_logo.svg') }}" alt="">
                </button>
            </form>
        </main>
        {{-- Traemos la plantilla que tiene el footer de toda la aplicación web --}}
        @include('plantillas.footer')
    </body>
</html>