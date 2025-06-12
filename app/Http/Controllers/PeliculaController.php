<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Listas;
use App\Models\Reproducibles;
use Illuminate\Support\Facades\Auth;

class PeliculaController extends Controller
{
    public function showPelicula($id) {
        // Obtenemos todas las películas que hay en la base de datos.
        $pelicula = Reproducibles::with(['saga', 'generos', 'personas', 'directores', 'actores', 'plataformas', 'trailers'])
                  ->findOrFail($id);

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

            return view('peliculaView', compact('pelicula', 'idsPorLista'));
        } else {
            return view('peliculaView', compact('pelicula'));
        }
    }
}
