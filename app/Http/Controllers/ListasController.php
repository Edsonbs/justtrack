<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Listas;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ListasController extends Controller
{
    // Para mostrar todas las listas que tiene el usuario loggeado:
    public function showListas() {
        $usuario = Auth::user();

        $listas = Listas::withCount('reproducibles')
            ->where('id_propietario', $usuario->id)
            ->get();

        return view('listasView', compact('listas'));
    }

    // Para mostrar el contenido de la lista clickeada por el usuario:
    public function showLista($nombre)
    {
        $usuario = Auth::user();

        // Buscar la lista por nombre y propietario
        $lista = Listas::where('nombre', $nombre)
            ->where('id_propietario', $usuario->id)
            ->firstOrFail();

        // Cargar los reproducibles relacionados
        $reproducibles = $lista->reproducibles()->get();

        return view('elementosListaView', compact('lista', 'reproducibles'));
    }
}
