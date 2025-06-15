<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class CalificacionesReproducibles extends Model
{
    protected $table = 'CALIFICACIONES_REPRODUCIBLES';
    public $timestamps = false;
    public $incrementing = false;
    protected $primaryKey = null;
    protected $keyType = 'string';

    protected $fillable = ['id_usuario', 'id_reproducible', 'calificacion'];

    public static function updateOrCreateCalificacion($idUsuario, $idReproducible, $calificacion)
    {
        $afectadas = DB::table('CALIFICACIONES_REPRODUCIBLES')
            ->where('id_usuario', $idUsuario)
            ->where('id_reproducible', $idReproducible)
            ->update(['calificacion' => $calificacion]);

        if ($afectadas === 0) {
            DB::table('CALIFICACIONES_REPRODUCIBLES')->insert([
                'id_usuario' => $idUsuario,
                'id_reproducible' => $idReproducible,
                'calificacion' => $calificacion,
            ]);
        }
    }

    public static function eliminarCalificacion($idUsuario, $idReproducible)
    {
        return self::where('id_usuario', $idUsuario)
            ->where('id_reproducible', $idReproducible)
            ->delete();
    }
}
