<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

// Modelo que representa las películas o series (reproducibles)
class Reproducibles extends Model
{
    // Nombre de la tabla en la base de datos
    protected $table = 'REPRODUCIBLES';

    // Relación muchos a uno: cada reproducible puede pertenecer a una saga
    public function saga()
    {
        return $this->belongsTo(Sagas::class, 'id_saga');
    }

    // Relación muchos a muchos: una película/serie puede tener varios géneros
    public function generos()
    {
        return $this->belongsToMany(Generos::class, 'REPRODUCIBLES_GENEROS', 'id_reproducible', 'id_genero');
    }

    // Relación muchos a muchos con Personas, incluyendo el campo extra "rol" (actor, director, etc.)
    public function personas()
    {
        return $this->belongsToMany(Personas::class, 'REPRODUCIBLES_PERSONAS', 'id_reproducible', 'id_persona')
            ->withPivot('rol'); // Incluye el campo 'rol' de la tabla intermedia
    }
    // Filtro específico para directores
    public function directores()
    {
        return $this->belongsToMany(Personas::class, 'REPRODUCIBLES_PERSONAS', 'id_reproducible', 'id_persona')
            ->withPivot('rol')
            ->whereRaw('LOWER(rol) = ?', ['director']); // Filtra solo los que tienen rol 'director'
    }
    // Filtro específico para actores
    public function actores()
    {
        return $this->belongsToMany(Personas::class, 'REPRODUCIBLES_PERSONAS', 'id_reproducible', 'id_persona')
            ->withPivot('rol')
            ->whereRaw('LOWER(rol) = ?', ['actor']); // Filtra solo los que tienen rol 'actor'
    }

    // Relación muchos a muchos con plataformas (Netflix, HBO, etc.)
    public function plataformas()
    {
        return $this->belongsToMany(Plataformas::class, 'REPRODUCIBLES_PLATAFORMAS', 'id_reproducible', 'id_plataforma');
    }

    // Relación uno a muchos: un reproducible puede tener varios trailers
    public function trailers()
    {
        return $this->hasMany(TrailersReproducibles::class, 'id_reproducible');
    }

    // Relación uno a muchos: un reproducible puede tener varias calificaciones de usuarios
    public function calificaciones()
    {
        return $this->hasMany(CalificacionesReproducibles::class, 'id_reproducible');
    }
    // Calcula la media de todas las calificaciones del reproducible
    public function mediaCalificaciones()
    {
        return $this->calificaciones()->avg('calificacion');
    }
}
