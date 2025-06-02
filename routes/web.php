<?php

use App\Http\Controllers\LoginController;
use App\Http\Controllers\PeliculaController;
use App\Http\Controllers\PopularController;
use App\Http\Controllers\Registro_usuarioController;
use Illuminate\Support\Facades\Route;

// Página por defecto.
Route::get('/', function () {
    return view('temporalView');
});
Route::get('/nuevo', [PopularController::class, "showPopular"]);
Route::get('/popular', [PopularController::class, "showPopular"]);
Route::get('/pelicula/{id}', [PeliculaController::class, "showPelicula"]);

Route::get('/registro', [Registro_usuarioController::class, "showFormularioRegistro"]);
Route::get('/login', [LoginController::class, "showFormularioLogin"]);
Route::post('/login', [LoginController::class, 'login'])->name('login');
Route::post('/logout', [LoginController::class, 'logout'])->name('logout');