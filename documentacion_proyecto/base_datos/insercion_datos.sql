USE JUSTTRACK;





-- USUARIOS Y LISTAS





-- Añado varios tipos de lista.
INSERT INTO TIPOS_LISTAS (nombre, descripcion) VALUES ('REPRODUCIBLES', 'Este tipo de lista sólo admite ids de la tabla "REPRODUCIBLES".');
INSERT INTO TIPOS_LISTAS (nombre, descripcion) VALUES ('SERIES', 'Este tipo de lista sólo admite ids de la tabla "SERIES".');
INSERT INTO TIPOS_LISTAS (nombre, descripcion) VALUES ('REPRODUCIBLES_SERIES', 'Este tipo de lista admite ids de las tablas "REPRODUCIBLES" y "SERIES".');

-- Creo los roles que existen en el sistema de momento en la base de datos.
INSERT INTO ROLES (nombre, descripcion) VALUES ('comun', 'Este es el rol para los USUARIOS comunes.');
INSERT INTO ROLES (nombre, descripcion) VALUES ('editor', 'Este es el rol para los USUARIOS que pueden añadir y editar datos de la base de datos.');
INSERT INTO ROLES (nombre, descripcion) VALUES ('admin', 'Este es el rol para los USUARIOS que pueden modificar los permisos de otros USUARIOS.');

-- Creo varios usuarios.
INSERT INTO USUARIOS (nombre, correo, clave) VALUES ('Administrador', 'admin@admin.com', '1234509876');
INSERT INTO USUARIOS (nombre, correo, clave) VALUES ('Editor', 'editor@editor.com', '9887');
INSERT INTO USUARIOS (nombre, correo, clave) VALUES ('Eddy', 'eddy@gmail.com', '9887');

-- Asigno un rol a cada usuario.
INSERT INTO USUARIOS_ROLES (id_usuario, id_rol) VALUES ((SELECT id FROM USUARIOS WHERE correo = 'admin@admin.com'), (SELECT id FROM ROLES WHERE nombre = 'comun'));
INSERT INTO USUARIOS_ROLES (id_usuario, id_rol) VALUES ((SELECT id FROM USUARIOS WHERE correo = 'admin@admin.com'), (SELECT id FROM ROLES WHERE nombre = 'editor'));
INSERT INTO USUARIOS_ROLES (id_usuario, id_rol) VALUES ((SELECT id FROM USUARIOS WHERE correo = 'admin@admin.com'), (SELECT id FROM ROLES WHERE nombre = 'admin'));
INSERT INTO USUARIOS_ROLES (id_usuario, id_rol) VALUES ((SELECT id FROM USUARIOS WHERE correo = 'editor@editor.com'), (SELECT id FROM ROLES WHERE nombre = 'comun'));
INSERT INTO USUARIOS_ROLES (id_usuario, id_rol) VALUES ((SELECT id FROM USUARIOS WHERE correo = 'editor@editor.com'), (SELECT id FROM ROLES WHERE nombre = 'editor'));
INSERT INTO USUARIOS_ROLES (id_usuario, id_rol) VALUES ((SELECT id FROM USUARIOS WHERE correo = 'eddy@gmail.com'), (SELECT id FROM ROLES WHERE nombre = 'comun'));

-- Creo varias listas por defecto del usuario.
INSERT INTO LISTAS (nombre, borrable, id_propietario, id_tipo_lista) VALUES ('Visto', false, (SELECT id FROM USUARIOS WHERE correo = 'admin@admin.com'), (SELECT id FROM TIPOS_LISTAS WHERE nombre = 'REPRODUCIBLES_SERIES'));
INSERT INTO LISTAS (nombre, borrable, id_propietario, id_tipo_lista) VALUES ('Me gusta', false, (SELECT id FROM USUARIOS WHERE correo = 'admin@admin.com'), (SELECT id FROM TIPOS_LISTAS WHERE nombre = 'REPRODUCIBLES_SERIES'));
INSERT INTO LISTAS (nombre, borrable, id_propietario, id_tipo_lista) VALUES ('No me gusta', false, (SELECT id FROM USUARIOS WHERE correo = 'admin@admin.com'), (SELECT id FROM TIPOS_LISTAS WHERE nombre = 'REPRODUCIBLES_SERIES'));
INSERT INTO LISTAS (nombre, borrable, id_propietario, id_tipo_lista) VALUES ('Watchlist', false, (SELECT id FROM USUARIOS WHERE correo = 'admin@admin.com'), (SELECT id FROM TIPOS_LISTAS WHERE nombre = 'REPRODUCIBLES_SERIES'));

INSERT INTO LISTAS (nombre, borrable, id_propietario, id_tipo_lista) VALUES ('Visto', false, (SELECT id FROM USUARIOS WHERE correo = 'editor@editor.com'), (SELECT id FROM TIPOS_LISTAS WHERE nombre = 'REPRODUCIBLES_SERIES'));
INSERT INTO LISTAS (nombre, borrable, id_propietario, id_tipo_lista) VALUES ('Me gusta', false, (SELECT id FROM USUARIOS WHERE correo = 'editor@editor.com'), (SELECT id FROM TIPOS_LISTAS WHERE nombre = 'REPRODUCIBLES_SERIES'));
INSERT INTO LISTAS (nombre, borrable, id_propietario, id_tipo_lista) VALUES ('No me gusta', false, (SELECT id FROM USUARIOS WHERE correo = 'editor@editor.com'), (SELECT id FROM TIPOS_LISTAS WHERE nombre = 'REPRODUCIBLES_SERIES'));
INSERT INTO LISTAS (nombre, borrable, id_propietario, id_tipo_lista) VALUES ('Watchlist', false, (SELECT id FROM USUARIOS WHERE correo = 'editor@editor.com'), (SELECT id FROM TIPOS_LISTAS WHERE nombre = 'REPRODUCIBLES_SERIES'));

