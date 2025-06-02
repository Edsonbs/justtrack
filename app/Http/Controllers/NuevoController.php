<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Reproducibles;
use Illuminate\Http\Request;

class NuevoController extends Controller
{
    // Muestra la página "popular".
    public function showNuevo() {
        // Obtenemos todas las películas que hay en la base de datos.
        $peliculas = Reproducibles::orderBy('fecha_lanzamiento', 'desc')->get();
        return view('nuevoView', compact('peliculas'));
    }
}
