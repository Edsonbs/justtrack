<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Listas;
use App\Models\Reproducibles;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class BusquedaController extends Controller
{
    public function showBusqueda(Request $request) {
        $titulo = $request->input('buscador');

        if ($titulo) {
            // Búsqueda insensible a mayúsculas y minúsculas en nombre o nombre_original
            $peliculas = Reproducibles::where('nombre', 'LIKE', "%{$titulo}%")
                ->orWhere('nombre_original', 'LIKE', "%{$titulo}%")
                ->get();
        } else {
            // Si no hay búsqueda, muestra todas (o ninguna, según prefieras)
            $peliculas = Reproducibles::all();
        }

        if (Auth::check()) {
            // Obtenemos el usuario con el que la sesión está iniciada.
            $usuario = Auth::user();
    
            // Obtenemos IDs de las películas por cada lista del usuario
            $listas = Listas::where('id_propietario', $usuario->id)
                ->with('reproducibles:id') // Solo IDs
                ->get()
                ->keyBy('nombre'); // Para acceder por nombre: 'Visto', 'Me gusta', etc.
    
            $idsPorLista = [
                'Watchlist' => $listas['Watchlist']->reproducibles->pluck('id')->toArray(),
                'Visto' => $listas['Visto']->reproducibles->pluck('id')->toArray(),
                'Me gusta' => $listas['Me gusta']->reproducibles->pluck('id')->toArray(),
                'No me gusta' => $listas['No me gusta']->reproducibles->pluck('id')->toArray(),
            ];

            return view('busquedaView', compact('peliculas', 'idsPorLista'));
        } else {
            return view('busquedaView', compact('peliculas'));
        }
    }
}
