<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ListasReproducibles extends Model
{
    protected $table = 'LISTAS_REPRODUCIBLES';
    public $timestamps = false;
    public $incrementing = false; // ← IMPORTANTE: no hay columna auto-incremental
    protected $primaryKey = null; // ← IMPORTANTE: no hay clave primaria estándar

    protected $fillable = ['id_lista', 'id_reproducible'];

    public static function addReproducibleALista($idLista, $idReproducible)
    {
        return self::firstOrCreate([
            'id_lista' => $idLista,
            'id_reproducible' => $idReproducible,
        ]);
    }
}
