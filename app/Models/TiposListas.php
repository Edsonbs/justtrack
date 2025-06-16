<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class TiposListas extends Model
{
    // Nombre de la tabla en la base de datos
    protected $table = 'TIPOS_LISTAS';
    // Indica que esta tabla no tiene columnas 'created_at' ni 'updated_at'
    public $timestamps = false;
}
