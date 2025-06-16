<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

// Modelo que representa la tabla de calificaciones que los usuarios dan a películas o series
class CalificacionesReproducibles extends Model
{
    // Nombre de la tabla en la base de datos
    protected $table = 'CALIFICACIONES_REPRODUCIBLES';
    // Indica que esta tabla no tiene columnas 'created_at' ni 'updated_at'
    public $timestamps = false;
    // No se usa una clave primaria con auto incremento
    public $incrementing = false;
    // No se define una clave primaria típica, porque la clave es compuesta (id_usuario + id_reproducible)
    protected $primaryKey = null;
    // El tipo de clave (aunque no se usa como tal)
    protected $keyType = 'string';
    // Campos que se pueden asignar en masa
    protected $fillable = ['id_usuario', 'id_reproducible', 'calificacion'];

    /**
     * Crea o actualiza una calificación que un usuario ha hecho sobre una película/serie.
     * Si ya existe una calificación para esa combinación de usuario y contenido, la actualiza.
     * Si no existe, la crea.
     *
     * @param int $idUsuario ID del usuario
     * @param int $idReproducible ID del contenido (película o serie)
     * @param int $calificacion Nota entre 0 y 10
     */
    public static function updateOrCreateCalificacion($idUsuario, $idReproducible, $calificacion)
    {
        // Intenta actualizar una calificación existente
        $afectadas = DB::table('CALIFICACIONES_REPRODUCIBLES')
            ->where('id_usuario', $idUsuario)
            ->where('id_reproducible', $idReproducible)
            ->update(['calificacion' => $calificacion]);

        // Si no se actualizó nada (porque no existía), se inserta una nueva
        if ($afectadas === 0) {
            DB::table('CALIFICACIONES_REPRODUCIBLES')->insert([
                'id_usuario' => $idUsuario,
                'id_reproducible' => $idReproducible,
                'calificacion' => $calificacion,
            ]);
        }
    }

    /**
     * Elimina la calificación de un contenido concreto hecha por un usuario.
     *
     * @param int $idUsuario ID del usuario
     * @param int $idReproducible ID del contenido (película o serie)
     * @return int Número de registros eliminados
     */
    public static function eliminarCalificacion($idUsuario, $idReproducible)
    {
        return self::where('id_usuario', $idUsuario)
            ->where('id_reproducible', $idReproducible)
            ->delete();
    }
}
