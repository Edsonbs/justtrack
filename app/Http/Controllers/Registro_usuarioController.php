<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Listas;
use App\Models\Roles;
use App\Models\TiposListas;
use App\Models\User;
use Illuminate\Http\Request;

class Registro_usuarioController extends Controller
{
    public function showFormularioRegistro()
    {
        return view('registro_usuarioView');
    }

    public function registrar(Request $request)
    {
        $request->validate([
            'nombre' => 'required|string|max:64',
            'correo' => 'required|email|unique:usuarios,correo',
            'clave' => 'required|string|max:128',
        ]);

        $usuario = new User();
        $usuario->nombre = $request->nombre;
        $usuario->correo = $request->correo;
        $usuario->clave = $request->clave; // sin hashear
        $usuario->save();

        // Buscar el rol "comun" y asignárselo
        $rol = Roles::where('nombre', 'comun')->first();
        if ($rol) {
            $usuario->roles()->attach($rol->id);
        }

        // Crear las 4 listas
        $tipoSeries = TiposListas::where('nombre', 'REPRODUCIBLES_SERIES')->first();
        $listasPorDefecto = ['Visto', 'Me gusta', 'No me gusta', 'Watchlist'];

        foreach ($listasPorDefecto as $nombreLista) {
            Listas::create([
                'nombre' => $nombreLista,
                'borrable' => false,
                'id_propietario' => $usuario->id,
                'id_tipo_lista' => $tipoSeries->id,
            ]);
        }

        return redirect('/login')->with('success', 'Usuario registrado con éxito.');
    }
}
