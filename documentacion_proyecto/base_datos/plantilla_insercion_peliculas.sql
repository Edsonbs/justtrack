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

-- Ahora añadimos los tráilers de cada película.
INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'Until Dawn: Noche de terror' AND nombre_original = 'Until Dawn'), 'https://www.youtube.com/watch?v=L_9Nhhl-h-g');
INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'Until Dawn: Noche de terror' AND nombre_original = 'Until Dawn'), 'https://www.youtube.com/watch?v=4XcFHfvKG-s');
INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'Until Dawn: Noche de terror' AND nombre_original = 'Until Dawn'), 'https://www.youtube.com/watch?v=Il7cJMhTyJ4');
INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'Until Dawn: Noche de terror' AND nombre_original = 'Until Dawn'), 'https://www.youtube.com/watch?v=sl6Kd7UNUJ0');

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