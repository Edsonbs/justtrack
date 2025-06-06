<header>
    <nav>
        <div id="categorias">
            <div id="division1">
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
                @if (auth()->check())
                <a href="/listas">
                    <img src="{{ asset('storage/header/header_lista_icon.svg') }}" alt="">
                    Listas
                </a>
                @endif
            </div>
        </div>
        <div id="segunda_fila">
            <div id="contenedor_buscador">
                <!--IMAGEN LUPA-->
                <svg id="icono_lupa" xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px" fill="#FFFFFF">
                    <path
                        d="M784-120 532-372q-30 24-69 38t-83 14q-109 0-184.5-75.5T120-580q0-109 75.5-184.5T380-840q109 0 184.5 75.5T640-580q0 44-14 83t-38 69l252 252-56 56ZM380-400q75 0 127.5-52.5T560-580q0-75-52.5-127.5T380-760q-75 0-127.5 52.5T200-580q0 75 52.5 127.5T380-400Z" />
                </svg>

                <input type="search" name="buscador_principal" id="buscador_principal" placeholder="Escribe para buscar...">
            </div>
            <select name="role_selector" id="role_selector" title="Selector de rol">
                <option value="comun">Común</option>
                <option value="editor">Editor</option>
                <option value="admin">Admin</option>
            </select>
            @if (auth()->check())
            {{-- Usuario autenticado (sesión iniciada) --}}
            <!--Para hacer que el botón de cerrar sesión funcione con POST-->
            <a href="#" title="Cerrar sesión" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                <img src="{{ asset('storage/header/header_logout_icon.svg') }}" alt="">
            </a>

            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                @csrf
            </form>
            @else
            {{-- Usuario no autenticado --}}
            <a href="/login" title="Iniciar sesión">
                <img src="{{ asset('storage/header/header_login_icon.svg') }}" alt="">
            </a>
            @endif
        </div>
    </nav>
</header>
<div id="separador_header_contenido"></div>