INSERT INTO LISTAS (nombre, borrable, id_propietario, id_tipo_lista) VALUES ('Visto', false, (SELECT id FROM USUARIOS WHERE correo = 'eddy@gmail.com'), (SELECT id FROM TIPOS_LISTAS WHERE nombre = 'REPRODUCIBLES_SERIES'));
INSERT INTO LISTAS (nombre, borrable, id_propietario, id_tipo_lista) VALUES ('Me gusta', false, (SELECT id FROM USUARIOS WHERE correo = 'eddy@gmail.com'), (SELECT id FROM TIPOS_LISTAS WHERE nombre = 'REPRODUCIBLES_SERIES'));
INSERT INTO LISTAS (nombre, borrable, id_propietario, id_tipo_lista) VALUES ('No me gusta', false, (SELECT id FROM USUARIOS WHERE correo = 'eddy@gmail.com'), (SELECT id FROM TIPOS_LISTAS WHERE nombre = 'REPRODUCIBLES_SERIES'));
INSERT INTO LISTAS (nombre, borrable, id_propietario, id_tipo_lista) VALUES ('Watchlist', false, (SELECT id FROM USUARIOS WHERE correo = 'eddy@gmail.com'), (SELECT id FROM TIPOS_LISTAS WHERE nombre = 'REPRODUCIBLES_SERIES'));





-- PREDETERMINADOS CONTENIDO





-- Añadimos los géneros que puede tener una serie o película.
INSERT INTO GENEROS (nombre) VALUES ('Comedia');
INSERT INTO GENEROS (nombre) VALUES ('Guerra');
INSERT INTO GENEROS (nombre) VALUES ('Historia');
INSERT INTO GENEROS (nombre) VALUES ('Romance');
INSERT INTO GENEROS (nombre) VALUES ('Drama');
INSERT INTO GENEROS (nombre) VALUES ('Terror');
INSERT INTO GENEROS (nombre) VALUES ('Deporte');
INSERT INTO GENEROS (nombre) VALUES ('Ciencia ficción');
INSERT INTO GENEROS (nombre) VALUES ('Animación');
INSERT INTO GENEROS (nombre) VALUES ('Documental');
INSERT INTO GENEROS (nombre) VALUES ('Crimen');
INSERT INTO GENEROS (nombre) VALUES ('Música');
INSERT INTO GENEROS (nombre) VALUES ('Acción');
INSERT INTO GENEROS (nombre) VALUES ('Aventura');
INSERT INTO GENEROS (nombre) VALUES ('Fantasía');
INSERT INTO GENEROS (nombre) VALUES ('Misterio');
INSERT INTO GENEROS (nombre) VALUES ('Suspense');
INSERT INTO GENEROS (nombre) VALUES ('Familia');
INSERT INTO GENEROS (nombre) VALUES ('Thriller');

-- Añadimos las plataformas y cines en las que puede estar una película.
INSERT INTO PLATAFORMAS (nombre, ruta_logo) VALUES ('Netflix', 'storage/platforms/netflix_logo.png');
INSERT INTO PLATAFORMAS (nombre, ruta_logo) VALUES ('Prime video', 'storage/platforms/prime_video_logo.jpg');
INSERT INTO PLATAFORMAS (nombre, ruta_logo) VALUES ('HBO', 'storage/platforms/hbo_logo.jpg');
INSERT INTO PLATAFORMAS (nombre, ruta_logo) VALUES ('Movistar+', 'storage/platforms/movistar_plus_logo.jpg');
INSERT INTO PLATAFORMAS (nombre, ruta_logo) VALUES ('Disney+', 'storage/platforms/disney_plus_logo.jpg');

INSERT INTO PLATAFORMAS (nombre, ruta_logo) VALUES ('Odeon', 'storage/platforms/odeon_logo.png');
INSERT INTO PLATAFORMAS (nombre, ruta_logo) VALUES ('Cinesa', 'storage/platforms/cinesa_logo.png');
INSERT INTO PLATAFORMAS (nombre, ruta_logo) VALUES ('Yelmo', 'storage/platforms/yelmo_logo.jpg');
INSERT INTO PLATAFORMAS (nombre, ruta_logo) VALUES ('Kinépolis', 'storage/platforms/kinepolis_logo.png');





-- PELICULAS Y SERIES





