<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Roles extends Model
{
    // Nombre de la tabla en la base de datos
    protected $table = 'ROLES';
    // Indica que esta tabla no tiene columnas 'created_at' ni 'updated_at'
    public $timestamps = false;

    // Relación muchos a muchos: un rol puede estar asignado a varios usuarios
    public function usuarios()
    {
        return $this->belongsToMany(User::class, 'USUARIOS_ROLES', 'id_rol', 'id_usuario');
    }
}
