<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Reproducibles;
use Illuminate\Http\Request;

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

        return view('busquedaView', compact('peliculas'));
    }
}
