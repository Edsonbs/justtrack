<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function showFormularioLogin() {
        return view('login_usuarioView');
    }

    public function loginForm()
    {
        return view('auth.login'); // o el nombre de tu vista
    }

    public function login(Request $request)
    {
        $credentials = $request->only('correo', 'clave');

        $user = User::where('correo', $credentials['correo'])->first();

        if ($user && $user->clave === $credentials['clave']) {
            Auth::login($user);
            return redirect('/');
        }

        return back()->withErrors(['correo' => 'Correo o contraseña incorrectos']);
    }

    public function logout()
    {
        Auth::logout();
        return redirect('/');
    }
}
