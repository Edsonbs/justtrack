<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Listas;
use App\Models\Reproducibles;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class PopularController extends Controller
{
    // Muestra la página "popular".
    public function showPopular() {
        $peliculas = Reproducibles::all();

        $usuario = Auth::user();

        // Obtener IDs de reproducibles por cada lista del usuario
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

        return view('popularView', compact('peliculas', 'idsPorLista'));
    }
}
