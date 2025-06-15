<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>JustTrack</title>
        <link rel="icon" type="image/x-icon" href="{{ asset('storage/favicon/favicon.ico') }}">
        {{-- Importamos el CSS y JS con Vite para ser compilado y optimizado para un mejor rendimiento y optimización --}}
        @vite(['resources/css/header.css', 'resources/css/footer.css', 'resources/css/general.css', 'resources/css/inicioView.css'])
        </style>
    </head>
    <body>
        {{-- Traemos la plantilla que tiene el header de toda la aplicación web --}}
        @include('plantillas.header')
        <main>
            {{-- Limitamos el ancho de la página por motivos de estética y para la responsividad --}}
            <div id="limitador_ancho">
                <section id="seccion_bienvenida">
                    {{-- Mostramos el logo de JustTrack --}}
                    <img src="{{ asset('storage/logo_justtrack_blanco.png') }}" alt="">
                    {{-- Si se ha iniciado sesión damos un saludo personalizado, sino, damos una bienvenida genérica --}}
                    @if (auth()->check())
                        <h1 id="bienvenida_loggeado">¡Bienvenid@, {{ auth()->user()->nombre }}!</h1>
                    @else
                        <h1>¡Bienvenid@ a JustTrack!</h1>
                    @endif
                    <p>Marca lo que te gusta, lo que no y lo que quieres ver o has visto.</p>
                    <button onclick="window.location.href='/popular'">Comenzar</button>
                </section>
                <section id="seccion_tutorial">
                    <h1>¿Cómo funciona?</h1>
                    <div>
                        <p>1️⃣ Te registras con tu correo electrónico.</p>
                        <p>2️⃣ Inicias sesión con tu correo y contraseña.</p>
                        <p>3️⃣ Buscas una película que te llame la atención.</p>
                        <p>4️⃣ Marcas el contenido para visualizarlo luego.</p>
                        <p>5️⃣ Cuando tengas tiempo libre, vienes a JustTrack y abres tu lista.</p>
                        <p>6️⃣ ¡A disfrutar el contenido!</p>
                        <p>7️⃣ Marcas el contenido como visualizado para cuando no sepas si has visto esta película o no.</p>
                        <p>8️⃣ De vuelta al ciclo♻️.</p>
                    </div>
                </section>
                <section id="apartado_mensaje_marketing">
                    <p>No es solo lo que ves, es lo que te hace sentir. Lleva tu historial al siguiente nivel. Con JustTrack, tu tiempo frente a la pantalla tiene memoria.</p>
                </section>
                <section id="seccion_explicacion">
                    <h1>Apartados</h1>
                    <div id="apartado_enlaces">
                        <div id="apartado_inicio">
                            <img src="{{ asset('storage/inicio/inicio.png') }}" alt="">
                            <div>
                                <h1>Apartado "Inicio"</h1>
                                <p>Aquí tienes una presentación de la plataforma.</p>
                            </div>
                        </div>
                        <div id="apartado_nuevo">
                            <img src="{{ asset('storage/inicio/reloj.png') }}" alt="">
                            <div>
                                <h1>Apartado "Nuevo"</h1>
                                <p>Verás el contenido en orden de su fecha de lanzamiento, primero verás el contenido más reciente.</p>
                            </div>
                        </div>
                        <div id="apartado_popular">
                            <img src="{{ asset('storage/inicio/fuego.png') }}" alt="">
                            <div>
                                <h1>Apartado "Popular"</h1>
                                <p>Verás primero el contenido con más valoraciones positivas.</p>
                            </div>
                        </div>
                        <div id="apartado_listas">
                            <img src="{{ asset('storage/inicio/lista.webp') }}" alt="">
                            <div>
                                <h1>Apartado "Listas"</h1>
                                <p>Sólo puedes acceder a este apartado si inicias sesión. Verás las listas de contenido que hayas marcado.</p>
                            </div>
                        </div>
                    </div>
                    <div id="apartado_busqueda">
                        <img src="{{ asset('storage/inicio/lupa.webp') }}" alt="">
                        <div>
                            <h1>Barra de búsqueda</h1>
                            <p>La puedes utilizar para buscar películas según su nombre, ya sea el nombre que recibe en España o su título original.</p>
                        </div>
                    </div>
                </section>
                <section id="seccion_vision_futuro">
                    <img src="{{ asset('storage/inicio/cohete.png') }}" alt="">
                    <h1>Nuestros planes a futuro</h1>
                    <p>Por ahora, en esta plataforma puedes gestionar películas, pero ¿qué viene después?</p>
                    <div id="apartado_vision_futuro">
                        <div>
                            <img src="{{ asset('storage/inicio/camara.png') }}" alt="">
                            <h1>Gestión de Series</h1>
                            <p>Además de películas, queremos ofrecer la posibilidad de gestionar series.</p>
                        </div>
                        <div>
                            <img src="{{ asset('storage/inicio/libro.png') }}" alt="">
                            <h1>Gestión de Libros</h1>
                            <p>Queremos ofrecer la posibilidad de gestionar vuestros libros.</p>
                        </div>
                        <div>
                            <img src="{{ asset('storage/inicio/mando.webp') }}" alt="">
                            <h1>Gestión de Videojuegos</h1>
                            <p>Queremos que los gamers tengan aquí su lugar especial también.</p>
                        </div>
                        <div>
                            <img src="{{ asset('storage/inicio/musica.png') }}" alt="">
                            <h1>Gestión de Música</h1>
                            <p>¿Qué tal parecería la idea de una playlist que funciona en todas las plataformas?</p>
                        </div>
                    </div>
                </section>
                <section id="seccion_dato_curioso">
                    <img src="{{ asset('storage/inicio/bombilla.webp') }}" alt="">
                    <div>
                        <h1>Dato curioso</h1>
                        <p>Nuestra página web tiene colores principalmente oscuros haciendo un pequeño guiño a las salas de cine que son oscuras, de forma que con colores oscuros es más cómodo trabajar para nuestros ojos.</p>
                    </div>
                </section>
                {{-- En este apartado el usuario puede transmitir alguna sugerencia mediante correo electrónico --}}
                <section id="apartado_feedback">
                    <img src="{{ asset('storage/inicio/mail.png') }}" alt="">
                    <h1>Feedback</h1>
                    <p>¡Porque tu opinión importa! Puedes enviarnos alguna sugerencia que se te ocurra.</p>
                    <form method="POST" action="{{ route('feedback.enviar') }}">
                        @csrf
                        {{-- Si el usuario ya ha enviado el correo, mostraremos una página que muestra que se ha enviado correctamente y mostraremos los datos que ha enviado --}}
                        @if(session('success'))
                            <div class="correo_enviado">
                                <label for="input_correo_usuario">Tu correo:</label>
                                {{-- Mostramos el email con el que se ha puesto en contacto con nosotros --}}
                                <input disabled type="email" name="correo" id="input_correo_usuario" placeholder="Escribe tu correo" value="{{ session('correo') }}">
                                <img src="{{ asset('storage/inicio/correo_azul_logo.svg') }}" alt="">
                            </div>
                            <div class="correo_enviado">
                                <label for="input_asunto_correo">Asunto:</label>
                                {{-- Mostramos el asunto que ha puesto al correo que nos ha enviado --}}
                                <input disabled type="text" name="asunto_correo" id="input_asunto_correo" placeholder="Dinos brevemente de qué trata tu sugerencia." value="{{ session('asunto_correo') }}">
                                <img src="{{ asset('storage/inicio/asunto_azul_logo.svg') }}" alt="">
                            </div>
                            <div id="contenedor_campo_cuerpo" class="correo_enviado">
                                <label for="input_cuerpo_correo">Cuerpo:</label>
                                {{-- Mostramos el cuerpo del correo que nos ha enviado --}}
                                <textarea disabled name="cuerpo_correo" id="input_cuerpo_correo" placeholder="Detállanos de qué se trata la sugerencia que nos brindas.">{{ session('cuerpo_correo') }}</textarea>
                            </div>
                            {{-- Mostraremos un mensaje indicando que se ha enviado el correo --}}
                            <button id="boton_enviado" disabled>
                                {{ session('success') }}
                                <img src="{{ asset('storage/inicio/enviar_azul_logo.svg') }}" alt="">
                            </button>
                        @else
                            <div>
                                {{-- Este es el campo para introducir el email de contacto --}}
                                <label for="input_correo_usuario">Tu correo:</label>
                                <input type="email" name="correo" id="input_correo_usuario" placeholder="Escribe tu correo" required>
                                <img src="{{ asset('storage/inicio/correo_logo.svg') }}" alt="">
                            </div>
                            <div>
                                {{-- Este es el campo para introducir el asunto del correo --}}
                                <label for="input_asunto_correo">Asunto:</label>
                                <input type="text" name="asunto_correo" id="input_asunto_correo" placeholder="Dinos brevemente de qué trata tu sugerencia." required>
                                <img src="{{ asset('storage/inicio/asunto_logo.svg') }}" alt="">
                            </div>
                            <div id="contenedor_campo_cuerpo">
                                {{-- Este es el campo para introducir el cuerpo del correo --}}
                                <label for="input_cuerpo_correo">Cuerpo:</label>
                                <textarea name="cuerpo_correo" id="input_cuerpo_correo" placeholder="Detállanos de qué se trata la sugerencia que nos brindas." required></textarea>
                            </div>
                            {{-- Este es el botón de envío del formulario para enviar el correo --}}
                            <button type="submit">
                                Enviar
                                <img src="{{ asset('storage/inicio/enviar_logo.svg') }}" alt="">
                            </button>
                        @endif
                    </form>
                </section>
            </div>
        </main>
        {{-- Traemos la plantilla que tiene el footer de toda la aplicación web --}}
        @include('plantillas.footer')
    </body>
</html>