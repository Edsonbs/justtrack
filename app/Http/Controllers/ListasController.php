<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\CalificacionesReproducibles;
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

        // Cargar las películas de la lista
        $peliculas = $lista->reproducibles()->get();

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

        return view('elementosListaView', compact('lista', 'peliculas', 'idsPorLista'));
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

        $this->actualizarCalificacion($usuario->id, $request->id_reproducible);

        return response()->json(['success' => true, 'accion' => $accion]);
    }

    private function actualizarCalificacion($idUsuario, $idReproducible)
    {
        // Obtener IDs de las listas del usuario por nombre
        $listas = Listas::where('id_propietario', $idUsuario)
            ->whereIn('nombre', ['Visto', 'Me gusta', 'No me gusta'])
            ->pluck('id', 'nombre');

        // Comprobar si la película está en cada lista
        $enVisto = ListasReproducibles::where('id_lista', $listas['Visto'] ?? null)
            ->where('id_reproducible', $idReproducible)->exists();

        $enMeGusta = ListasReproducibles::where('id_lista', $listas['Me gusta'] ?? null)
            ->where('id_reproducible', $idReproducible)->exists();

        $enNoMeGusta = ListasReproducibles::where('id_lista', $listas['No me gusta'] ?? null)
            ->where('id_reproducible', $idReproducible)->exists();

        // Lógica de calificación
        if (!$enVisto) {
            // Si no está en Visto, se elimina la calificación
            CalificacionesReproducibles::where('id_usuario', $idUsuario)
                ->where('id_reproducible', $idReproducible)
                ->delete();
        } else {
            if ($enMeGusta) {
                $valor = 10;
            } elseif ($enNoMeGusta) {
                $valor = 0;
            } else {
                $valor = 5;
            }

            $registro = CalificacionesReproducibles::where('id_usuario', $idUsuario)
                ->where('id_reproducible', $idReproducible)
                ->first();

            if ($registro) {
                $registro->calificacion = $valor;
                $registro->save();
            } else {
                CalificacionesReproducibles::create([
                    'id_usuario' => $idUsuario,
                    'id_reproducible' => $idReproducible,
                    'calificacion' => $valor
                ]);
            }
        }
    }
}
