<?php

use App\Http\Controllers\PopularController;
use Illuminate\Support\Facades\Route;

// Página por defecto.
Route::get('/', function () {
    return view('temporalView');
});
Route::get('/popular', [PopularController::class, "showPopular"]);