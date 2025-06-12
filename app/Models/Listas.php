<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;

class Listas extends Model
{
    protected $table = 'LISTAS';
    public $timestamps = false;
    protected $fillable = ['nombre', 'borrable', 'id_propietario', 'id_tipo_lista'];

    public function reproducibles()
    {
        return $this->belongsToMany(Reproducibles::class, 'LISTAS_REPRODUCIBLES', 'id_lista', 'id_reproducible');
    }

    /**
     * Devuelve el modelo de un registro de la tabla "LISTA" del usuario que tiene la sesión iniciada actualmente dependiendo del nombre de la lista deseada.
     * @param mixed $nombreLista Es el nombre de la lista del usuario con sesión iniciada deseada.
     */
    protected static function getUserListaPorNombre($nombreLista)
    {
        $userId = Auth::id();
        return self::where('id_propietario', $userId)
            ->where('nombre', $nombreLista)
            ->first();
    }

    /**
     * Devuelve el modelo de la lista "Visto" del usuario que tiene la sesión iniciada actualmente.
     */
    public static function getUserListaVisto()
    {
        return self::getUserListaPorNombre('Visto');
    }

    /**
     * Devuelve el modelo de la lista "Me gusta" del usuario que tiene la sesión iniciada actualmente.
     */
    public static function getUserListaMeGusta()
    {
        return self::getUserListaPorNombre('Me gusta');
    }

    /**
     * Devuelve el modelo de la lista "No me gusta" del usuario que tiene la sesión iniciada actualmente.
     */
    public static function getUserListaNoMeGusta()
    {
        return self::getUserListaPorNombre('No me gusta');
    }

    /**
     * Devuelve el modelo de la lista "Watchlist" del usuario que tiene la sesión iniciada actualmente.
     */
    public static function getUserListaWatchlist()
    {
        return self::getUserListaPorNombre('Watchlist');
    }
}
