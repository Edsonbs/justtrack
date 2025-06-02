<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class Registro_usuarioController extends Controller
{
    public function showFormularioRegistro() {
        return view('registro_usuarioView');
    }
}
