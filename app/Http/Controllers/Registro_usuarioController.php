<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Rol;
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
        $rol = Rol::where('nombre', 'comun')->first();
        if ($rol) {
            $usuario->roles()->attach($rol->id);
        }

        return redirect('/login')->with('success', 'Usuario registrado con éxito.');
    }
}
