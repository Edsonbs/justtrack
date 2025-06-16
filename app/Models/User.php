<?php

namespace App\Models;

use Illuminate\Foundation\Auth\User as Authenticatable; // Clase base para usuarios autenticables
use Illuminate\Support\Facades\Hash; // Para usar funciones de hash (encriptación)

// Modelo de usuario personalizado que extiende el sistema de autenticación de Laravel
class User extends Authenticatable
{
    // Nombre de la tabla en la base de datos (no usa la tabla por defecto 'users')
    protected $table = 'USUARIOS';
    // Clave primaria personalizada (por defecto sería 'id', aquí se especifica igual por claridad)
    protected $primaryKey = 'id';
    // Indica que esta tabla no tiene columnas 'created_at' ni 'updated_at'
    public $timestamps = false;
    // Campos que se pueden rellenar en masa (mass assignment)
    protected $fillable = ['nombre', 'correo', 'clave'];
    
    // 🔐 Método sobrescrito: Laravel usará 'clave' en vez de 'password' para autenticación
    public function getAuthPassword()
    {
        return $this->clave;
    }

    // Relación muchos a muchos: un usuario puede tener muchos roles
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