-- Añadimos películas.
INSERT INTO REPRODUCIBLES (nombre, nombre_original, sinopsis, url_caratula, url_banner, fecha_lanzamiento, duracion_mins, clasificacion_edad, pais_produccion, id_saga)
VALUES (
    'Until Dawn: Noche de terror',
    'Until Dawn',
    'Un grupo de amigos que está atrapado en un bucle temporal, donde enemigos misteriosos los persiguen y los matan de formas crueles, debe sobrevivir hasta el amanecer para poder escapar.',
    'https://m.media-amazon.com/images/M/MV5BZWU4NDY0ODktOGI3OC00NWE1LWIwYmQtNmJiZWU3NmZlMDhkXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',
    'https://www.lateja.cr/resizer/v2/SCKUOSEGRBF6FMA23626G7VT3I.jpg?smart=true&auth=315b45bad289fcf50aba9cf9bb7ae42a0c74a2f1f1712734db6cc7fb6fdaf54b&width=1950&height=1218',
    '2025-04-25',
    103,
    16,
    'Estados Unidos y Hungría',
    NULL
);
INSERT INTO REPRODUCIBLES (nombre, nombre_original, sinopsis, url_caratula, url_banner, fecha_lanzamiento, duracion_mins, clasificacion_edad, pais_produccion, id_saga)
VALUES (
    'El Amateur: Operación Venganza',
    'The Amateur',
    'En El Amateur: Operación Venganza conocemos a Charlie Heller, quien lleva una existencia anodina en los sótanos de la CIA: brillante descifrador, solitario y metódico. Pero su mundo se hace añicos cuando su esposa cae víctima de un atentado en Londres. Ignorado por sus superiores y sin respuesta oficial, Charlie decide dejar atrás los pasillos repletos de expedientes para seguir su propio código.',
    'https://lumiere-a.akamaihd.net/v1/images/amatr_001a_g_spa-es_70x100_c6ef7b19.jpeg',
    'https://i0.wp.com/www.lacosacine.com/wp-content/uploads/2024/11/The-Amateur-Banner-1.jpg?fit=1280%2C720&ssl=1',
    '2025-04-11',
    122,
    12,
    'Estados Unidos',
    NULL
);
INSERT INTO REPRODUCIBLES (nombre, nombre_original, sinopsis, url_caratula, url_banner, fecha_lanzamiento, duracion_mins, clasificacion_edad, pais_produccion, id_saga)
VALUES (
    'Alice (Subservience)',
    'Subservience',
    'Con su mujer en el hospital, un padre en apuros compra una Inteligencia Artificial para ayudarle en las tareas de casa. Pero a medida que la robot se encariña de su nuevo dueño, los límites empiezan a cruzarse. Pronto ella se empeña en eliminar lo que percibe como la verdadera amenaza para su felicidad: su familia.',
    'https://m.media-amazon.com/images/S/pv-target-images/8ad5c2f60cc587854139fde4fd27bcf6d8d732a364764687d241d37a29befb1d.jpg',
    'https://sm.ign.com/t/ign_es/screenshot/default/phpfcnxpz-alice-subservience_aewc.1080.png',
    '2024-08-15',
    106,
    16,
    'Estados Unidos',
    NULL
);
INSERT INTO REPRODUCIBLES (nombre, nombre_original, sinopsis, url_caratula, url_banner, fecha_lanzamiento, duracion_mins, clasificacion_edad, pais_produccion, id_saga)
VALUES (
    'Parásitos',
    '기생충',
    'Tanto Gi Taek (Song Kang-ho) como su familia están sin trabajo. Cuando su hijo mayor, Gi Woo (Choi Woo-sik), empieza a dar clases particulares en casa de Park (Lee Seon-gyun), las dos familias, que tienen mucho en común pese a pertenecer a dos mundos totalmente distintos, comienzan una interrelación de resultados imprevisibles.',
    'https://es.web.img3.acsta.net/pictures/19/09/17/17/13/3740579.jpg',
    'https://ethic.es/wp-content/uploads/2020/02/parasite.jpeg',
    '2019-10-25',
    132,
    16,
    'Corea del Sur',
    NULL
);
INSERT INTO REPRODUCIBLES (nombre, nombre_original, sinopsis, url_caratula, url_banner, fecha_lanzamiento, duracion_mins, clasificacion_edad, pais_produccion, id_saga)
VALUES (
    'La sustancia',
    'The Substance',
    'La sustancia sigue la historia de Elisabeth Sparkle, una ex-estrella de televisión, que decide someterse a un tratamiento experimental que la rejuvenece temporalmente.Sin embargo, el precio de desafiar la naturaleza es alto. En una sociedad que castiga el envejecimiento, Elisabeth se enfrenta a una pregunta incómoda: ¿cuánto está dispuesta a sacrificar por no envejecer?',
    'https://pics.filmaffinity.com/La_sustancia-970111010-large.jpg',
    'https://storage.googleapis.com/cclm-prod/web/wp-content/uploads/2024/08/banner-la-sustancia.jpg',
    '2024-09-20',
    141,
    18,
    'Reino Unido, Francia',
    NULL
);

-- Indicamos el/los género/s de cada película.
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Until Dawn: Noche de terror' AND nombre_original = 'Until Dawn'),
        (SELECT id FROM GENEROS WHERE nombre = 'Drama')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Until Dawn: Noche de terror' AND nombre_original = 'Until Dawn'),
        (SELECT id FROM GENEROS WHERE nombre = 'Terror')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Until Dawn: Noche de terror' AND nombre_original = 'Until Dawn'),
        (SELECT id FROM GENEROS WHERE nombre = 'Misterio')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Until Dawn: Noche de terror' AND nombre_original = 'Until Dawn'),
        (SELECT id FROM GENEROS WHERE nombre = 'Suspense')
        );

INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El Amateur: Operación Venganza' AND nombre_original = 'The Amateur'),
        (SELECT id FROM GENEROS WHERE nombre = 'Acción')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El Amateur: Operación Venganza' AND nombre_original = 'The Amateur'),
        (SELECT id FROM GENEROS WHERE nombre = 'Aventura')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El Amateur: Operación Venganza' AND nombre_original = 'The Amateur'),
        (SELECT id FROM GENEROS WHERE nombre = 'Misterio')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El Amateur: Operación Venganza' AND nombre_original = 'The Amateur'),
        (SELECT id FROM GENEROS WHERE nombre = 'Suspense')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El Amateur: Operación Venganza' AND nombre_original = 'The Amateur'),
        (SELECT id FROM GENEROS WHERE nombre = 'Thriller')
        );

INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Alice (Subservience)' AND nombre_original = 'Subservience'),
        (SELECT id FROM GENEROS WHERE nombre = 'Ciencia ficción')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Alice (Subservience)' AND nombre_original = 'Subservience'),
        (SELECT id FROM GENEROS WHERE nombre = 'Misterio')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Alice (Subservience)' AND nombre_original = 'Subservience'),
        (SELECT id FROM GENEROS WHERE nombre = 'Suspense')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Alice (Subservience)' AND nombre_original = 'Subservience'),
        (SELECT id FROM GENEROS WHERE nombre = 'Terror')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Alice (Subservience)' AND nombre_original = 'Subservience'),
        (SELECT id FROM GENEROS WHERE nombre = 'Thriller')
        );

INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Parásitos' AND nombre_original = '기생충'),
        (SELECT id FROM GENEROS WHERE nombre = 'Comedia')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Parásitos' AND nombre_original = '기생충'),
        (SELECT id FROM GENEROS WHERE nombre = 'Drama')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Parásitos' AND nombre_original = '기생충'),
        (SELECT id FROM GENEROS WHERE nombre = 'Misterio')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Parásitos' AND nombre_original = '기생충'),
        (SELECT id FROM GENEROS WHERE nombre = 'Suspense')
        );

INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'La sustancia' AND nombre_original = 'The Substance'),
        (SELECT id FROM GENEROS WHERE nombre = 'Drama')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'La sustancia' AND nombre_original = 'The Substance'),
        (SELECT id FROM GENEROS WHERE nombre = 'Terror')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'La sustancia' AND nombre_original = 'The Substance'),
        (SELECT id FROM GENEROS WHERE nombre = 'Ciencia ficción')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'La sustancia' AND nombre_original = 'The Substance'),
        (SELECT id FROM GENEROS WHERE nombre = 'Acción')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'La sustancia' AND nombre_original = 'The Substance'),
        (SELECT id FROM GENEROS WHERE nombre = 'Aventura')
        );

-- Indicamos en qué plataformas se encuentran las películas.
INSERT INTO REPRODUCIBLES_PLATAFORMAS (id_reproducible, id_plataforma)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Until Dawn: Noche de terror' AND nombre_original = 'Until Dawn'),
        (SELECT id FROM PLATAFORMAS WHERE nombre = 'Odeon')
        );
INSERT INTO REPRODUCIBLES_PLATAFORMAS (id_reproducible, id_plataforma)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Until Dawn: Noche de terror' AND nombre_original = 'Until Dawn'),
        (SELECT id FROM PLATAFORMAS WHERE nombre = 'Cinesa')
        );
INSERT INTO REPRODUCIBLES_PLATAFORMAS (id_reproducible, id_plataforma)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Until Dawn: Noche de terror' AND nombre_original = 'Until Dawn'),
        (SELECT id FROM PLATAFORMAS WHERE nombre = 'Yelmo')
        );
INSERT INTO REPRODUCIBLES_PLATAFORMAS (id_reproducible, id_plataforma)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Until Dawn: Noche de terror' AND nombre_original = 'Until Dawn'),
        (SELECT id FROM PLATAFORMAS WHERE nombre = 'Kinépolis')
        );

INSERT INTO REPRODUCIBLES_PLATAFORMAS (id_reproducible, id_plataforma)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El Amateur: Operación Venganza' AND nombre_original = 'The Amateur'),
        (SELECT id FROM PLATAFORMAS WHERE nombre = 'Odeon')
        );
INSERT INTO REPRODUCIBLES_PLATAFORMAS (id_reproducible, id_plataforma)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El Amateur: Operación Venganza' AND nombre_original = 'The Amateur'),
        (SELECT id FROM PLATAFORMAS WHERE nombre = 'Cinesa')
        );
INSERT INTO REPRODUCIBLES_PLATAFORMAS (id_reproducible, id_plataforma)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El Amateur: Operación Venganza' AND nombre_original = 'The Amateur'),
        (SELECT id FROM PLATAFORMAS WHERE nombre = 'Yelmo')
        );
INSERT INTO REPRODUCIBLES_PLATAFORMAS (id_reproducible, id_plataforma)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El Amateur: Operación Venganza' AND nombre_original = 'The Amateur'),
        (SELECT id FROM PLATAFORMAS WHERE nombre = 'Kinépolis')
        );

INSERT INTO REPRODUCIBLES_PLATAFORMAS (id_reproducible, id_plataforma)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Alice (Subservience)' AND nombre_original = 'Subservience'),
        (SELECT id FROM PLATAFORMAS WHERE nombre = 'Prime video')
        );

INSERT INTO REPRODUCIBLES_PLATAFORMAS (id_reproducible, id_plataforma)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Parásitos' AND nombre_original = '기생충'),
        (SELECT id FROM PLATAFORMAS WHERE nombre = 'Prime video')
        );
INSERT INTO REPRODUCIBLES_PLATAFORMAS (id_reproducible, id_plataforma)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Parásitos' AND nombre_original = '기생충'),
        (SELECT id FROM PLATAFORMAS WHERE nombre = 'Movistar+')
        );
INSERT INTO REPRODUCIBLES_PLATAFORMAS (id_reproducible, id_plataforma)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Parásitos' AND nombre_original = '기생충'),
        (SELECT id FROM PLATAFORMAS WHERE nombre = 'HBO')
        );

INSERT INTO REPRODUCIBLES_PLATAFORMAS (id_reproducible, id_plataforma)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'La sustancia' AND nombre_original = 'The Substance'),
        (SELECT id FROM PLATAFORMAS WHERE nombre = 'Movistar+')
        );

