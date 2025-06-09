-- Creamos la base de datos que debe admitir caracteres del Español.
CREATE DATABASE JUSTTRACK CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci;
USE JUSTTRACK;

-- Creamos la tabla que contiene los tipos de lista que puede haber.
-- [reproducible, libro, videojuego, musica, reproducible_libro...]
CREATE TABLE TIPOS_LISTAS (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(32) NOT NULL UNIQUE,
    descripcion VARCHAR(256)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci;

-- Creamos la tabla que almacena los usuarios.
CREATE TABLE USUARIOS (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(64) NOT NULL,
    correo VARCHAR(256) NOT NULL UNIQUE,
    clave VARCHAR(128) NOT NULL
) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci;

-- Creamos la tabla que almacena los distintos roles que puede tener un usuario.
-- [comun, editor, admin...]
CREATE TABLE ROLES (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(32) NOT NULL UNIQUE,
    descripcion VARCHAR(256)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci;

-- Creamos la tabla que contiene el nombre de las listas de los usuarios.
-- [watchlist, me gusta, no me gusta, visto...]
CREATE TABLE LISTAS (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(32) NOT NULL,
    borrable BOOLEAN NOT NULL DEFAULT TRUE,
    id_propietario INT UNSIGNED NOT NULL,
    id_tipo_lista INT UNSIGNED NOT NULL,

    UNIQUE(nombre, id_propietario),

    CONSTRAINT listas_fk_id_propietario FOREIGN KEY (id_propietario) REFERENCES USUARIOS(id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT listas_fk_id_tipo_lista FOREIGN KEY (id_tipo_lista) REFERENCES TIPOS_LISTAS(id) ON DELETE CASCADE ON UPDATE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci;

-- Ahora creamos la tabla que relaciona los usuarios con el rol que tiene cada uno.
CREATE TABLE USUARIOS_ROLES (
    id_usuario INT UNSIGNED,
    id_rol INT UNSIGNED,

    PRIMARY KEY (id_usuario, id_rol),

    CONSTRAINT usuarios_roles_fk_id_usuario FOREIGN KEY (id_usuario) REFERENCES USUARIOS(id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT usuarios_roles_fk_id_rol FOREIGN KEY (id_rol) REFERENCES ROLES(id) ON DELETE CASCADE ON UPDATE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci;

-- Creamos la tabla que agrupa las películas en sagas.
CREATE TABLE SAGAS (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(128) NOT NULL UNIQUE,
    descripcion TEXT
) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci;

-- Creamos la tabla que contiene toda la información acerca de cada película.
CREATE TABLE REPRODUCIBLES (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(128) NOT NULL,
    nombre_original VARCHAR(128) NOT NULL,
    sinopsis TEXT NOT NULL,
    url_caratula VARCHAR(256) NOT NULL,
    url_banner VARCHAR(256) DEFAULT 'https://www.hdwallpapers.in/download/octarender_cinema_abstract_render_4k_hd_abstract-HD.jpg',
    fecha_lanzamiento DATE NOT NULL,
    duracion_mins SMALLINT UNSIGNED NOT NULL,
    clasificacion_edad TINYINT UNSIGNED,
    pais_produccion VARCHAR(64),
    id_saga INT UNSIGNED,

    UNIQUE(nombre, fecha_lanzamiento),

    CONSTRAINT reproducibles_fk_id_saga FOREIGN KEY (id_saga) REFERENCES SAGAS(id) ON DELETE SET NULL ON UPDATE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci;

-- Creamos la tabla que almacena los qué reproducibles se encuentran en qué lista.
CREATE TABLE LISTAS_REPRODUCIBLES (
    id_lista INT UNSIGNED,
    id_reproducible INT UNSIGNED,

    PRIMARY KEY (id_lista, id_reproducible),

    CONSTRAINT listas_reproducibles_fk_id_lista FOREIGN KEY (id_lista) REFERENCES LISTAS(id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT listas_reproducibles_fk_id_reproducible FOREIGN KEY (id_reproducible) REFERENCES REPRODUCIBLES(id) ON DELETE CASCADE ON UPDATE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci;

-- Creamos la tabla que contiene los distintos géneros a los que puede pertenecer una película o serie.
CREATE TABLE GENEROS (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(32) NOT NULL UNIQUE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci;

-- Creamos la tabla que relaciona la tabla reproducibles con los géneros de éste.
CREATE TABLE REPRODUCIBLES_GENEROS (
    id_reproducible INT UNSIGNED,
    id_genero INT UNSIGNED,

    PRIMARY KEY (id_reproducible, id_genero),
    
    CONSTRAINT reproducibles_generos_fk_id_reproducible FOREIGN KEY (id_reproducible) REFERENCES REPRODUCIBLES(id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT reproducibles_generos_fk_id_genero FOREIGN KEY (id_genero) REFERENCES GENEROS(id) ON DELETE CASCADE ON UPDATE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci;

-- Creamos la tabla que almacena toda clase de personas que tengan relación con el mundo del cine.
-- Los que nos interesan actualmente son tanto directores como actores y actrices.
CREATE TABLE PERSONAS (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(64) NOT NULL UNIQUE,
    url_foto VARCHAR(256) NOT NULL DEFAULT 'https://images.unsplash.com/photo-1511367461989-f85a21fda167?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D'
) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci;

-- Creamos la tabla que relaciona cada persona con cada película en la que hayan participado y la labor que ha desempeñado.
CREATE TABLE REPRODUCIBLES_PERSONAS (
    id_reproducible INT UNSIGNED,
    id_persona INT UNSIGNED,
    rol VARCHAR(32) NOT NULL,

    PRIMARY KEY (id_reproducible, id_persona),

    CONSTRAINT reproducibles_personas_fk_id_reproducible FOREIGN KEY (id_reproducible) REFERENCES REPRODUCIBLES(id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT reproducibles_personas_fk_id_persona FOREIGN KEY (id_persona) REFERENCES PERSONAS(id) ON DELETE CASCADE ON UPDATE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci;

-- Creamos la tabla que almacena las plataformas en las que puede estar una película o serie.
CREATE TABLE PLATAFORMAS (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(16) NOT NULL,
    ruta_logo VARCHAR(256) NOT NULL,

    UNIQUE(nombre, ruta_logo)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci;

-- Creamos la tabla que relaciona los reproducibles con las plataformas en la que se encuentre.
CREATE TABLE REPRODUCIBLES_PLATAFORMAS (
    id_reproducible INT UNSIGNED,
    id_plataforma INT UNSIGNED,

    PRIMARY KEY (id_reproducible, id_plataforma),

    CONSTRAINT reproducibles_plataformas_fk_id_reproducible FOREIGN KEY (id_reproducible) REFERENCES REPRODUCIBLES(id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT reproducibles_plataformas_fk_id_plataforma FOREIGN KEY (id_plataforma) REFERENCES PLATAFORMAS(id) ON DELETE CASCADE ON UPDATE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci;

-- Creamos la tabla que almacena las URL de los tráilers de las pelis.
CREATE TABLE TRAILERS_REPRODUCIBLES (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    id_reproducible INT UNSIGNED NOT NULL,
    url_trailer VARCHAR(256) NOT NULL UNIQUE,

    CONSTRAINT trailers_reproducibles_fk_id_reproducible FOREIGN KEY (id_reproducible) REFERENCES REPRODUCIBLES(id) ON DELETE CASCADE ON UPDATE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci;

-- Creamos la tabla que almacena las valoraciones que le dan los usuarios a cada película.
CREATE TABLE CALIFICACIONES_REPRODUCIBLES (
    id_reproducible INT UNSIGNED,
    id_usuario INT UNSIGNED,
    calificacion TINYINT UNSIGNED NOT NULL CHECK (calificacion BETWEEN 0 AND 10),

    PRIMARY KEY (id_reproducible, id_usuario),

    CONSTRAINT calificaciones_reproducibles_fk_id_reproducible FOREIGN KEY (id_reproducible) REFERENCES REPRODUCIBLES(id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT calificaciones_reproducibles_fk_id_usuario FOREIGN KEY (id_usuario) REFERENCES USUARIOS(id) ON DELETE CASCADE ON UPDATE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci;





-- TRIGGERS





-- Creamos un Trigger para que al eliminar cualquier rol, se asigne automáticamente el rol con id 1 al usuario.
DELIMITER //

CREATE TRIGGER antes_de_borrar_rol
BEFORE DELETE ON ROLES
FOR EACH ROW
BEGIN
  -- Reasignar el rol a los usuarios que tenían el rol que se va a eliminar
  UPDATE USUARIOS_ROLES
  SET id_rol = 1 -- id del rol de reemplazo
  WHERE id_rol = OLD.id;
END;
//

DELIMITER ;

-- Creamos un Trigger para que al eliminar cualquier tipo de lista, se asigne automáticamente el tipo de lista 1.
DELIMITER //

CREATE TRIGGER antes_de_borrar_tipo_lista
BEFORE DELETE ON TIPOS_LISTAS
FOR EACH ROW
BEGIN
  -- Reasignar el tipo a las listas que tenían el tipo que se va a eliminar
  UPDATE LISTAS
  SET id_tipo_lista = 1 -- id del tipo de reemplazo
  WHERE id_tipo_lista = OLD.id;
END;
//

DELIMITER ;





-- USUARIO





-- Creo el usuario con el que la aplicación se conectará a la base de datos.
CREATE USER 'usuario_app_justtrack'@'localhost' IDENTIFIED BY '1234509876';
GRANT ALL PRIVILEGES ON JUSTTRACK.* TO 'usuario_app_justtrack'@'localhost';
FLUSH PRIVILEGES;
