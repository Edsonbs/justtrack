<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Listas;
use App\Models\Reproducibles;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class PopularController extends Controller
{
    // Muestra la página "popular".
    public function showPopular() {
        // Obtenemos todas las películas de la base de datos ordenadas por media de calificación y luego por fecha de lanzamiento.
        $peliculas = Reproducibles::leftJoin('CALIFICACIONES_REPRODUCIBLES', 'REPRODUCIBLES.id', '=', 'CALIFICACIONES_REPRODUCIBLES.id_reproducible')
            ->select('REPRODUCIBLES.id', 'REPRODUCIBLES.nombre', 'REPRODUCIBLES.fecha_lanzamiento', 'REPRODUCIBLES.url_caratula', DB::raw('AVG(CALIFICACIONES_REPRODUCIBLES.calificacion) as media_calificacion'))
            ->groupBy('REPRODUCIBLES.id', 'REPRODUCIBLES.nombre', 'REPRODUCIBLES.fecha_lanzamiento', 'REPRODUCIBLES.url_caratula')
            ->orderByDesc('media_calificacion')
            ->orderByDesc('REPRODUCIBLES.fecha_lanzamiento')
            ->get();

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
    
            return view('popularView', compact('peliculas', 'idsPorLista'));
        } else {
            return view('popularView', compact('peliculas'));
        }
    }
}