-- Ahora añadimos los tráilers de cada película.
INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'Until Dawn: Noche de terror' AND nombre_original = 'Until Dawn'), 'https://www.youtube.com/watch?v=L_9Nhhl-h-g');
INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'Until Dawn: Noche de terror' AND nombre_original = 'Until Dawn'), 'https://www.youtube.com/watch?v=4XcFHfvKG-s');
INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'Until Dawn: Noche de terror' AND nombre_original = 'Until Dawn'), 'https://www.youtube.com/watch?v=Il7cJMhTyJ4');
INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'Until Dawn: Noche de terror' AND nombre_original = 'Until Dawn'), 'https://www.youtube.com/watch?v=sl6Kd7UNUJ0');

INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'El Amateur: Operación Venganza' AND nombre_original = 'The Amateur'), 'https://www.youtube.com/watch?v=_F24JE6T5co');
INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'El Amateur: Operación Venganza' AND nombre_original = 'The Amateur'), 'https://www.youtube.com/watch?v=ul7PUdgmrNU');
INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'El Amateur: Operación Venganza' AND nombre_original = 'The Amateur'), 'https://www.youtube.com/watch?v=LIdRPzFYYLc');

INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'Alice (Subservience)' AND nombre_original = 'Subservience'), 'https://www.youtube.com/watch?v=C81jwT_8u8A');
INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'Alice (Subservience)' AND nombre_original = 'Subservience'), 'https://www.youtube.com/watch?v=5uvO_dqOemQ');

INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'Parásitos' AND nombre_original = '기생충'), 'https://www.youtube.com/watch?v=90dWVETAdtI');
INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'Parásitos' AND nombre_original = '기생충'), 'https://www.youtube.com/watch?v=-PtU49Aol00');
INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'Parásitos' AND nombre_original = '기생충'), 'https://www.youtube.com/watch?v=cR05bEhbWAs');

INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'La sustancia' AND nombre_original = 'The Substance'), 'https://www.youtube.com/watch?v=bb10YAiF8nE');
INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'La sustancia' AND nombre_original = 'The Substance'), 'https://www.youtube.com/watch?v=PWKgVtnwSTA&');

-- Añadimos a la base de datos personas de la industria.
-- Añadiré directores y actores de las películas que he añadido a la base de datos.
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('David F. Sandberg', 'https://pics.filmaffinity.com/138492823621851-nm_200.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Ella Rubin', 'https://images.mubicdn.net/images/cast_member/908306/cache-969809-1716130794/image-w856.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Michael Cimino', 'https://publish.purewow.net/wp-content/uploads/sites/2/2023/09/cimino-universal.jpg?resize=720%2C780');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Odessa A\'zion', 'https://mediaproxy.tvtropes.org/width/1200/https://static.tvtropes.org/pmwiki/pub/images/img_7215.jpeg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Ji-young Yoo', 'https://m.media-amazon.com/images/M/MV5BNzQ0YmU4MzctN2RhMi00MDg3LTgzZjctMzU5YmE2ODk0MjFlXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Belmont Cameli', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Belmont_Cameli_by_Gage_Skidmore.jpg/1200px-Belmont_Cameli_by_Gage_Skidmore.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Maia Mitchell', 'https://upload.wikimedia.org/wikipedia/commons/f/f1/Maia_Mitchell_at_Sundance_2018.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Peter Stormare', 'https://pics.filmaffinity.com/239764961941395-nm_200.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Lotta Losten', 'https://pics.filmaffinity.com/094120672984773-nm_200.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Mariann Hermányi', 'https://images.plex.tv/photo?size=large-1920&scale=1&url=https%3A%2F%2Fmetadata-static.plex.tv%2Fe%2Fpeople%2Fefa40d72dab1efd4630e8c0a770eeda1.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Willem van der Vegt', 'https://internationalactingstudio.com/wp-content/uploads/2023/01/My-Headshot.jpg');

