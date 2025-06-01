<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Reproducibles;
use Illuminate\Http\Request;

class PeliculaController extends Controller
{
    public function showPelicula($id) {
        // Obtenemos todas las películas que hay en la base de datos.
        $pelicula = Reproducibles::with(['saga', 'generos', 'personas', 'directores', 'actores', 'plataformas', 'trailers'])
                  ->findOrFail($id);
        return view('peliculaView', compact('pelicula'));
    }
}
