<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Rol extends Model
{
    protected $table = 'ROLES';
    public $timestamps = false;

    public function usuarios()
    {
        return $this->belongsToMany(User::class, 'USUARIOS_ROLES', 'id_rol', 'id_usuario');
    }
}