INSERT INTO PERSONAS (nombre, url_foto) VALUES ('James Hawes', 'https://m.media-amazon.com/images/M/MV5BMWIzMjNlZmEtNzcyYi00N2VhLTljYjMtMzhkNTQ0OThmODQzXkEyXkFqcGc@._V1_.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Rami Malek', 'https://es.web.img3.acsta.net/pictures/15/08/25/17/32/376414.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Holt McCallany', 'https://images.mubicdn.net/images/cast_member/40698/cache-590193-1601071897/image-w856.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Danny Sapani', 'https://media.themoviedb.org/t/p/w500/h6goTpKA74Z6ePB2BAEEyQnGtCF.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Rachel Brosnahan', 'https://es.web.img3.acsta.net/pictures/18/01/08/14/01/1298520.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Michael Stuhlbarg', 'https://ntvb.tmsimg.com/assets/assets/428835_v9_be.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Laurence Fishburne', 'https://upload.wikimedia.org/wikipedia/commons/8/85/National_Memorial_Day_Concert_2017_%2834117818524%29_%28cropped%29.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Julianne Nicholson', 'https://images.mubicdn.net/images/cast_member/33934/cache-89622-1603376199/image-w856.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Caitríona Balfe', 'https://es.web.img3.acsta.net/c_310_420/pictures/16/01/28/17/22/189146.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Jon Bernthal', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/aa/Jon_Bernthal_%2853983124020%29.jpg/960px-Jon_Bernthal_%2853983124020%29.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Adrian Martinez', 'https://assets.mycast.io/actor_images/actor-adrian-martinez-329210_large.jpg?1640145467');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Evan Milton', 'https://images.mubicdn.net/images/cast_member/738629/cache-605288-1604362154/image-w856.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Kate Sumpter', 'https://m.media-amazon.com/images/M/MV5BNDRhZTZmZTgtODY5ZS00NmE4LWI2M2UtNjZhMzA1YmZiMGEwXkEyXkFqcGc@._V1_.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Anita Anand', 'https://assets.embrase.com/assets/5ba397d4-f2fe-4f48-9ce6-3df78c606a65?key=speaker-portrait');

INSERT INTO PERSONAS (nombre, url_foto) VALUES ('SK Dale', 'https://media.themoviedb.org/t/p/w235_and_h235_face/8ZwQLeDswGXnnCBpcEdprrUDUZ5.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Megan Fox', 'https://imagenes.elpais.com/resizer/v2/5RSUV3YHXVBSXOPXMO3RUZGRE4.jpg?auth=6b4a3eb6a4ebde904dd9dff25bf81ddd15aafa37bf4b3f07de49757c4a1e55a3&width=1960&height=1470&smart=true');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Michele Morrone', 'https://m.media-amazon.com/images/M/MV5BMmQ5ZjJkZDgtOTg1Ny00YzY2LWEyMzEtNWE4NzEwOGE4ZjAwXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Madeline Zima', 'https://es.web.img2.acsta.net/pictures/15/09/11/18/43/210928.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Matilda Firth', 'https://m.media-amazon.com/images/M/MV5BMWI3NGFiODMtNzM5NC00NmIyLWEyMTQtMmNiYzAwZDgyZjNiXkEyXkFqcGc@._V1_.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Andrew Whipp', 'https://m.media-amazon.com/images/M/MV5BMDYyYjkxMzctMDk3MC00NTMxLTkyZGMtYjNiMzJhZDBlYzg3XkEyXkFqcGc@._V1_.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Atanas Srebrev', 'https://media.themoviedb.org/t/p/w235_and_h235_face/aW9keIvjMkH9YAMQDEyJayAs7oy.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Kate Nichols', 'https://m.media-amazon.com/images/M/MV5BYTNjZDYyNjgtOTNjNy00NzdkLWEwZTQtZGMzMzhiZmQxZmFhXkEyXkFqcGc@._V1_.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Trevor Van Uden', 'https://pics.filmaffinity.com/244397098781228-nm_200.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Euan Macnaughton', 'https://m.media-amazon.com/images/M/MV5BNmFlYmFjZmQtMWY0Mi00OTcxLWJmMzQtOTU2NTUyYzQ5NDE4XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Max Kraus', 'https://m.media-amazon.com/images/M/MV5BZGJlOGRkYzEtMjgwMi00NGY3LWIyN2MtZjBlMzNhM2Y4NGE5XkEyXkFqcGc@._V1_.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('JR Esposito', 'https://m.media-amazon.com/images/M/MV5BM2M3MWM0YTAtNzBlNy00YzY2LTlhNTQtYzlkOGU0Y2Q4YzI0XkEyXkFqcGc@._V1_.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Doroteya Toleva', 'https://www.rsdoublage.com/acteurs/toleva_doroteya.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Antoni Davidov', 'https://www.comparandonos.com/plds/tv/actores/jason-lines.webp');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Jude Greenstein', 'https://pics.filmaffinity.com/velizar_binev-092310524874712-nm_200.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Rosmary Yaneva', 'https://m.media-amazon.com/images/M/MV5BZTJhNDdhYjctNmI4My00ZWVlLTkwMWItNTU1NDk3NWZhMzkzXkEyXkFqcGc@._V1_.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Manal El-Feitury', 'https://m.media-amazon.com/images/M/MV5BMGZjZGVkODctYjhkMC00YzY5LTkwYzMtYWVlNjUxZGI4NGM4XkEyXkFqcGc@._V1_.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Ronak Patani', 'https://imgproxy.filmmakers.eu/vF1crCSFWg1rOJfnh05rYPh_kaxWXFpCzzI4F2eV3Qg/rt:fit/w:3840/h:2160/czM6Ly9maWxtbWFr/ZXJzLWV1LXdlc3Qt/MS9wcm9kdWN0aW9u/L3Byb2ZpbGVfcGlj/dHVyZXMvMC9kL2Iv/My84ODU3Ni9EU0Nf/ODQ5OV9fMl8uanBn');

INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Bong Joon Ho', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fb/Bong_Joon-ho_2017.jpg/1200px-Bong_Joon-ho_2017.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Song Kang-ho', 'https://images.mubicdn.net/images/cast_member/4878/cache-146625-1607415235/image-w856.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Lee Sun-kyun', 'https://upload.wikimedia.org/wikipedia/commons/6/6f/Lee_Seon-gun_in_Oct_2018.png');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Cho Yeo-jeong', 'https://m.media-amazon.com/images/M/MV5BZDdlNGIyZTktNTFmYS00ODgwLWEwM2UtZTM3ODJjMjQ0N2ZlXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Choi Woo-shik', 'https://netizenschoice.com/wp-content/uploads/2025/02/211227_ECB59CEC9AB0EC8B9D.png');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Park So-dam', 'https://i.mydramalist.com/qYyNKP_5f.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Lee Jung-eun', 'https://upload.wikimedia.org/wikipedia/commons/6/6c/20220518_%EC%9D%B4%EC%A0%95%EC%9D%80_Lee_Jung-eun.png');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Jang Hye-jin', 'https://m.media-amazon.com/images/M/MV5BMzNjMTI2NTMtNmI3MS00ZTE1LTk5NTctZTgyZmZmZGQxOGE2XkEyXkFqcGc@._V1_.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Park Myung-hoon', 'https://is1-ssl.mzstatic.com/image/thumb/c4jY0MWogAsWkC2vV8NtOA/1200x675mf.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Jung Ji-so', 'https://media.themoviedb.org/t/p/w235_and_h235_face/jsUPFmY1HlML92ubVtSE8L8ovz6.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Jung Hyeon-jun', 'https://i.mydramalist.com/nO7VZQ_5c.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Park Keun-rok', 'https://m.media-amazon.com/images/M/MV5BNjM4NDg4NWYtOWRmZS00ZmUyLTgyMGItMzk0M2NiZTc2N2QxXkEyXkFqcGc@._V1_.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Jung Yi-seo', 'https://m.media-amazon.com/images/M/MV5BOTE3NjY1MjQtY2FlNS00NTA1LTgwZDQtMjdhYzRlNDdjMmFiXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Jeong Ik-han', 'https://img.seriebox.com/people/134/134389/ik-han-jung_min225.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Kim Kyu-baek', 'https://m.media-amazon.com/images/M/MV5BYWIyZWEwNmItMmRhMy00N2JmLWJhYTItZjA2N2NmZDJkMDVmXkEyXkFqcGc@._V1_.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Ahn Seong-bong', 'https://i.mydramalist.com/RZ74Yf.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Yoon Young-woo', 'https://m.media-amazon.com/images/M/MV5BMmFjMTlkZDMtOTlmYi00YzJhLWJjMGMtNWFjNGY3YTg1NDM2XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Park Jae-wook', 'https://i.namu.wiki/i/oBFI9MKDQeo7BoNL4OjI2UarW72bEBAf5iDmS0zzN7j15ozHz-haUOwAm_f_8sLXHokL1-0G4eiy-2ORt96NpQ.webp');

INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Coralie Fargeat', 'https://images.mubicdn.net/images/cast_member/519528/cache-258310-1715094388/image-w856.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Demi Moore', 'https://m.media-amazon.com/images/M/MV5BMTc2Mjc1MDE4MV5BMl5BanBnXkFtZTcwNzAyNDczNA@@._V1_.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Margaret Qualley', 'https://images.hellomagazine.com/horizon/43/ee0a03846b77-gettyimages-2192564430.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Dennis Quaid', 'https://imagenes.elpais.com/resizer/v2/MLSR6E3LOBEWDBC2XAR2GKE4TA.jpeg?auth=1addd4a266af3be2cc6c39a556664f72c67bcbc074fa5e64830bd9231199a139&width=980&height=980&smart=true');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Gore Abrams', 'https://images.mubicdn.net/images/cast_member/827386/cache-969478-1715947240/image-w856.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Oscar Lesage', 'https://m.media-amazon.com/images/M/MV5BMTlmOTlkZTItZDRjMi00M2JhLWFkYTAtYzUzNzYyNTMxNDMzXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Christian Erickson', 'https://m.media-amazon.com/images/M/MV5BZGIxNDk4N2EtOWExYi00MTkwLTg1MGMtZmE2Mzg5OWNmNTU1XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Robin Greer', 'https://media.licdn.com/dms/image/v2/C5603AQHGGWMnDGdVxQ/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1605121896840?e=2147483647&v=beta&t=i1cD9Kgz3dXuDKzEzIY39ebOebMhnghzY3OHSOmYzzo');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Tom Morton', 'https://m.media-amazon.com/images/M/MV5BYmQ5ZmUxNjUtN2YyYy00ODZjLWFlYmMtY2Y4ZTcwZjNiNDA1XkEyXkFqcGc@._V1_CR1482,1,2666,3999_.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Hugo Diego Garcia', 'https://imgproxy.filmmakers.eu/Q8njN_h0JmR9y2axna1SBRQDMcIMKs73cTL48ubUNHw/rt:fit/w:3840/h:2160/czM6Ly9maWxtbWFr/ZXJzLWV1LXdlc3Qt/MS9wcm9kdWN0aW9u/L2M5NGI5MDllLTgx/MTUtNGM3Ny05ZDI1/LWZjNmIwZDEwMDJm/NC5qcGc');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Jonathon Carley', 'https://pbs.twimg.com/profile_images/1848392375267184640/t0c098m3_400x400.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Vincent Colombe', 'https://images.mubicdn.net/images/cast_member/122473/cache-632387-1610569324/image-w856.jpg');

-- Ahora asociamos los directores y actores con las películas en las que han trabajado.
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Until Dawn: Noche de terror' AND nombre_original = 'Until Dawn'),
    (SELECT id FROM PERSONAS WHERE nombre = 'David F. Sandberg'),
    'Director');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Until Dawn: Noche de terror' AND nombre_original = 'Until Dawn'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Michael Cimino'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Until Dawn: Noche de terror' AND nombre_original = 'Until Dawn'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Odessa A\'zion'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Until Dawn: Noche de terror' AND nombre_original = 'Until Dawn'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Ji-young Yoo'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Until Dawn: Noche de terror' AND nombre_original = 'Until Dawn'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Belmont Cameli'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Until Dawn: Noche de terror' AND nombre_original = 'Until Dawn'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Maia Mitchell'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Until Dawn: Noche de terror' AND nombre_original = 'Until Dawn'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Peter Stormare'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Until Dawn: Noche de terror' AND nombre_original = 'Until Dawn'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Lotta Losten'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Until Dawn: Noche de terror' AND nombre_original = 'Until Dawn'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Mariann Hermányi'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Until Dawn: Noche de terror' AND nombre_original = 'Until Dawn'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Willem van der Vegt'),
    'Actor');

INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El Amateur: Operación Venganza' AND nombre_original = 'The Amateur'),
    (SELECT id FROM PERSONAS WHERE nombre = 'James Hawes'),
    'Director');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El Amateur: Operación Venganza' AND nombre_original = 'The Amateur'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Rami Malek'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El Amateur: Operación Venganza' AND nombre_original = 'The Amateur'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Holt McCallany'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El Amateur: Operación Venganza' AND nombre_original = 'The Amateur'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Danny Sapani'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El Amateur: Operación Venganza' AND nombre_original = 'The Amateur'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Rachel Brosnahan'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El Amateur: Operación Venganza' AND nombre_original = 'The Amateur'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Michael Stuhlbarg'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El Amateur: Operación Venganza' AND nombre_original = 'The Amateur'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Laurence Fishburne'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El Amateur: Operación Venganza' AND nombre_original = 'The Amateur'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Julianne Nicholson'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El Amateur: Operación Venganza' AND nombre_original = 'The Amateur'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Caitríona Balfe'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El Amateur: Operación Venganza' AND nombre_original = 'The Amateur'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Jon Bernthal'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El Amateur: Operación Venganza' AND nombre_original = 'The Amateur'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Adrian Martinez'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El Amateur: Operación Venganza' AND nombre_original = 'The Amateur'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Evan Milton'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El Amateur: Operación Venganza' AND nombre_original = 'The Amateur'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Kate Sumpter'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El Amateur: Operación Venganza' AND nombre_original = 'The Amateur'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Anita Anand'),
    'Actor');

INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Alice (Subservience)' AND nombre_original = 'Subservience'),
    (SELECT id FROM PERSONAS WHERE nombre = 'SK Dale'),
    'Director');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Alice (Subservience)' AND nombre_original = 'Subservience'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Megan Fox'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Alice (Subservience)' AND nombre_original = 'Subservience'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Michele Morrone'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Alice (Subservience)' AND nombre_original = 'Subservience'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Madeline Zima'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Alice (Subservience)' AND nombre_original = 'Subservience'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Matilda Firth'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Alice (Subservience)' AND nombre_original = 'Subservience'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Andrew Whipp'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Alice (Subservience)' AND nombre_original = 'Subservience'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Atanas Srebrev'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Alice (Subservience)' AND nombre_original = 'Subservience'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Kate Nichols'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Alice (Subservience)' AND nombre_original = 'Subservience'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Trevor Van Uden'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Alice (Subservience)' AND nombre_original = 'Subservience'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Euan Macnaughton'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Alice (Subservience)' AND nombre_original = 'Subservience'),
    (SELECT id FROM PERSONAS WHERE nombre = 'JR Esposito'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Alice (Subservience)' AND nombre_original = 'Subservience'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Doroteya Toleva'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Alice (Subservience)' AND nombre_original = 'Subservience'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Antoni Davidov'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Alice (Subservience)' AND nombre_original = 'Subservience'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Jude Greenstein'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Alice (Subservience)' AND nombre_original = 'Subservience'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Rosmary Yaneva'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Alice (Subservience)' AND nombre_original = 'Subservience'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Manal El-Feitury'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Alice (Subservience)' AND nombre_original = 'Subservience'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Ronak Patani'),
    'Actor');

INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Parásitos' AND nombre_original = '기생충'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Bong Joon Ho'),
    'Director');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Parásitos' AND nombre_original = '기생충'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Song Kang-ho'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Parásitos' AND nombre_original = '기생충'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Lee Sun-kyun'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Parásitos' AND nombre_original = '기생충'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Cho Yeo-jeong'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Parásitos' AND nombre_original = '기생충'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Choi Woo-shik'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Parásitos' AND nombre_original = '기생충'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Park So-dam'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Parásitos' AND nombre_original = '기생충'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Lee Jung-eun'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Parásitos' AND nombre_original = '기생충'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Jang Hye-jin'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Parásitos' AND nombre_original = '기생충'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Park Myung-hoon'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Parásitos' AND nombre_original = '기생충'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Jung Ji-so'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Parásitos' AND nombre_original = '기생충'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Jung Hyeon-jun'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Parásitos' AND nombre_original = '기생충'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Park Keun-rok'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Parásitos' AND nombre_original = '기생충'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Jung Yi-seo'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Parásitos' AND nombre_original = '기생충'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Jeong Ik-han'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Parásitos' AND nombre_original = '기생충'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Kim Kyu-baek'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Parásitos' AND nombre_original = '기생충'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Ahn Seong-bong'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Parásitos' AND nombre_original = '기생충'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Yoon Young-woo'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Parásitos' AND nombre_original = '기생충'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Park Jae-wook'),
    'Actor');

INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'La sustancia' AND nombre_original = 'The Substance'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Coralie Fargeat'),
    'Director');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'La sustancia' AND nombre_original = 'The Substance'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Demi Moore'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'La sustancia' AND nombre_original = 'The Substance'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Margaret Qualley'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'La sustancia' AND nombre_original = 'The Substance'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Dennis Quaid'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'La sustancia' AND nombre_original = 'The Substance'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Gore Abrams'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'La sustancia' AND nombre_original = 'The Substance'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Oscar Lesage'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'La sustancia' AND nombre_original = 'The Substance'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Christian Erickson'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'La sustancia' AND nombre_original = 'The Substance'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Robin Greer'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'La sustancia' AND nombre_original = 'The Substance'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Tom Morton'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'La sustancia' AND nombre_original = 'The Substance'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Hugo Diego Garcia'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'La sustancia' AND nombre_original = 'The Substance'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Jonathon Carley'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'La sustancia' AND nombre_original = 'The Substance'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Vincent Colombe'),
    'Actor');
