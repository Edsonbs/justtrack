<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>JustTrack - Registro</title>
        <link rel="icon" type="image/x-icon" href="{{ asset('storage/favicon/favicon.ico') }}">
        @vite(['resources/css/header.css', 'resources/css/footer.css', 'resources/css/general.css', 'resources/css/loginRegistro_usuarioView.css'])
    </head>
    <body>
        <!--Traemos la plantilla que tiene el header de toda la web-->
        @include('plantillas.header')
        <main>
            <form method="POST" action="{{ route('registro') }}" id="formulario_login">
                @csrf
                <h1>Registro de usuario</h1>
                <p>¿Ya tienes una cuenta? <a href="/login">Iniciar sesión</a>.</p>
                <div id="contenedor_campo_nombre">
                    <label for="nombre_usuario">Nombre:</label>
                    <input type="text" name="nombre" id="campo_nombre_usuario" placeholder="Escribe tu nombre..." required>
                    <img src="{{ asset('storage/login_register/persona_logo.svg') }}" alt="">
                </div>
                <div id="contenedor_campo_correo">
                    <label for="correo_usuario">Correo:</label>
                    <input type="email" name="correo" id="campo_correo_usuario" placeholder="Escribe tu email..." required>
                    <img src="{{ asset('storage/login_register/correo_logo.svg') }}" alt="">
                </div>
                <div id="contenedor_campo_clave">
                    <label for="clave_usuario">Contraseña:</label>
                    <input type="password" name="clave" id="campo_clave_usuario" placeholder="Escribe tu contraseña..." required>
                    <img src="{{ asset('storage/login_register/llave_logo.svg') }}" alt="">
                </div>
                <button type="submit">
                    Registrarse
                    <img src="{{ asset('storage/login_register/enviar_logo.svg') }}" alt="">
                </button>
            </form>
        </main>
        @include('plantillas.footer')
    </body>
</html>