<?php

namespace App\Models;

use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Support\Facades\Hash;

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

    // 🔐 Mutador para cifrar automáticamente la clave
    public function setClaveAttribute($value)
    {
        $this->attributes['clave'] = Hash::make($value);
    }
}
