<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Listas;
use App\Models\Reproducibles;
use Illuminate\Support\Facades\Auth;

// Controlador encargado de mostrar la página de detalle de una película
class PeliculaController extends Controller
{
    /**
     * Muestra la vista con los detalles de una película concreta, y si el usuario está logueado,
     * también indica si esa película está en sus listas personales (Visto, Watchlist, etc.).
     *
     * @param int $id ID de la película
     */
    public function showPelicula($id) {
        // Obtenemos todas las películas que hay en la base de datos.
        $pelicula = Reproducibles::with(['saga', 'generos', 'personas', 'directores', 'actores', 'plataformas', 'trailers'])
                  ->findOrFail($id); // Si no existe, lanza 404

        if (Auth::check()) {
            // Obtenemos el usuario con el que la sesión está iniciada.
            $usuario = Auth::user();

            // Obtenemos IDs de las películas por cada lista del usuario
            $listas = Listas::where('id_propietario', $usuario->id)
                ->with('reproducibles:id') // Solo obtiene los IDs de los reproducibles
                ->get()
                ->keyBy('nombre'); // Organiza las listas por nombre ('Visto', 'Me gusta', etc.)

            // Crea un array con los IDs de las películas que el usuario tiene en cada lista
            $idsPorLista = [
                'Watchlist' => $listas['Watchlist']->reproducibles->pluck('id')->toArray(),
                'Visto' => $listas['Visto']->reproducibles->pluck('id')->toArray(),
                'Me gusta' => $listas['Me gusta']->reproducibles->pluck('id')->toArray(),
                'No me gusta' => $listas['No me gusta']->reproducibles->pluck('id')->toArray(),
            ];

            // Devuelve la vista con la película y las listas del usuario
            return view('peliculaView', compact('pelicula', 'idsPorLista'));
        } else {
            // Si no hay sesión, solo muestra la película sin listas
            return view('peliculaView', compact('pelicula'));
        }
    }
}
