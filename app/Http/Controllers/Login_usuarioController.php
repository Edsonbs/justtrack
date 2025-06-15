<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Hash;

class Login_usuarioController extends Controller
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
        $credentials['correo'] = strtolower($credentials['correo']); // <- convierte a minúsculas

        $user = User::where('correo', $credentials['correo'])->first();

        if ($user && Hash::check($credentials['clave'], $user->clave)) {
            Auth::login($user);

            // Enviar correo al iniciar sesión
            Mail::raw("Hola {$user->nombre},\n\nAcabas de iniciar sesión correctamente en JustTrack. 🕵️‍♂️\n\nSi no fuiste tú, por favor contacta con soporte.\n\n— El equipo de JustTrack", function ($message) use ($user) {
                $message->to($user->correo)
                    ->from('justtrack.noreply@gmail.com', 'JustTrack')
                    ->subject('Inicio de sesión en JustTrack');
            });

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
