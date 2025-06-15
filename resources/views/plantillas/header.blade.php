<header>
    <nav>
        <div id="categorias">
            <div id="division1">
                {{-- Enlaces a las distintas páginas --}}
                <a href="/">
                    <img src="{{ asset('storage/header/header_inicio_icon.svg') }}" alt="">
                    Inicio
                </a>
                <a href="/nuevo">
                    <img src="{{ asset('storage/header/header_nuevo_icon.svg') }}" alt="">
                    Nuevo
                </a>
            </div>
            <div id="division2">
                <a href="/popular">
                    <img src="{{ asset('storage/header/header_popular_icon.svg') }}" alt="">
                    Popular
                </a>
                {{-- No mostraré en la cabecera la pestaña de las listas del usuario si no hay una sesión iniciada --}}
                @if (auth()->check())
                    <a href="/listas">
                        <img src="{{ asset('storage/header/header_lista_icon.svg') }}" alt="">
                        Listas
                    </a>
                @endif
            </div>
        </div>
        <div id="segunda_fila">
            <form action="{{ route('busqueda') }}" method="GET" id="form_buscador">
                <div id="contenedor_buscador">
                    {{-- Imagen de lupa, al clickearla se realizará la búsqueda aunque podemos pulsar 'enter' --}}
                    <svg id="icono_lupa" xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px" fill="#FFFFFF"
                        onclick="document.getElementById('form_buscador').submit();">
                        <path
                            d="M784-120 532-372q-30 24-69 38t-83 14q-109 0-184.5-75.5T120-580q0-109 75.5-184.5T380-840q109 0 184.5 75.5T640-580q0 44-14 83t-38 69l252 252-56 56ZM380-400q75 0 127.5-52.5T560-580q0-75-52.5-127.5T380-760q-75 0-127.5 52.5T200-580q0 75 52.5 127.5T380-400Z" />
                    </svg>

                    <input type="search" name="buscador" id="buscador_principal" placeholder="Escribe para buscar..." value="{{ request('buscador') }}">
                </div>
            </form>
            {{-- Si hay una sesión iniciada mostraré el selector de rol y el botón de cerrar sesión en vez de iniciarla --}}
            @if (auth()->check())
                <select name="role_selector" id="role_selector" title="Selector de rol">
                    <option value="comun">Común</option>
                    <option value="editor">Editor</option>
                    <option value="admin">Admin</option>
                </select>

                {{-- Para hacer que el botón de cerrar sesión funcione con POST --}}
                <a href="#" title="Cerrar sesión" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                    <img src="{{ asset('storage/header/header_logout_icon.svg') }}" alt="">
                </a>

                {{-- Este es el formulario que usará el botón de cerrar sesión para realizar la petición de cerrar sesión mediante POST en vez de GET (para mayor seguridad) --}}
                <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                    @csrf
                </form>
            @else
                {{-- Si el usuario ha iniciado sesión, mostraré el botón para iniciarla --}}
                <a href="/login" title="Iniciar sesión">
                    <img src="{{ asset('storage/header/header_login_icon.svg') }}" alt="">
                </a>
            @endif
        </div>
    </nav>
</header>
{{-- Usamos este separador para que el contenido no se solape con la cabecera, ya que la cabecera tiene 'position: fixed;' --}}
<div id="separador_header_contenido"></div>