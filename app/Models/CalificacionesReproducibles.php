<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CalificacionesReproducibles extends Model
{
    protected $table = 'CALIFICACIONES_REPRODUCIBLES';
    public $timestamps = false;
    public $incrementing = false;
    protected $primaryKey = null;
    protected $fillable = ['id_usuario', 'id_reproducible', 'calificacion'];
}
