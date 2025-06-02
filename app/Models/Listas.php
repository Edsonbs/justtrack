<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Listas extends Model
{
    protected $table = 'LISTAS';
    public $timestamps = false;

    protected $fillable = ['nombre', 'borrable', 'id_propietario', 'id_tipo_lista'];

    public function reproducibles()
    {
        return $this->belongsToMany(Reproducibles::class, 'LISTAS_REPRODUCIBLES', 'id_lista', 'id_reproducible');
    }
}
