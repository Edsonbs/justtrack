<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Listas;
use App\Models\ListasReproducibles;
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

    /**
     * Método para añadir una película a una lista de un usuario.
     */
    public function addPeliculaLista(Request $request)
    {
        $request->validate([
            'tipo' => 'required|in:Visto,Me gusta,No me gusta,Watchlist',
            'id_reproducible' => 'required|integer|exists:REPRODUCIBLES,id',
        ]);

        $usuario = Auth::user();

        $lista = Listas::where('nombre', $request->tipo)
            ->where('id_propietario', $usuario->id)
            ->firstOrFail();

        $relacion = ListasReproducibles::where('id_lista', $lista->id)
            ->where('id_reproducible', $request->id_reproducible)
            ->first();

        if ($relacion) {
            // Si ya existe, la eliminamos (toggle off)
            ListasReproducibles::where('id_lista', $lista->id)
                ->where('id_reproducible', $request->id_reproducible)
                ->delete();
            $accion = 'eliminado';
        } else {
            // Si no existe, la creamos (toggle on)
            ListasReproducibles::create([
                'id_lista' => $lista->id,
                'id_reproducible' => $request->id_reproducible,
            ]);
            $accion = 'añadido';
        }

        return response()->json(['success' => true, 'accion' => $accion]);
    }
}
