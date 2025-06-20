<?php

use App\Http\Controllers\BusquedaController;
use App\Http\Controllers\InicioController;
use App\Http\Controllers\ListasController;
use App\Http\Controllers\Login_usuarioController;
use App\Http\Controllers\NuevoController;
use App\Http\Controllers\PeliculaController;
use App\Http\Controllers\PopularController;
use App\Http\Controllers\Registro_usuarioController;
use Illuminate\Support\Facades\Route;

// Página por defecto (página de inicio)
Route::get('/', [InicioController::class, 'showInicio']);
Route::post('/enviar-feedback', [InicioController::class, 'enviarCorreo'])->name('feedback.enviar');

// Vistas del header
Route::get('/nuevo', [NuevoController::class, 'showNuevo']);
Route::get('/popular', [PopularController::class, 'showPopular']);
Route::get('/listas', [ListasController::class, 'showListas'])->middleware('auth');
// Vista en la que el usuario visualiza las películas de una de sus listas
Route::get('/listas/{nombre}', [ListasController::class, 'showLista'])->middleware('auth')->name('listas.mostrar');
// URL a la que se le solicita añadir una película a alguna lista
Route::post('/listas/agregar', [ListasController::class, 'addPeliculaLista'])->middleware('auth')->name('listas.agregar');
Route::get('/busqueda', [BusquedaController::class, 'showBusqueda'])->name('busqueda');

// Vista que muestra el detalle de cualquier película de la base de datos
Route::get('/pelicula/{id}', [PeliculaController::class, 'showPelicula']);

// Registro de usuario
Route::get('/registro', [Registro_usuarioController::class, 'showFormularioRegistro'])->middleware('guest');
Route::post('/registro', [Registro_usuarioController::class, 'registrar'])->name('registro')->middleware('guest');

// Gestión de sesiones
Route::get('/login', [Login_usuarioController::class, 'showFormularioLogin'])->middleware('guest');
// URL de inicio de sesión
Route::post('/login', [Login_usuarioController::class, 'login'])->name('login')->middleware('guest');
Route::post('/logout', [Login_usuarioController::class, 'logout'])->name('logout')->middleware('auth');
