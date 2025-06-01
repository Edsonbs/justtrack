<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Reproducibles extends Model
{
    protected $table = 'REPRODUCIBLES';

    // Relación uno a muchos inversa (belongsTo)
    public function saga()
    {
        return $this->belongsTo(Sagas::class, 'id_saga');
    }

    // Muchos a muchos con Géneros
    public function generos()
    {
        return $this->belongsToMany(Generos::class, 'REPRODUCIBLES_GENEROS', 'id_reproducible', 'id_genero');
    }

    // Muchos a muchos con Personas con información extra (rol)
    public function personas()
    {
        return $this->belongsToMany(Personas::class, 'REPRODUCIBLES_PERSONAS', 'id_reproducible', 'id_persona')
            ->withPivot('rol');
    }
    public function directores()
    {
        return $this->belongsToMany(Personas::class, 'reproducibles_personas', 'id_reproducible', 'id_persona')
            ->withPivot('rol')
            ->whereRaw('LOWER(rol) = ?', ['director']);
    }
    public function actores()
    {
        return $this->belongsToMany(Personas::class, 'reproducibles_personas', 'id_reproducible', 'id_persona')
            ->withPivot('rol')
            ->whereRaw('LOWER(rol) = ?', ['actor']);
    }

    // Muchos a muchos con Plataformas
    public function plataformas()
    {
        return $this->belongsToMany(Plataformas::class, 'REPRODUCIBLES_PLATAFORMAS', 'id_reproducible', 'id_plataforma');
    }

    // Uno a muchos con trailers
    public function trailers()
    {
        return $this->hasMany(TrailersReproducibles::class, 'id_reproducible');
    }

    // Uno a muchos con calificaciones
    public function calificaciones()
    {
        return $this->hasMany(CalificacionesReproducibles::class, 'id_reproducible');
    }
    public function mediaCalificaciones()
    {
        return $this->calificaciones()->avg('calificacion');
    }
}
