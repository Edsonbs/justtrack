<?php

use App\Http\Controllers\InicioController;
use App\Http\Controllers\ListasController;
use App\Http\Controllers\Login_usuarioController;
use App\Http\Controllers\NuevoController;
use App\Http\Controllers\PeliculaController;
use App\Http\Controllers\PopularController;
use App\Http\Controllers\Registro_usuarioController;
use Illuminate\Support\Facades\Route;

// Página por defecto.
Route::get('/', [InicioController::class, "showInicio"]);

Route::get('/nuevo', [NuevoController::class, "showNuevo"]);
Route::get('/popular', [PopularController::class, "showPopular"]);
Route::get('/listas', [ListasController::class, 'showListas'])->middleware('auth');
Route::get('/listas/{nombre}', [ListasController::class, 'showLista'])->middleware('auth')->name('listas.mostrar');

Route::get('/pelicula/{id}', [PeliculaController::class, "showPelicula"]);

Route::get('/registro', [Registro_usuarioController::class, "showFormularioRegistro"]);
Route::post('/registro', [Registro_usuarioController::class, 'registrar'])->name('registro');

Route::get('/login', [Login_usuarioController::class, "showFormularioLogin"]);
Route::post('/login', [Login_usuarioController::class, 'login'])->name('login');
Route::post('/logout', [Login_usuarioController::class, 'logout'])->name('logout');