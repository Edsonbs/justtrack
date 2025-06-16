<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ListasReproducibles extends Model
{
    // Nombre de la tabla en la base de datos
    protected $table = 'LISTAS_REPRODUCIBLES';
    // Indica que esta tabla no tiene columnas 'created_at' ni 'updated_at'
    public $timestamps = false;
    // Indica que no hay id auto incremental
    public $incrementing = false;
    // Indica que no hay clave primaria típica, es clave compuesta
    protected $primaryKey = null;
    // Campos que se pueden rellenar en masa (mass assignment)
    protected $fillable = ['id_lista', 'id_reproducible'];

    /**
     * Función para añadir un reproducible (película) a una lista
     */
    public static function addReproducibleALista($idLista, $idReproducible)
    {
        return self::firstOrCreate([
            'id_lista' => $idLista,
            'id_reproducible' => $idReproducible,
        ]);
    }
}
