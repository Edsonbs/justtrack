<?php

namespace App\Models;

use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    protected $table = 'USUARIOS'; // Tu tabla personalizada
    protected $primaryKey = 'id';
    public $timestamps = false; // Asumido por tu tabla
    protected $fillable = ['nombre', 'correo', 'clave'];
    
    public function getAuthPassword()
    {
        return $this->clave; // Sobrescribe para usar 'clave' en lugar de 'password'
    }

    public function roles()
    {
        return $this->belongsToMany(Roles::class, 'USUARIOS_ROLES', 'id_usuario', 'id_rol');
    }
}
