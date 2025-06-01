<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Reproducibles;
use Illuminate\Http\Request;

class PopularController extends Controller
{
    // Muestra la página "popular".
    public function showPopular() {
        // Obtenemos todas las películas que hay en la base de datos.
        $peliculas = Reproducibles::all();
        return view('popularView', compact('peliculas'));
    }
}
