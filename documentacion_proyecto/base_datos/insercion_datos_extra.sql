-- Creamos sagas de películas
INSERT INTO SAGAS (nombre, descripcion) VALUES ('El contable', 'The Accountant presenta a Christian Wolff, un contable autista con habilidades matemáticas prodigiosas que trabaja para organizaciones criminales.');
INSERT INTO SAGAS (nombre, descripcion) VALUES ('John Wick', 'John Wick es una saga de acción frenética donde un exasesino desata una guerra contra el crimen organizado tras perder lo único que le quedaba. Venganza, honor y balas en un mundo donde todos quieren matarlo… y nadie puede detenerlo.');
INSERT INTO SAGAS (nombre, descripcion) VALUES ('Saga del Infinito', 'La Saga del Infinito (en inglés, The Infinity Saga) es la línea principal compuesta por las primeras veintitrés películas del Universo Cinematográfico de Marvel, que abarca la Fase Uno, la Fase Dos y la Fase Tres de la franquicia. Esta comenzó con el estreno de Iron Man el 2 de mayo de 2008 y concluyó con Spider-Man: Far From Home el 2 de julio de 2019.');





-- Añadimos películas.
INSERT INTO REPRODUCIBLES (nombre, nombre_original, sinopsis, url_caratula, url_banner, fecha_lanzamiento, duracion_mins, clasificacion_edad, pais_produccion, id_saga)
VALUES (
    'El contable',
    'The Accountant',
    'The Accountant presenta a Christian Wolff, un contable autista con habilidades matemáticas prodigiosas que trabaja para organizaciones criminales. Su nueva misión en una empresa aparentemente legal lo expone a una peligrosa conspiración, mientras el Departamento del Tesoro le pisa los talones.',
    'https://i0.wp.com/www.septimacaja.com/wp-content/uploads/1Bd9ItSLT13u8Na0PApQAMcW1Jw.jpg?fit=1280%2C1920&ssl=1',
    'https://pics.filmaffinity.com/the_accountant-846661158-large.jpg',
    '2016-10-14',
    128,
    16,
    'Estados Unidos',
    (SELECT id FROM SAGAS WHERE nombre = 'El contable')
);
INSERT INTO REPRODUCIBLES (nombre, nombre_original, sinopsis, url_caratula, url_banner, fecha_lanzamiento, duracion_mins, clasificacion_edad, pais_produccion, id_saga)
VALUES (
    'El contable 2',
    'The Accountant²',
    'Cuando un viejo conocido es asesinado, Wolff se ve obligado a investigar el caso. Entonces recluta a su hermano Brax para que lo ayude. De la mano de Marybeth Medina, descubren una conspiración mortal y se convierten en el objetivo de una red de asesinos que no se detendrán ante nada para mantener sus secretos a salvo.',
    'https://pics.filmaffinity.com/El_contable_2-476574498-large.jpg',
    'https://m.media-amazon.com/images/S/pv-target-images/6f9297a0e0325abbab2384f140597954e79acdcd1dcc3965ed51491457f0235e._SX1080_FMjpg_.jpg',
    '2025-04-25',
    125,
    16,
    'Estados Unidos',
    (SELECT id FROM SAGAS WHERE nombre = 'El contable')
);
INSERT INTO REPRODUCIBLES (nombre, nombre_original, sinopsis, url_caratula, url_banner, fecha_lanzamiento, duracion_mins, clasificacion_edad, pais_produccion, id_saga)
VALUES (
    'Pecadores',
    'Sinners',
    'Con el objetivo de dejar atrás sus problemáticas vidas, unos hermanos gemelos regresan a su ciudad natal para empezar de nuevo, aunque descubren que un mal aún mayor está esperando para darles de nuevo la bienvenida.',
    'https://www.cinesa.es/media/vn5imyuz/es_snnrs_vert_main_2764x4096_intl_1920px.jpg',
    'https://www.yosoyungamer.com/wp-content/uploads/2025/04/sinners.jpg',
    '2025-04-16',
    137,
    16,
    'Australia, Canadá, Estados Unidos',
    NULL
);
INSERT INTO REPRODUCIBLES (nombre, nombre_original, sinopsis, url_caratula, url_banner, fecha_lanzamiento, duracion_mins, clasificacion_edad, pais_produccion, id_saga)
VALUES (
    'La viuda negra',
    'La viuda negra',
    'Cuando un hombre aparece muerto, la investigación del caso desbarata la imagen perfecta de su esposa y pone al descubierto su doble vida en este thriller basado en hechos reales.',
    'https://es.web.img2.acsta.net/img/78/2e/782ed469057c5f0a00a2cd62f121ca47.jpg',
    'https://s10.s3c.es/imag/_v0/7025x3834/c/0/1/viuda-negra2.jpg',
    '2025-05-30',
    122,
    18,
    'España',
    NULL
);
INSERT INTO REPRODUCIBLES (nombre, nombre_original, sinopsis, url_caratula, url_banner, fecha_lanzamiento, duracion_mins, clasificacion_edad, pais_produccion, id_saga)
VALUES (
    'Black Friday',
    'Thanksgiving',
    'Después de un Black Friday que se desmadra y acaba en tragedia, en la localidad de Plymouth, en Massachussets, comienza a sucederse muertes a manos de un misterioso asesino que se inspira en la fiesta de Acción de Gracias.<br><br>¿Podrá alguien descubrir quién es y acabar con él?',
    'https://es.web.img2.acsta.net/pictures/23/10/03/15/05/3564944.jpg',
    'https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/media/image/2023/09/black-friday-2023-3127774.jpg?tf=3840x',
    '2023-11-04',
    106,
    18,
    'Estados Unidos',
    NULL
);
INSERT INTO REPRODUCIBLES (nombre, nombre_original, sinopsis, url_caratula, url_banner, fecha_lanzamiento, duracion_mins, clasificacion_edad, pais_produccion, id_saga)
VALUES (
    'John Wick (Otro día para matar)',
    'John Wick',
    'En John Wick: Otro día para matar, la leyenda retirada del crimen y viudo reciente, vive en calma con su último vínculo emocional: un cachorro regalo de su esposa fallecida. Pero la violencia lo encuentra de nuevo cuando unos mafiosos se lo arrebatan todo. El resultado: un ballet de venganza, precisión y elegancia letal en una Nueva York sombría.',
    'https://es.web.img3.acsta.net/pictures/14/10/01/14/18/135831.jpg',
    'https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/media/image/2023/03/john-wick-2984666.jpg',
    '2014-10-24',
    101,
    18,
    'Estados Unidos',
    (SELECT id FROM SAGAS WHERE nombre = 'John Wick')
);
INSERT INTO REPRODUCIBLES (nombre, nombre_original, sinopsis, url_caratula, url_banner, fecha_lanzamiento, duracion_mins, clasificacion_edad, pais_produccion, id_saga)
VALUES (
    'John Wick: Pacto de sangre',
    'John Wick: Chapter 2',
    'El legendario asesino John Wick (Keanu Reeves) se ve obligado a salir del retiro por un ex-asociado que planea obtener el control de un misterioso grupo internacional de asesinos. Obligado a ayudarlo por un juramento de sangre, John emprende un viaje a Roma lleno de adrenalina estremecedora para pelear contra los asesinos más peligrosos del mundo.',
    'https://es.web.img3.acsta.net/pictures/16/10/26/08/50/198471.jpg',
    'https://occ-0-8407-90.1.nflxso.net/dnm/api/v6/Z-WHgqd_TeJxSuha8aZ5WpyLcX8/AAAABRSiYsVmY9lMcszCj0OwK4JwmrLohYFe63svzH_hAhU02cjJSRSED42fmAtYwXtWU-achNHTIT-YV_Gl8bg6vUgir3fMHzytE3cr.jpg?r=380',
    '2017-04-21',
    122,
    18,
    'Estados Unidos',
    (SELECT id FROM SAGAS WHERE nombre = 'John Wick')
);
INSERT INTO REPRODUCIBLES (nombre, nombre_original, sinopsis, url_caratula, url_banner, fecha_lanzamiento, duracion_mins, clasificacion_edad, pais_produccion, id_saga)
VALUES (
    'John Wick: Capítulo 3 - Parabellum',
    'John Wick: Chapter 3 - Parabellum',
    'John Wick (Keanu Reeves) regresa a la acción, solo que esta vez con una recompensa de 14 millones de dólares sobre su cabeza y con un ejército de mercenarios intentando darle caza. Tras asesinar a uno de los miembros del gremio de asesinos al que pertenecía, Wick es expulsado de la organización, pasando a convertirse en el centro de atención de multitud de asesinos a sueldo que esperan detrás de cada esquina para tratar de deshacerse de él.',
    'https://pics.filmaffinity.com/John_Wick_Capaitulo_3_Parabellum-953528381-large.jpg',
    'https://1.bp.blogspot.com/-gMUXjCzOn28/XMCXneoViOI/AAAAAAAA6lA/Dmi3yfW4gugvxjcZCkZC6XCBGJrdum56wCLcBGAs/s1600/john_wick_chapter_three_ver16_xlg.jpg',
    '2019-05-17',
    131,
    16,
    'Estados Unidos',
    (SELECT id FROM SAGAS WHERE nombre = 'John Wick')
);
INSERT INTO REPRODUCIBLES (nombre, nombre_original, sinopsis, url_caratula, url_banner, fecha_lanzamiento, duracion_mins, clasificacion_edad, pais_produccion, id_saga)
VALUES (
    'John Wick 4',
    'John Wick: Chapter 4',
    'Tras sobrevivir a un ataque de la Alta Mesa, el consejo clandestino de jefes del crimen de alto nivel, John Wick regresa con sed de venganza. Excomulgado de los bajos fondos y visto por última vez tras recibir un disparo de Winston, el director del Hotel Continental, refugio de asesinos, la cuarta entrega verá a John Wick de vuelta y con ganas de sangre. Con la ayuda del Rey Bowery aparentemente confirmada, ambos unirán sus fuerzas para ejercer sus agravios compartidos con la Alta Mesa. Esta vez, John Wick busca no solo sobrevivir a la embestida del ataque, sino contraatacar de la única manera que saben los asesinos altamente cualificados.',
    'https://www.pantalla90.es/wp-content/uploads/2023/03/vZloFAK7NmvMGKE7VkF5UHaz0I.jpg',
    'https://labutaca.net/wp-content/uploads/2023/05/john-wick-4.jpg',
    '2023-03-24',
    170,
    16,
    'Alemania, Estados Unidos',
    (SELECT id FROM SAGAS WHERE nombre = 'John Wick')
);
INSERT INTO REPRODUCIBLES (nombre, nombre_original, sinopsis, url_caratula, url_banner, fecha_lanzamiento, duracion_mins, clasificacion_edad, pais_produccion, id_saga)
VALUES (
    'Ballerina, del universo de John Wick',
    'Ballerina',
    'Eve Macarro intenta por todos los medios averiguar quién está detrás del asesinato de su padre. En su lucha por conocer la verdad, tendrá que atenerse a las normas de la Alta Mesa y, por supuesto, a las del Hotel Continental, donde descubrirá que existen secretos ocultos sobre su pasado.',
    'https://images.justwatch.com/poster/331692908/s718/ballerina-del-universo-de-john-wick.jpg',
    'https://sm.ign.com/ign_es/news/b/ballerina-/ballerina-exclusive-photos-from-the-john-wick-universe-movie_aks2.jpg',
    '2025-06-06',
    125,
    16,
    'Estados Unidos',
    (SELECT id FROM SAGAS WHERE nombre = 'John Wick')
);
INSERT INTO REPRODUCIBLES (nombre, nombre_original, sinopsis, url_caratula, url_banner, fecha_lanzamiento, duracion_mins, clasificacion_edad, pais_produccion, id_saga)
VALUES (
    'Los Vengadores',
    'The Avengers',
    'En Los Vengadores, el mundo enfrenta una amenaza sin precedentes: Loki, el dios asgardiano del engaño, desata el caos al intentar conquistar la Tierra con un ejército extraterrestre. Para detenerlo, Nick Fury, director de S.H.I.E.L.D., reúne a un grupo de héroes con poderes y personalidades muy diferentes: Iron Man, el genio millonario; Capitán América, el soldado perfecto; Thor, el dios del trueno; Hulk, la fuerza imparable; Viuda Negra, la espía letal; y Ojo de Halcón, el arquero infalible. Obligados a dejar de lado sus diferencias, estos héroes deberán aprender a trabajar en equipo para salvar la humanidad.',
    'https://es.web.img3.acsta.net/pictures/14/03/10/10/35/587504.jpg',
    'https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/media/image/2018/06/mejores-momentos-que-han-dado-peliculas-marvel.jpg?tf=3840x',
    '2012-04-27',
    143,
    7,
    'Estados Unidos',
    (SELECT id FROM SAGAS WHERE nombre = 'Saga del Infinito')
);
INSERT INTO REPRODUCIBLES (nombre, nombre_original, sinopsis, url_caratula, url_banner, fecha_lanzamiento, duracion_mins, clasificacion_edad, pais_produccion, id_saga)
VALUES (
    'Vengadores: La Era de Ultrón',
    'Avengers: Age of Ultron',
    'Cuando Tony Stark intenta reactivar un programa caído en desuso cuyo objetivo es mantener la paz, las cosas empiezan a torcerse y los héroes más poderosos de la Tierra, incluyendo a Iron Man, Capitán América, Thor, El Increíble Hulk, Viuda Negra y Ojo de Halcón, tendrán que afrontar la prueba definitiva cuando el destino del planeta se ponga en juego. Cuando el villano Ultron emerge, le corresponderá a Los Vengadores detener sus terribles planes, que junto a incómodas alianzas llevarán a una inesperada acción que allanará el camino para una épica y única aventura.',
    'https://pics.filmaffinity.com/Vengadores_La_era_de_Ultraon-919656375-large.jpg',
    'https://sm.ign.com/ign_es/screenshot/default/avengers-br_9ysx.jpg',
    '2015-04-29',
    144,
    7,
    'Estados Unidos',
    (SELECT id FROM SAGAS WHERE nombre = 'Saga del Infinito')
);
INSERT INTO REPRODUCIBLES (nombre, nombre_original, sinopsis, url_caratula, url_banner, fecha_lanzamiento, duracion_mins, clasificacion_edad, pais_produccion, id_saga)
VALUES (
    'Vengadores: Infinity War',
    'Avengers: Infinity War',
    'El peligroso Thanos, con la Gema del Poder en sus manos, va en busca del resto de piezas con las que completar las Gemas del Infinito, que le darían un poder imposible de derrotar.  Iron Man, Thor, Hulk y Capitán América, entre otros superhéroes, intentarán evitarlo.',
    'https://pics.filmaffinity.com/Vengadores_Infinity_War-181539353-large.jpg',
    'https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/media/image/2018/04/vengadores-infinity-war_0.jpg?tf=3840x',
    '2018-04-27',
    149,
    12,
    'Estados Unidos',
    (SELECT id FROM SAGAS WHERE nombre = 'Saga del Infinito')
);
INSERT INTO REPRODUCIBLES (nombre, nombre_original, sinopsis, url_caratula, url_banner, fecha_lanzamiento, duracion_mins, clasificacion_edad, pais_produccion, id_saga)
VALUES (
    'Vengadores: Endgame',
    'Avengers: Endgame',
    'Después de los eventos devastadores de "Vengadores: Infinity War", el universo está en ruinas debido a las acciones de Thanos. Con la ayuda de los aliados que quedaron, los Vengadores deberán reunirse una vez más para intentar deshacer sus acciones y restaurar el orden en el universo de una vez por todas, sin importar cuáles sean las consecuencias... Cuarta y última entrega de la saga "Vengadores".',
    'https://lumiere-a.akamaihd.net/v1/images/image_1e5c5703.jpeg?region=0,0,540,810',
    'https://wallpapercave.com/wp/wp8889895.jpg',
    '2019-04-26',
    181,
    7,
    'Estados Unidos',
    (SELECT id FROM SAGAS WHERE nombre = 'Saga del Infinito')
);





-- Indicamos el/los género/s de cada película.
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El contable 2' AND nombre_original = 'The Accountant²'),
        (SELECT id FROM GENEROS WHERE nombre = 'Crimen')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El contable 2' AND nombre_original = 'The Accountant²'),
        (SELECT id FROM GENEROS WHERE nombre = 'Misterio')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El contable 2' AND nombre_original = 'The Accountant²'),
        (SELECT id FROM GENEROS WHERE nombre = 'Suspense')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El contable 2' AND nombre_original = 'The Accountant²'),
        (SELECT id FROM GENEROS WHERE nombre = 'Acción')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El contable 2' AND nombre_original = 'The Accountant²'),
        (SELECT id FROM GENEROS WHERE nombre = 'Aventura')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El contable 2' AND nombre_original = 'The Accountant²'),
        (SELECT id FROM GENEROS WHERE nombre = 'Drama')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El contable 2' AND nombre_original = 'The Accountant²'),
        (SELECT id FROM GENEROS WHERE nombre = 'Thriller')
        );


INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El contable' AND nombre_original = 'The Accountant'),
        (SELECT id FROM GENEROS WHERE nombre = 'Crimen')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El contable' AND nombre_original = 'The Accountant'),
        (SELECT id FROM GENEROS WHERE nombre = 'Misterio')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El contable' AND nombre_original = 'The Accountant'),
        (SELECT id FROM GENEROS WHERE nombre = 'Suspense')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El contable' AND nombre_original = 'The Accountant'),
        (SELECT id FROM GENEROS WHERE nombre = 'Acción')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El contable' AND nombre_original = 'The Accountant'),
        (SELECT id FROM GENEROS WHERE nombre = 'Aventura')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El contable' AND nombre_original = 'The Accountant'),
        (SELECT id FROM GENEROS WHERE nombre = 'Drama')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El contable' AND nombre_original = 'The Accountant'),
        (SELECT id FROM GENEROS WHERE nombre = 'Thriller')
        );


INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Pecadores' AND nombre_original = 'Sinners'),
        (SELECT id FROM GENEROS WHERE nombre = 'Drama')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Pecadores' AND nombre_original = 'Sinners'),
        (SELECT id FROM GENEROS WHERE nombre = 'Terror')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Pecadores' AND nombre_original = 'Sinners'),
        (SELECT id FROM GENEROS WHERE nombre = 'Acción')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Pecadores' AND nombre_original = 'Sinners'),
        (SELECT id FROM GENEROS WHERE nombre = 'Aventura')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Pecadores' AND nombre_original = 'Sinners'),
        (SELECT id FROM GENEROS WHERE nombre = 'Misterio')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Pecadores' AND nombre_original = 'Sinners'),
        (SELECT id FROM GENEROS WHERE nombre = 'Suspense')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Pecadores' AND nombre_original = 'Sinners'),
        (SELECT id FROM GENEROS WHERE nombre = 'Thriller')
        );


INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'La viuda negra' AND nombre_original = 'La viuda negra'),
        (SELECT id FROM GENEROS WHERE nombre = 'Drama')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'La viuda negra' AND nombre_original = 'La viuda negra'),
        (SELECT id FROM GENEROS WHERE nombre = 'Crimen')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'La viuda negra' AND nombre_original = 'La viuda negra'),
        (SELECT id FROM GENEROS WHERE nombre = 'Misterio')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'La viuda negra' AND nombre_original = 'La viuda negra'),
        (SELECT id FROM GENEROS WHERE nombre = 'Suspense')
        );


INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Black Friday' AND nombre_original = 'Thanksgiving'),
        (SELECT id FROM GENEROS WHERE nombre = 'Comedia')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Black Friday' AND nombre_original = 'Thanksgiving'),
        (SELECT id FROM GENEROS WHERE nombre = 'Terror')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Black Friday' AND nombre_original = 'Thanksgiving'),
        (SELECT id FROM GENEROS WHERE nombre = 'Misterio')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Black Friday' AND nombre_original = 'Thanksgiving'),
        (SELECT id FROM GENEROS WHERE nombre = 'Suspense')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Black Friday' AND nombre_original = 'Thanksgiving'),
        (SELECT id FROM GENEROS WHERE nombre = 'Thriller')
        );


INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick (Otro día para matar)' AND nombre_original = 'John Wick'),
        (SELECT id FROM GENEROS WHERE nombre = 'Crimen')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick (Otro día para matar)' AND nombre_original = 'John Wick'),
        (SELECT id FROM GENEROS WHERE nombre = 'Acción')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick (Otro día para matar)' AND nombre_original = 'John Wick'),
        (SELECT id FROM GENEROS WHERE nombre = 'Aventura')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick (Otro día para matar)' AND nombre_original = 'John Wick'),
        (SELECT id FROM GENEROS WHERE nombre = 'Misterio')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick (Otro día para matar)' AND nombre_original = 'John Wick'),
        (SELECT id FROM GENEROS WHERE nombre = 'Suspense')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick (Otro día para matar)' AND nombre_original = 'John Wick'),
        (SELECT id FROM GENEROS WHERE nombre = 'Thriller')
        );


INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick: Pacto de sangre' AND nombre_original = 'John Wick: Chapter 2'),
        (SELECT id FROM GENEROS WHERE nombre = 'Crimen')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick: Pacto de sangre' AND nombre_original = 'John Wick: Chapter 2'),
        (SELECT id FROM GENEROS WHERE nombre = 'Acción')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick: Pacto de sangre' AND nombre_original = 'John Wick: Chapter 2'),
        (SELECT id FROM GENEROS WHERE nombre = 'Aventura')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick: Pacto de sangre' AND nombre_original = 'John Wick: Chapter 2'),
        (SELECT id FROM GENEROS WHERE nombre = 'Misterio')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick: Pacto de sangre' AND nombre_original = 'John Wick: Chapter 2'),
        (SELECT id FROM GENEROS WHERE nombre = 'Suspense')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick: Pacto de sangre' AND nombre_original = 'John Wick: Chapter 2'),
        (SELECT id FROM GENEROS WHERE nombre = 'Thriller')
        );


INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick: Capítulo 3 - Parabellum' AND nombre_original = 'John Wick: Chapter 3 - Parabellum'),
        (SELECT id FROM GENEROS WHERE nombre = 'Drama')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick: Capítulo 3 - Parabellum' AND nombre_original = 'John Wick: Chapter 3 - Parabellum'),
        (SELECT id FROM GENEROS WHERE nombre = 'Crimen')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick: Capítulo 3 - Parabellum' AND nombre_original = 'John Wick: Chapter 3 - Parabellum'),
        (SELECT id FROM GENEROS WHERE nombre = 'Acción')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick: Capítulo 3 - Parabellum' AND nombre_original = 'John Wick: Chapter 3 - Parabellum'),
        (SELECT id FROM GENEROS WHERE nombre = 'Aventura')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick: Capítulo 3 - Parabellum' AND nombre_original = 'John Wick: Chapter 3 - Parabellum'),
        (SELECT id FROM GENEROS WHERE nombre = 'Misterio')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick: Capítulo 3 - Parabellum' AND nombre_original = 'John Wick: Chapter 3 - Parabellum'),
        (SELECT id FROM GENEROS WHERE nombre = 'Suspense')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick: Capítulo 3 - Parabellum' AND nombre_original = 'John Wick: Chapter 3 - Parabellum'),
        (SELECT id FROM GENEROS WHERE nombre = 'Thriller')
        );


INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick 4' AND nombre_original = 'John Wick: Chapter 4'),
        (SELECT id FROM GENEROS WHERE nombre = 'Crimen')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick 4' AND nombre_original = 'John Wick: Chapter 4'),
        (SELECT id FROM GENEROS WHERE nombre = 'Acción')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick 4' AND nombre_original = 'John Wick: Chapter 4'),
        (SELECT id FROM GENEROS WHERE nombre = 'Aventura')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick 4' AND nombre_original = 'John Wick: Chapter 4'),
        (SELECT id FROM GENEROS WHERE nombre = 'Misterio')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick 4' AND nombre_original = 'John Wick: Chapter 4'),
        (SELECT id FROM GENEROS WHERE nombre = 'Suspense')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick 4' AND nombre_original = 'John Wick: Chapter 4'),
        (SELECT id FROM GENEROS WHERE nombre = 'Thriller')
        );


INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Ballerina, del universo de John Wick' AND nombre_original = 'Ballerina'),
        (SELECT id FROM GENEROS WHERE nombre = 'Crimen')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Ballerina, del universo de John Wick' AND nombre_original = 'Ballerina'),
        (SELECT id FROM GENEROS WHERE nombre = 'Acción')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Ballerina, del universo de John Wick' AND nombre_original = 'Ballerina'),
        (SELECT id FROM GENEROS WHERE nombre = 'Aventura')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Ballerina, del universo de John Wick' AND nombre_original = 'Ballerina'),
        (SELECT id FROM GENEROS WHERE nombre = 'Misterio')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Ballerina, del universo de John Wick' AND nombre_original = 'Ballerina'),
        (SELECT id FROM GENEROS WHERE nombre = 'Suspense')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Ballerina, del universo de John Wick' AND nombre_original = 'Ballerina'),
        (SELECT id FROM GENEROS WHERE nombre = 'Thriller')
        );


INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Los Vengadores' AND nombre_original = 'The Avengers'),
        (SELECT id FROM GENEROS WHERE nombre = 'Ciencia ficción')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Los Vengadores' AND nombre_original = 'The Avengers'),
        (SELECT id FROM GENEROS WHERE nombre = 'Acción')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Los Vengadores' AND nombre_original = 'The Avengers'),
        (SELECT id FROM GENEROS WHERE nombre = 'Aventura')
        );

INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: La Era de Ultrón' AND nombre_original = 'Avengers: Age of Ultron'),
        (SELECT id FROM GENEROS WHERE nombre = 'Ciencia ficción')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: La Era de Ultrón' AND nombre_original = 'Avengers: Age of Ultron'),
        (SELECT id FROM GENEROS WHERE nombre = 'Acción')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: La Era de Ultrón' AND nombre_original = 'Avengers: Age of Ultron'),
        (SELECT id FROM GENEROS WHERE nombre = 'Aventura')
        );


INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Infinity War' AND nombre_original = 'Avengers: Infinity War'),
        (SELECT id FROM GENEROS WHERE nombre = 'Ciencia ficción')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Infinity War' AND nombre_original = 'Avengers: Infinity War'),
        (SELECT id FROM GENEROS WHERE nombre = 'Acción')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Infinity War' AND nombre_original = 'Avengers: Infinity War'),
        (SELECT id FROM GENEROS WHERE nombre = 'Aventura')
        );

INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Endgame' AND nombre_original = 'Avengers: Endgame'),
        (SELECT id FROM GENEROS WHERE nombre = 'Ciencia ficción')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Endgame' AND nombre_original = 'Avengers: Endgame'),
        (SELECT id FROM GENEROS WHERE nombre = 'Acción')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Endgame' AND nombre_original = 'Avengers: Endgame'),
        (SELECT id FROM GENEROS WHERE nombre = 'Aventura')
        );
INSERT INTO REPRODUCIBLES_GENEROS (id_reproducible, id_genero)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Endgame' AND nombre_original = 'Avengers: Endgame'),
        (SELECT id FROM GENEROS WHERE nombre = 'Drama')
        );





-- Indicamos en qué plataformas se encuentran las películas.
INSERT INTO REPRODUCIBLES_PLATAFORMAS (id_reproducible, id_plataforma)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El contable 2' AND nombre_original = 'The Accountant²'),
        (SELECT id FROM PLATAFORMAS WHERE nombre = 'Prime video')
        );
INSERT INTO REPRODUCIBLES_PLATAFORMAS (id_reproducible, id_plataforma)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El contable 2' AND nombre_original = 'The Accountant²'),
        (SELECT id FROM PLATAFORMAS WHERE nombre = 'Odeon')
        );
INSERT INTO REPRODUCIBLES_PLATAFORMAS (id_reproducible, id_plataforma)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El contable 2' AND nombre_original = 'The Accountant²'),
        (SELECT id FROM PLATAFORMAS WHERE nombre = 'Kinépolis')
        );


INSERT INTO REPRODUCIBLES_PLATAFORMAS (id_reproducible, id_plataforma)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El contable' AND nombre_original = 'The Accountant'),
        (SELECT id FROM PLATAFORMAS WHERE nombre = 'Netflix')
        );
INSERT INTO REPRODUCIBLES_PLATAFORMAS (id_reproducible, id_plataforma)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El contable' AND nombre_original = 'The Accountant'),
        (SELECT id FROM PLATAFORMAS WHERE nombre = 'Prime video')
        );
INSERT INTO REPRODUCIBLES_PLATAFORMAS (id_reproducible, id_plataforma)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El contable' AND nombre_original = 'The Accountant'),
        (SELECT id FROM PLATAFORMAS WHERE nombre = 'Movistar+')
        );
INSERT INTO REPRODUCIBLES_PLATAFORMAS (id_reproducible, id_plataforma)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El contable' AND nombre_original = 'The Accountant'),
        (SELECT id FROM PLATAFORMAS WHERE nombre = 'HBO')
        );


INSERT INTO REPRODUCIBLES_PLATAFORMAS (id_reproducible, id_plataforma)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Pecadores' AND nombre_original = 'Sinners'),
        (SELECT id FROM PLATAFORMAS WHERE nombre = 'Cinesa')
        );
INSERT INTO REPRODUCIBLES_PLATAFORMAS (id_reproducible, id_plataforma)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Pecadores' AND nombre_original = 'Sinners'),
        (SELECT id FROM PLATAFORMAS WHERE nombre = 'Yelmo')
        );
INSERT INTO REPRODUCIBLES_PLATAFORMAS (id_reproducible, id_plataforma)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Pecadores' AND nombre_original = 'Sinners'),
        (SELECT id FROM PLATAFORMAS WHERE nombre = 'Kinépolis')
        );


INSERT INTO REPRODUCIBLES_PLATAFORMAS (id_reproducible, id_plataforma)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'La viuda negra' AND nombre_original = 'La viuda negra'),
        (SELECT id FROM PLATAFORMAS WHERE nombre = 'Netflix')
        );


INSERT INTO REPRODUCIBLES_PLATAFORMAS (id_reproducible, id_plataforma)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Black Friday' AND nombre_original = 'Thanksgiving'),
        (SELECT id FROM PLATAFORMAS WHERE nombre = 'Netflix')
        );


INSERT INTO REPRODUCIBLES_PLATAFORMAS (id_reproducible, id_plataforma)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick: Pacto de sangre' AND nombre_original = 'John Wick: Chapter 2'),
        (SELECT id FROM PLATAFORMAS WHERE nombre = 'Prime video')
        );


INSERT INTO REPRODUCIBLES_PLATAFORMAS (id_reproducible, id_plataforma)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick: Capítulo 3 - Parabellum' AND nombre_original = 'John Wick: Chapter 3 - Parabellum'),
        (SELECT id FROM PLATAFORMAS WHERE nombre = 'Netflix')
        );
INSERT INTO REPRODUCIBLES_PLATAFORMAS (id_reproducible, id_plataforma)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick: Capítulo 3 - Parabellum' AND nombre_original = 'John Wick: Chapter 3 - Parabellum'),
        (SELECT id FROM PLATAFORMAS WHERE nombre = 'Prime video')
        );


INSERT INTO REPRODUCIBLES_PLATAFORMAS (id_reproducible, id_plataforma)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick 4' AND nombre_original = 'John Wick: Chapter 4'),
        (SELECT id FROM PLATAFORMAS WHERE nombre = 'Prime video')
        );


INSERT INTO REPRODUCIBLES_PLATAFORMAS (id_reproducible, id_plataforma)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Ballerina, del universo de John Wick' AND nombre_original = 'Ballerina'),
        (SELECT id FROM PLATAFORMAS WHERE nombre = 'Odeon')
        );
INSERT INTO REPRODUCIBLES_PLATAFORMAS (id_reproducible, id_plataforma)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Ballerina, del universo de John Wick' AND nombre_original = 'Ballerina'),
        (SELECT id FROM PLATAFORMAS WHERE nombre = 'Cinesa')
        );
INSERT INTO REPRODUCIBLES_PLATAFORMAS (id_reproducible, id_plataforma)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Ballerina, del universo de John Wick' AND nombre_original = 'Ballerina'),
        (SELECT id FROM PLATAFORMAS WHERE nombre = 'Yelmo')
        );


INSERT INTO REPRODUCIBLES_PLATAFORMAS (id_reproducible, id_plataforma)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Los Vengadores' AND nombre_original = 'The Avengers'),
        (SELECT id FROM PLATAFORMAS WHERE nombre = 'Disney+')
        );


INSERT INTO REPRODUCIBLES_PLATAFORMAS (id_reproducible, id_plataforma)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: La Era de Ultrón' AND nombre_original = 'Avengers: Age of Ultron'),
        (SELECT id FROM PLATAFORMAS WHERE nombre = 'Disney+')
        );


INSERT INTO REPRODUCIBLES_PLATAFORMAS (id_reproducible, id_plataforma)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Infinity War' AND nombre_original = 'Avengers: Infinity War'),
        (SELECT id FROM PLATAFORMAS WHERE nombre = 'Disney+')
        );


INSERT INTO REPRODUCIBLES_PLATAFORMAS (id_reproducible, id_plataforma)
VALUES (
        (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Endgame' AND nombre_original = 'Avengers: Endgame'),
        (SELECT id FROM PLATAFORMAS WHERE nombre = 'Disney+')
        );





-- Ahora añadimos los tráilers de cada película.
INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'El contable 2' AND nombre_original = 'The Accountant²'), 'https://www.youtube.com/watch?v=i2R_Ac7bBL4');
INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'El contable 2' AND nombre_original = 'The Accountant²'), 'https://www.youtube.com/watch?v=Zh66xyiMZTY');
INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'El contable 2' AND nombre_original = 'The Accountant²'), 'https://www.youtube.com/watch?v=bXphNO_FGqE');
INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'El contable 2' AND nombre_original = 'The Accountant²'), 'https://www.youtube.com/watch?v=3_fHmNIa0i0');


INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'El contable' AND nombre_original = 'The Accountant'), 'https://www.youtube.com/watch?v=wiEgpPwDHe8');
INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'El contable' AND nombre_original = 'The Accountant'), 'https://www.youtube.com/watch?v=LPjKK1MH_GI');


INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'Pecadores' AND nombre_original = 'Sinners'), 'https://www.youtube.com/watch?v=wAxwRnRvGXc');
INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'Pecadores' AND nombre_original = 'Sinners'), 'https://www.youtube.com/watch?v=XufPTI4PDLg');


INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'La viuda negra' AND nombre_original = 'La viuda negra'), 'https://www.youtube.com/watch?v=qRNBh78oYDo');
INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'La viuda negra' AND nombre_original = 'La viuda negra'), 'https://www.youtube.com/watch?v=Vr8tTYgA4to');


INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'Black Friday' AND nombre_original = 'Thanksgiving'), 'https://www.youtube.com/watch?v=mQxbZubEv3A');
INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'Black Friday' AND nombre_original = 'Thanksgiving'), 'https://www.youtube.com/watch?v=xiN2Y8SZfdU');


INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick (Otro día para matar)' AND nombre_original = 'John Wick'), 'https://www.youtube.com/watch?v=WoZreWeS0YA');
INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick (Otro día para matar)' AND nombre_original = 'John Wick'), 'https://www.youtube.com/watch?v=2AUmvWm5ZDQ');
INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick (Otro día para matar)' AND nombre_original = 'John Wick'), 'https://www.youtube.com/watch?v=TWRxFTiNTyU');
INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick (Otro día para matar)' AND nombre_original = 'John Wick'), 'https://www.youtube.com/watch?v=UNIv8nzUryo');


INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick: Pacto de sangre' AND nombre_original = 'John Wick: Chapter 2'), 'https://www.youtube.com/watch?v=jbeRIvRRxdE');
INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick: Pacto de sangre' AND nombre_original = 'John Wick: Chapter 2'), 'https://www.youtube.com/watch?v=Q21hVAUPP10');
INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick: Pacto de sangre' AND nombre_original = 'John Wick: Chapter 2'), 'https://www.youtube.com/watch?v=bvGHvG_Ughw');


INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick: Capítulo 3 - Parabellum' AND nombre_original = 'John Wick: Chapter 3 - Parabellum'), 'https://www.youtube.com/watch?v=UtWl7Lz6A10');
INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick: Capítulo 3 - Parabellum' AND nombre_original = 'John Wick: Chapter 3 - Parabellum'), 'https://www.youtube.com/watch?v=OkcVKcvs-kU');
INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick: Capítulo 3 - Parabellum' AND nombre_original = 'John Wick: Chapter 3 - Parabellum'), 'https://www.youtube.com/watch?v=rPCzao7H6n8');


INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick: Capítulo 3 - Parabellum' AND nombre_original = 'John Wick: Chapter 3 - Parabellum'), 'https://www.youtube.com/watch?v=L0anWmmd8TI');
INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick: Capítulo 3 - Parabellum' AND nombre_original = 'John Wick: Chapter 3 - Parabellum'), 'https://www.youtube.com/watch?v=OkC_YaSFBHA');
INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick: Capítulo 3 - Parabellum' AND nombre_original = 'John Wick: Chapter 3 - Parabellum'), 'https://www.youtube.com/watch?v=K05g4KsRSHc');


INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'Ballerina, del universo de John Wick' AND nombre_original = 'Ballerina'), 'https://www.youtube.com/watch?v=iS6CdinpJew');
INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'Ballerina, del universo de John Wick' AND nombre_original = 'Ballerina'), 'https://www.youtube.com/watch?v=JQx9-bYBH2k');
INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'Ballerina, del universo de John Wick' AND nombre_original = 'Ballerina'), 'https://www.youtube.com/watch?v=yNN2PoilSp4');
INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'Ballerina, del universo de John Wick' AND nombre_original = 'Ballerina'), 'https://www.youtube.com/watch?v=M8GPo595v1Y');


INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'Los Vengadores' AND nombre_original = 'The Avengers'), 'https://www.youtube.com/watch?v=HQIiYqOVTWo');
INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'Los Vengadores' AND nombre_original = 'The Avengers'), 'https://www.youtube.com/watch?v=4DHupGEdQkc');
INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'Los Vengadores' AND nombre_original = 'The Avengers'), 'https://www.youtube.com/watch?v=yNXfOOL8824');


INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: La Era de Ultrón' AND nombre_original = 'Avengers: Age of Ultron'), 'https://www.youtube.com/watch?v=kS94gCsbtzs');
INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: La Era de Ultrón' AND nombre_original = 'Avengers: Age of Ultron'), 'https://www.youtube.com/watch?v=NDsjuhAMDjI');
INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: La Era de Ultrón' AND nombre_original = 'Avengers: Age of Ultron'), 'https://www.youtube.com/watch?v=K7Wx1xZjx98');
INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: La Era de Ultrón' AND nombre_original = 'Avengers: Age of Ultron'), 'https://www.youtube.com/watch?v=AHHmdNzRyu4');
INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: La Era de Ultrón' AND nombre_original = 'Avengers: Age of Ultron'), 'https://www.youtube.com/watch?v=JQWGle-bKmE');


INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Infinity War' AND nombre_original = 'Avengers: Infinity War'), 'https://www.youtube.com/watch?v=-f5PwE_Q8Fs');
INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Infinity War' AND nombre_original = 'Avengers: Infinity War'), 'https://www.youtube.com/watch?v=wJbudwIF0cE');
INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Infinity War' AND nombre_original = 'Avengers: Infinity War'), 'https://www.youtube.com/watch?v=6ZfuNTqbHE8');
INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Infinity War' AND nombre_original = 'Avengers: Infinity War'), 'https://www.youtube.com/watch?v=JrOK9cwNgSM');


INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Endgame' AND nombre_original = 'Avengers: Endgame'), 'https://www.youtube.com/watch?v=UQ3bqYKnyhM');
INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Endgame' AND nombre_original = 'Avengers: Endgame'), 'https://www.youtube.com/watch?v=svLSGZkTzC0');
INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Endgame' AND nombre_original = 'Avengers: Endgame'), 'https://www.youtube.com/watch?v=KCSNFZKbhZE');
INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Endgame' AND nombre_original = 'Avengers: Endgame'), 'https://www.youtube.com/watch?v=KdL8ucqi1F8');
INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Endgame' AND nombre_original = 'Avengers: Endgame'), 'https://www.youtube.com/watch?v=0jNvJU52LvU');
INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Endgame' AND nombre_original = 'Avengers: Endgame'), 'https://www.youtube.com/watch?v=G0-e-mXEHn4');
INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Endgame' AND nombre_original = 'Avengers: Endgame'), 'https://www.youtube.com/watch?v=hA6hldpSTF8');
INSERT INTO TRAILERS_REPRODUCIBLES (id_reproducible, url_trailer) VALUES ((SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Endgame' AND nombre_original = 'Avengers: Endgame'), 'https://www.youtube.com/watch?v=TcMBFSGVi1c');





-- Añadimos a la base de datos personas de la industria.
-- Añadiré directores y actores de las películas que he añadido a la base de datos.
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Gavin O\'Connor', 'https://variety.com/wp-content/uploads/2019/02/gavin-oconnor-fast.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Ben Affleck', 'https://ntvb.tmsimg.com/assets/assets/7530_v9_bc.jpg?w=360&h=480');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Cynthia Addai-Robinson', 'https://hauteliving.com/wp-content/uploads/2015/04/2015_03_13_Cynthia_Addai-Robinson_0221-e1429797464748.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('J.K. Simmons', 'https://es.web.img2.acsta.net/c_310_420/pictures/16/01/05/15/02/175725.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Alison Wright', 'https://strasberg.edu/wp-content/uploads/2019/07/AlisonWright.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Daniella Pineda', 'https://celebmafia.com/wp-content/uploads/2024/10/daniella-pineda-at-34th-ema-awards-gala-in-la-4.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Robert Morgan', 'https://sitgesfilmfestival.com/sites/default/files/styles/limit_height_1080_width_1920/public/directors/3ba7caa9-b208-4e1d-bef0-736891b04a48.jpg?itok=kjVuh1s1');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Grant Harvey', 'https://images.fandango.com/ImageRenderer/300/0/redesign/static/img/default_poster.png/0/images/masterrepository/performer%20images/1024235/GrantHarvey-2022_r.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Andrew Howard', 'https://images.mubicdn.net/images/cast_member/37005/cache-216817-1492518385/image-w856.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Lombardo Boyar', 'https://is1-ssl.mzstatic.com/image/thumb/i-4QE7Yi4a99gS4LjtUAUw/1200x675mf.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Michael Tourek', 'https://resizing.flixster.com/Ul1UUbik5VjXRSgE_9LhjhwcBq0=/fit-in/705x460/v2/https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/730630_v9_ba.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Fernando Chien', 'https://www.weaudition.com/upload/userprofiles/thumbnail/wr_170065.jpeg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Abner Lozano', 'https://www.heymantalent.com/media/photos/xb07k2445tdlwq.jpg?d=243204_20240207112445');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Presley Alexander', 'https://i0.wp.com/tresamagazine.com/wp-content/uploads/2025/05/IMG_1798-1-e1748311041208.jpeg?fit=1200%2C1200&ssl=1');


INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Anna Kendrick', 'https://static.wikia.nocookie.net/twilightserie/images/a/a6/AnnaKendrick.jpg/revision/latest?cb=20110830104646&path-prefix=de');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('John Lithgow', 'https://external-preview.redd.it/john-lithgow-who-has-survived-cancer-3-times-hopes-for-a-v0-lz0o2UMAKMCDArwP1UjKJbrSYbBeVfBKHQtERi0wMsA.jpg?width=640&crop=smart&auto=webp&s=df481c8e16aa4dd792bbb74f763b7ca58b8ca5ec');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Jeffrey Tambor', 'https://ntvb.tmsimg.com/assets/assets/30856_v9_bb.jpg?w=360&h=480');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Jean Smart', 'https://ntvb.tmsimg.com/assets/assets/30856_v9_bb.jpg?w=360&h=480');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Andy Umberger', 'https://sbvtalent.s3.amazonaws.com/uploads/talent/image/364/main_Umberger__Andy.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Jason Davis', 'https://www.ecartelera.com/images/noticias/fotos/59700/59710/1.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Robert C. Treveiler', 'https://resizing.flixster.com/uezo0_jJhf_M7_cP5-HTrHL_rjY=/218x280/v2/https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/432834_v9_ba.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Mary Kraft', 'https://ws.engr.illinois.edu/directory/viewphoto.aspx?photo=6538&s=300');


INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Ryan Coogler', 'https://variety.com/wp-content/uploads/2018/05/ryan-coogler-cannes.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Hailee Steinfeld', 'https://media.gq.com.mx/photos/61b4e875d72aa58be5f9a180/16:9/w_2560%2Cc_limit/GettyImages-911502822%2520(1).jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Miles Caton', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQbmT6c20JAxga047RSOHNBgaRL3HT6VVPLA&s');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Jack O\'Connell', 'https://resizing.flixster.com/vg-Ic6TkZKRXIWlTNq0OpKj2New=/fit-in/705x460/v2/https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/229265_v9_bc.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Wunmi Mosaku', 'https://hellobeautiful.com/wp-content/uploads/sites/50/2025/03/1741826591312.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Jayme Lawson', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSm_SMQdFDgZK_tPZz1KupMHa18QzbXaLWfWA&s');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Omar Benson Miller', 'https://ntvb.tmsimg.com/assets/assets/264833_v9_bb.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Delroy Lindo', 'https://m.media-amazon.com/images/I/617Wi0-rF4L._AC_UF894,1000_QL80_.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Li Jun Li', 'https://mediaproxy.tvtropes.org/width/1200/https://static.tvtropes.org/pmwiki/pub/images/li_jun_li.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Thomas Pang', 'https://www.lasalle.edu.sg/sites/default/files/inline-images/Thomas-Pang_0.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Lola Kirke', 'https://mediaproxy.tvtropes.org/width/1200/https://static.tvtropes.org/pmwiki/pub/images/l_kirke.jpeg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Peter Dreimanis', 'https://pics.filmaffinity.com/217620453661871-nm_200.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Buddy Guy', 'https://ciudadcriolla.com/wp-content/uploads/2021/07/buddy-guy-5.png');


INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Carlos Sedes', 'https://pics.filmaffinity.com/164590393221317-nm_200.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Ivana Baquero', 'https://www.elblogdecineespanol.com/wp-content/ivana-baquero.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Tristán Ulloa', 'https://ntvb.tmsimg.com/assets/assets/164246_v9_bb.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Carmen Machi', 'https://album.mediaset.es/eimg/2024/03/12/carmen-machi_2b26.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Pepe Ocio', 'https://es.web.img3.acsta.net/pictures/17/05/12/12/36/480422.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Joel Sánchez', 'https://es.web.img3.acsta.net/pictures/22/09/28/19/42/0889268.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Álex Gadea', 'https://images.ecestaticos.com/imxrnJXmdZWPOppfgFuw4Jl-vL0=/1x3:644x362/1440x810/filters:fill(white):format(jpg)/f.elconfidencial.com%2Foriginal%2F5d4%2Feed%2F067%2F5d4eed0670a5fa63c16e9526d21a1576.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Pablo Molinero', 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjDe9QA91rxc8toU7bf2BABBpqHA5Cg-Q8Ut-zaGEJwdKVjU7ardxrvV4rfp4Sco6Kd3uxedr2vW8rJ-cFCYuxIUG-0beI8uX5Vr-27IPHg9qXL2cMKQrfgpWwJJr9YcUHc3AjVemkgblc/s1600/pablo_molinero_2018_+%25287%2529.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Ramón Ródenas', 'https://morcillogonzalez.com/wp-content/uploads/1987/09/RAMON-RODENAS-3-2.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Tania Fortea', 'https://1132413500.rsc.cdn77.org/w500/82lpu56szh5cVm85PWRqogBYVgv.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Inma Sancho', 'https://fotografias.antena3.com/clipping/cmsimages01/2013/11/12/01E72F02-4D66-4704-8FBD-460CF53D461B/98.jpg?crop=3280,1845,x0,y450&width=1900&height=1069&optimize=low&format=webply');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Marta Belenguer', 'https://actores-aleteia.com/MartaBelenguer25a.jpg');


INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Eli Roth', 'https://es.web.img2.acsta.net/pictures/14/10/14/16/21/369193.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Patrick Dempsey', 'https://es.web.img2.acsta.net/c_310_420/medias/nmedia/18/36/17/64/19591868.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Nell Verlaque', 'https://pics.filmaffinity.com/252202839696154-nm_200.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Addison Rae', 'https://media.vogue.es/photos/5e884224ca095800085a1079/2:3/w_2560%2Cc_limit/GettyImages-1205386591.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Ty Olsson', 'https://ntvb.tmsimg.com/assets/assets/202026_v9_bb.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Gina Gershon', 'https://static.filmin.es/images/es/actor/1649/3/card_4_3.webp');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Lynne Griffin', 'https://www.rostercon.com/wp-content/uploads/2019/03/Guest_Lynn-Griffin_1-scaled.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Karen Cliche', 'https://es.web.img3.acsta.net/c_310_420/medias/nmedia/18/64/65/55/19242768.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Rick Hoffman', 'https://ntvb.tmsimg.com/assets/assets/185219_v9_ba.jpg?w=360&h=480');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Derek McGrath', 'https://resizing.flixster.com/enG5iJ4NbLgqtdy5-5K51OHz74Y=/fit-in/352x330/v2/https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/73133_v9_ba.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Katherine Trowell', 'https://images.mubicdn.net/images/cast_member/198736/cache-990738-1723611904/image-w856.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Jalen Thomas Brooks', 'https://es.web.img3.acsta.net/c_310_420/pictures/23/08/04/19/17/1007328.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Mika Amonsen', 'https://images.plex.tv/photo?size=large-1920&scale=1&url=https%3A%2F%2Fmetadata-static.plex.tv%2F8%2Fpeople%2F8c4253d8084db09e4e6d7834dda8a758.jpg');


INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Chad Stahelski', 'https://live.screendollars.com/wp-content/uploads/2021/10/Chad-Stahelski-scaled.webp');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Keanu Reeves', 'https://es.web.img3.acsta.net/pictures/17/02/06/17/01/343859.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Michael Nyqvist', 'https://es.web.img3.acsta.net/pictures/17/06/28/08/35/554186.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Alfie Allen', 'https://hips.hearstapps.com/es.h-cdn.co/fotoes/images/noticias-cine/alfie-allen-the-predator/129079171-1-esl-ES/Alfie-Allen-Juego-de-Tronos-se-une-al-reparto-de-The-Predator.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Willem Dafoe', 'https://pics.filmaffinity.com/092299949641122-nm_200.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Dean Winters', 'https://ntvb.tmsimg.com/assets/assets/167688_v9_bc.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Adrianne Palicki', 'https://m.media-amazon.com/images/I/61IbRmx+FOL._AC_UF894,1000_QL80_.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Omer Barnea', 'https://es.web.img3.acsta.net/c_300_300/pictures/14/11/28/00/11/458014.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Toby Leonard Moore', 'https://pics.filmaffinity.com/017118324750541-nm_200.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Daniel Bernhardt', 'https://es.web.img3.acsta.net/c_310_420/pictures/14/11/28/00/31/175202.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Bridget Moynahan', 'https://es.web.img3.acsta.net/c_310_420/medias/nmedia/18/35/33/21/19779985.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('John Leguizamo', 'https://resizing.flixster.com/bBeu9xkd5NJk55tNcV6_hWHkCe0=/fit-in/705x460/v2/https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/33104_v9_bd.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Ian McShane', 'https://es.web.img2.acsta.net/pictures/16/02/17/16/41/160796.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Lance Reddick', 'https://ntvb.tmsimg.com/assets/assets/158649_v9_bc.jpg?w=360&h=480');


INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Common', 'https://variety.com/wp-content/uploads/2015/10/common-john-wick-2.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Riccardo Scamarcio', 'https://es.web.img3.acsta.net/pictures/16/05/19/15/39/557678.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Ruby Rose', 'https://es.web.img2.acsta.net/pictures/18/08/07/15/11/2562335.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Franco Nero', 'https://images.mubicdn.net/images/cast_member/22291/cache-338-1658083179/image-w856.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Claudia Gerini', 'https://pics.filmaffinity.com/019340882526071-nm_200.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Wass Stevens', 'https://resizing.flixster.com/2egBhdsd4cTxFaRA4S-o8b5FfPw=/fit-in/705x460/v2/https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/450249_v9_bb.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Peter Serafinowicz', 'https://www.earwolf.com/wp-content/uploads/2013/11/7653.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Luca Mosca', 'https://resizing.flixster.com/QQjGNVk4iM707nZ3lh5REcVOvMk=/fit-in/705x460/v2/https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/458233_v9_aa.jpg');


INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Halle Berry', 'https://fotografias.antena3.com/clipping/cmsimages02/2020/11/26/3742B99D-25EE-4A7F-8F77-057744F02399/98.jpg?crop=2797,1574,x0,y273&width=1900&height=1069&optimize=high&format=webply');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Mark Dacascos', 'https://pics.filmaffinity.com/219511453173100-nm_200.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Asia Kate Dillon', 'https://i.pinimg.com/564x/e3/72/ae/e372aed1719ed5ac4fdf4367351abdc1.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Anjelica Huston', 'https://media.vogue.es/photos/5f6466d3f2fce91ce567f16f/master/w_1600%2Cc_limit/_MG_2376_112031_RT1_v3_QC_300.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Saïd Taghmaoui', 'https://es.web.img2.acsta.net/pictures/16/03/29/15/03/374620.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Jerome Flynn', 'https://ntvb.tmsimg.com/assets/assets/105463_v9_bb.jpg');


INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Donnie Yen', 'https://ntvb.tmsimg.com/assets/assets/72374_v9_bc.jpg?w=360&h=480');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Bill Skarsgård', 'https://ntvb.tmsimg.com/assets/assets/596590_v9_bc.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Clancy Brown', 'https://www.shutterstock.com/image-photo/los-angeles-oct-10-clancy-600nw-737867440.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Hiroyuki Sanada', 'https://images.mubicdn.net/images/cast_member/22300/cache-626733-1609584894/image-w856.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Rina Sawayama', 'https://assets-img.primaverasound.com/1400x0/psweb/qihcasz9aebv78atpvg7_1663233043139.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Scott Adkins', 'https://deadline.com/wp-content/uploads/2016/11/rexfeatures_6727118u.jpg');


INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Len Wiseman', 'https://images.mubicdn.net/images/cast_member/54113/cache-73764-1366368535/image-w856.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Ana de Armas', 'https://media.revistavanityfair.es/photos/60e853895be4efc0659fa6d7/master/w_3940%2Cc_limit/48049.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Norman Reedus', 'https://fr.web.img6.acsta.net/pictures/19/09/25/09/52/1052084.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Catalina Sandino Moreno', 'https://ntvb.tmsimg.com/assets/assets/306261_v9_bc.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Gabriel Byrne', 'https://lannan.imgix.net/images/people/gabriel-byrne/Gabriel-Byrne.jpg?q=40&w=1200&auto=format&fit=crop&h=1798');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Sharon Duncan-Brewster', 'https://www.shutterstock.com/editorial/image-editorial/MbTeIa28NbDdgazfODU0MDQ=/sharon-duncan-brewster-440nw-12542696cd.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Robert Maaser', 'https://imgproxy.filmmakers.eu/U6ur_W2-nrb4XaBer9dyYM6WX7Y8IGNJRXnh6e99fnk/rt:fit/w:3840/h:2160/czM6Ly9maWxtbWFr/ZXJzLWV1LXdlc3Qt/MS9wcm9kdWN0aW9u/L25mczQvbWVkaWEv/dHJfbWVkaWFfZGF0/YS8wMC8xOC8xOTYx/ODAw.jpg');


INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Joss Whedon', 'https://assets-prd.ignimgs.com/2022/01/17/whedon-1642446821023.png');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Robert Downey Jr.', 'https://hips.hearstapps.com/hmg-prod/images/robert-downey-jr-iron-man-casting-1563435293.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Chris Evans', 'https://hips.hearstapps.com/hmg-prod/images/chris-evans-gettyimages-1138769185.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Mark Ruffalo', 'https://es.web.img3.acsta.net/c_310_420/pictures/15/08/12/12/29/266164.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Chris Hemsworth', 'https://images.mubicdn.net/images/cast_member/24207/cache-62264-1615052248/image-w856.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Scarlett Johansson', 'https://media.gq.com.mx/photos/5e220ec2ffa8c7000803441e/1:1/w_2071,h_2071,c_limit/40-datos-curiosos-para-descubrir-a-scarlett-johansson.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Jeremy Renner', 'https://img.asmedia.epimg.net/resizer/v2/6DBLCS42TRHZBMITEDGMW7TFBY.webp?auth=c09756a8d098cbc86d9ca972c535d5fed5f0b758560f68946e773680407b6e71&width=1472&height=1104&smart=true');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Tom Hiddleston', 'https://es.web.img3.acsta.net/c_310_420/pictures/15/08/12/17/13/056516.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Clark Gregg', 'https://www.famousbirthdays.com/headshots/clark-gregg-3.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Cobie Smulders', 'https://fotografias.larazon.es/clipping/cmsimages01/2019/08/14/CD508F11-BF06-49A0-94A6-5FF19CDE458F/98.jpg?crop=1031,580,x0,y107&width=1900&height=1069&optimize=low&format=webply');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Samuel L. Jackson', 'https://es.web.img2.acsta.net/pictures/15/07/27/12/24/354255.jpg');


INSERT INTO PERSONAS (nombre, url_foto) VALUES ('James Spader', 'https://cdn.britannica.com/78/224978-050-F42FE93B/James-Spader-2015.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Don Cheadle', 'https://es.web.img2.acsta.net/c_310_420/pictures/15/11/24/16/49/154499.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Aaron Taylor-Johnson', 'https://media.revistavanityfair.es/photos/65fb0671d657c35acfe45f42/16:9/w_2560%2Cc_limit/1242666214');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Elizabeth Olsen', 'https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/media/image/2021/05/elizabeth-olsen-2322363.jpg?tf=3840x');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Paul Bettany', 'https://es.web.img3.acsta.net/c_310_420/pictures/15/11/24/16/37/001794.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Anthony Mackie', 'https://images.fandango.com/ImageRenderer/300/0/redesign/static/img/default_poster.png/0/images/masterrepository/performer%20images/416845/AnthonyMackie-2025_r.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Idris Elba', 'https://fotografias.antena3.com/clipping/cmsimages01/2016/07/22/34E24727-AC1A-49F2-83B1-5260A7C19AD5/104.jpg?crop=803,803,x334,y0&width=1200&height=1200&optimize=low&format=webply');


INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Joe Russo', 'https://resizing.flixster.com/EAfu80-S5OMNhuftVgMHoWSxFEo=/fit-in/352x330/v2/https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/303029_v9_bb.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Anthony Russo', 'https://pics.filmaffinity.com/139588731549058-nm_200.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Josh Brolin', 'https://pics.filmaffinity.com/027331534171996-nm_200.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Benedict Cumberbatch', 'https://hips.hearstapps.com/hmg-prod/images/210728-se-esquire-benedict-cumberbatch-shot-02-019-fin3-flat-1636369360.png?resize=980:*');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Tom Holland', 'https://es.web.img2.acsta.net/pictures/23/05/30/13/16/0004762.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Chadwick Boseman', 'https://es.web.img2.acsta.net/c_310_420/pictures/16/10/21/17/23/376701.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Karen Gillan', 'https://resizing.flixster.com/VO-h3pUXPRbEkHW72PoRaTxsGWY=/218x280/v2/https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/572089_v9_bd.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Danai Gurira', 'https://images.mubicdn.net/images/cast_member/16429/cache-133957-1596916635/image-w856.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Peter Dinklage', 'https://es.web.img3.acsta.net/c_310_420/pictures/15/07/20/17/24/353481.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Benedict Wong', 'https://es.web.img2.acsta.net/c_310_420/pictures/16/10/21/16/05/442276.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Pom Klementieff', 'https://es.web.img3.acsta.net/c_310_420/pictures/17/04/20/13/31/555807.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Dave Bautista', 'https://hips.hearstapps.com/hmg-prod/images/dave-bautista-attends-the-glass-onion-a-knives-out-mystery-news-photo-1670429750.jpg?crop=1xw:0.37814xh;0.0489xw,0.0361xh&resize=1200:*');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Vin Diesel', 'https://es.web.img3.acsta.net/pictures/15/10/14/11/30/335169.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Bradley Cooper', 'https://es.web.img3.acsta.net/pictures/19/02/21/10/42/0074317.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Chris Pratt', 'https://es.web.img2.acsta.net/pictures/17/05/04/19/55/010131.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Gwyneth Paltrow', 'https://www.gentedehoy.es/wp-content/uploads/2020/03/Gwyneth_Entrevista-1476x984.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Zoe Saldaña', 'https://imagenes.elpais.com/resizer/v2/ZER3TZYRU5DDDNCIEDPAL74MP4.jpg?auth=0262f2bbf57f655738a3734135e24e139240aff1e14dbc12ca06856a7e774815&width=414');


INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Paul Rudd', 'https://es.web.img3.acsta.net/c_310_420/pictures/18/04/24/11/17/4714754.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Brie Larson', 'https://image.gala.de/23927654/t/yp/v5/w960/r0/-/brie-larson.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Evangeline Lilly', 'https://es.web.img2.acsta.net/pictures/19/03/14/11/14/4084158.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Tessa Thompson', 'https://cdn-images.dzcdn.net/images/artist/52c1da960a973452155b67421c7bd783/1900x1900-000000-80-0-0.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Rene Russo', 'https://es.web.img2.acsta.net/pictures/15/09/22/12/46/388547.jpg');
INSERT INTO PERSONAS (nombre, url_foto) VALUES ('Sebastian Stan', 'https://es.web.img2.acsta.net/pictures/18/01/08/13/57/1803057.jpg');





-- Ahora asociamos los directores y actores con las películas en las que han trabajado.
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El contable 2' AND nombre_original = 'The Accountant²'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Gavin O\'Connor'),
    'Director');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El contable 2' AND nombre_original = 'The Accountant²'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Ben Affleck'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El contable 2' AND nombre_original = 'The Accountant²'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Jon Bernthal'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El contable 2' AND nombre_original = 'The Accountant²'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Cynthia Addai-Robinson'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El contable 2' AND nombre_original = 'The Accountant²'),
    (SELECT id FROM PERSONAS WHERE nombre = 'J.K. Simmons'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El contable 2' AND nombre_original = 'The Accountant²'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Alison Wright'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El contable 2' AND nombre_original = 'The Accountant²'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Daniella Pineda'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El contable 2' AND nombre_original = 'The Accountant²'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Robert Morgan'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El contable 2' AND nombre_original = 'The Accountant²'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Grant Harvey'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El contable 2' AND nombre_original = 'The Accountant²'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Andrew Howard'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El contable 2' AND nombre_original = 'The Accountant²'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Lombardo Boyar'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El contable 2' AND nombre_original = 'The Accountant²'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Michael Tourek'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El contable 2' AND nombre_original = 'The Accountant²'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Fernando Chien'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El contable 2' AND nombre_original = 'The Accountant²'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Abner Lozano'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El contable 2' AND nombre_original = 'The Accountant²'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Presley Alexander'),
    'Actor');


INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El contable' AND nombre_original = 'The Accountant'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Gavin O\'Connor'),
    'Director');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El contable' AND nombre_original = 'The Accountant'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Ben Affleck'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El contable' AND nombre_original = 'The Accountant'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Cynthia Addai-Robinson'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El contable' AND nombre_original = 'The Accountant'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Anna Kendrick'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El contable' AND nombre_original = 'The Accountant'),
    (SELECT id FROM PERSONAS WHERE nombre = 'J.K. Simmons'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El contable' AND nombre_original = 'The Accountant'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Jon Bernthal'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El contable' AND nombre_original = 'The Accountant'),
    (SELECT id FROM PERSONAS WHERE nombre = 'John Lithgow'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El contable' AND nombre_original = 'The Accountant'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Jeffrey Tambor'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El contable' AND nombre_original = 'The Accountant'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Jean Smart'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El contable' AND nombre_original = 'The Accountant'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Andy Umberger'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El contable' AND nombre_original = 'The Accountant'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Alison Wright'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El contable' AND nombre_original = 'The Accountant'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Jason Davis'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El contable' AND nombre_original = 'The Accountant'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Robert C. Treveiler'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'El contable' AND nombre_original = 'The Accountant'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Mary Kraft'),
    'Actor');


INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Pecadores' AND nombre_original = 'Sinners'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Ryan Coogler'),
    'Director');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Pecadores' AND nombre_original = 'Sinners'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Hailee Steinfeld'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Pecadores' AND nombre_original = 'Sinners'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Miles Caton'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Pecadores' AND nombre_original = 'Sinners'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Jack O\'Connell'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Pecadores' AND nombre_original = 'Sinners'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Wunmi Mosaku'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Pecadores' AND nombre_original = 'Sinners'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Jayme Lawson'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Pecadores' AND nombre_original = 'Sinners'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Omar Benson Miller'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Pecadores' AND nombre_original = 'Sinners'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Delroy Lindo'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Pecadores' AND nombre_original = 'Sinners'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Li Jun Li'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Pecadores' AND nombre_original = 'Sinners'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Thomas Pang'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Pecadores' AND nombre_original = 'Sinners'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Lola Kirke'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Pecadores' AND nombre_original = 'Sinners'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Peter Dreimanis'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Pecadores' AND nombre_original = 'Sinners'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Buddy Guy'),
    'Actor');


INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'La viuda negra' AND nombre_original = 'La viuda negra'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Carlos Sedes'),
    'Director');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'La viuda negra' AND nombre_original = 'La viuda negra'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Ivana Baquero'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'La viuda negra' AND nombre_original = 'La viuda negra'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Tristán Ulloa'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'La viuda negra' AND nombre_original = 'La viuda negra'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Carmen Machi'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'La viuda negra' AND nombre_original = 'La viuda negra'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Pepe Ocio'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'La viuda negra' AND nombre_original = 'La viuda negra'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Joel Sánchez'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'La viuda negra' AND nombre_original = 'La viuda negra'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Álex Gadea'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'La viuda negra' AND nombre_original = 'La viuda negra'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Pablo Molinero'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'La viuda negra' AND nombre_original = 'La viuda negra'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Ramón Ródenas'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'La viuda negra' AND nombre_original = 'La viuda negra'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Tania Fortea'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'La viuda negra' AND nombre_original = 'La viuda negra'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Inma Sancho'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'La viuda negra' AND nombre_original = 'La viuda negra'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Marta Belenguer'),
    'Actor');


INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Black Friday' AND nombre_original = 'Thanksgiving'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Eli Roth'),
    'Director');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Black Friday' AND nombre_original = 'Thanksgiving'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Patrick Dempsey'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Black Friday' AND nombre_original = 'Thanksgiving'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Nell Verlaque'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Black Friday' AND nombre_original = 'Thanksgiving'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Addison Rae'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Black Friday' AND nombre_original = 'Thanksgiving'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Ty Olsson'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Black Friday' AND nombre_original = 'Thanksgiving'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Gina Gershon'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Black Friday' AND nombre_original = 'Thanksgiving'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Lynne Griffin'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Black Friday' AND nombre_original = 'Thanksgiving'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Karen Cliche'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Black Friday' AND nombre_original = 'Thanksgiving'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Rick Hoffman'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Black Friday' AND nombre_original = 'Thanksgiving'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Derek McGrath'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Black Friday' AND nombre_original = 'Thanksgiving'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Katherine Trowell'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Black Friday' AND nombre_original = 'Thanksgiving'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Jalen Thomas Brooks'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Black Friday' AND nombre_original = 'Thanksgiving'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Mika Amonsen'),
    'Actor');


INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick (Otro día para matar)' AND nombre_original = 'John Wick'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Chad Stahelski'),
    'Director');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick (Otro día para matar)' AND nombre_original = 'John Wick'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Keanu Reeves'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick (Otro día para matar)' AND nombre_original = 'John Wick'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Michael Nyqvist'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick (Otro día para matar)' AND nombre_original = 'John Wick'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Alfie Allen'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick (Otro día para matar)' AND nombre_original = 'John Wick'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Willem Dafoe'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick (Otro día para matar)' AND nombre_original = 'John Wick'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Dean Winters'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick (Otro día para matar)' AND nombre_original = 'John Wick'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Adrianne Palicki'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick (Otro día para matar)' AND nombre_original = 'John Wick'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Omer Barnea'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick (Otro día para matar)' AND nombre_original = 'John Wick'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Toby Leonard Moore'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick (Otro día para matar)' AND nombre_original = 'John Wick'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Daniel Bernhardt'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick (Otro día para matar)' AND nombre_original = 'John Wick'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Bridget Moynahan'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick (Otro día para matar)' AND nombre_original = 'John Wick'),
    (SELECT id FROM PERSONAS WHERE nombre = 'John Leguizamo'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick (Otro día para matar)' AND nombre_original = 'John Wick'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Ian McShane'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick (Otro día para matar)' AND nombre_original = 'John Wick'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Lance Reddick'),
    'Actor');


INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick: Pacto de sangre' AND nombre_original = 'John Wick: Chapter 2'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Chad Stahelski'),
    'Director');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick: Pacto de sangre' AND nombre_original = 'John Wick: Chapter 2'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Keanu Reeves'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick: Pacto de sangre' AND nombre_original = 'John Wick: Chapter 2'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Ian McShane'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick: Pacto de sangre' AND nombre_original = 'John Wick: Chapter 2'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Lance Reddick'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick: Pacto de sangre' AND nombre_original = 'John Wick: Chapter 2'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Common'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick: Pacto de sangre' AND nombre_original = 'John Wick: Chapter 2'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Laurence Fishburne'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick: Pacto de sangre' AND nombre_original = 'John Wick: Chapter 2'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Riccardo Scamarcio'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick: Pacto de sangre' AND nombre_original = 'John Wick: Chapter 2'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Ruby Rose'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick: Pacto de sangre' AND nombre_original = 'John Wick: Chapter 2'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Franco Nero'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick: Pacto de sangre' AND nombre_original = 'John Wick: Chapter 2'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Claudia Gerini'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick: Pacto de sangre' AND nombre_original = 'John Wick: Chapter 2'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Wass Stevens'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick: Pacto de sangre' AND nombre_original = 'John Wick: Chapter 2'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Peter Serafinowicz'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick: Pacto de sangre' AND nombre_original = 'John Wick: Chapter 2'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Luca Mosca'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick: Pacto de sangre' AND nombre_original = 'John Wick: Chapter 2'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Peter Stormare'),
    'Actor');


INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick: Capítulo 3 - Parabellum' AND nombre_original = 'John Wick: Chapter 3 - Parabellum'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Chad Stahelski'),
    'Director');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick: Capítulo 3 - Parabellum' AND nombre_original = 'John Wick: Chapter 3 - Parabellum'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Keanu Reeves'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick: Capítulo 3 - Parabellum' AND nombre_original = 'John Wick: Chapter 3 - Parabellum'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Halle Berry'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick: Capítulo 3 - Parabellum' AND nombre_original = 'John Wick: Chapter 3 - Parabellum'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Ian McShane'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick: Capítulo 3 - Parabellum' AND nombre_original = 'John Wick: Chapter 3 - Parabellum'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Laurence Fishburne'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick: Capítulo 3 - Parabellum' AND nombre_original = 'John Wick: Chapter 3 - Parabellum'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Mark Dacascos'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick: Capítulo 3 - Parabellum' AND nombre_original = 'John Wick: Chapter 3 - Parabellum'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Asia Kate Dillon'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick: Capítulo 3 - Parabellum' AND nombre_original = 'John Wick: Chapter 3 - Parabellum'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Lance Reddick'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick: Capítulo 3 - Parabellum' AND nombre_original = 'John Wick: Chapter 3 - Parabellum'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Anjelica Huston'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick: Capítulo 3 - Parabellum' AND nombre_original = 'John Wick: Chapter 3 - Parabellum'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Saïd Taghmaoui'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick: Capítulo 3 - Parabellum' AND nombre_original = 'John Wick: Chapter 3 - Parabellum'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Jerome Flynn'),
    'Actor');


INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick 4' AND nombre_original = 'John Wick: Chapter 4'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Chad Stahelski'),
    'Director');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick 4' AND nombre_original = 'John Wick: Chapter 4'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Keanu Reeves'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick 4' AND nombre_original = 'John Wick: Chapter 4'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Donnie Yen'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick 4' AND nombre_original = 'John Wick: Chapter 4'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Bill Skarsgård'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick 4' AND nombre_original = 'John Wick: Chapter 4'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Ian McShane'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick 4' AND nombre_original = 'John Wick: Chapter 4'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Laurence Fishburne'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick 4' AND nombre_original = 'John Wick: Chapter 4'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Lance Reddick'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick 4' AND nombre_original = 'John Wick: Chapter 4'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Clancy Brown'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick 4' AND nombre_original = 'John Wick: Chapter 4'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Hiroyuki Sanada'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick 4' AND nombre_original = 'John Wick: Chapter 4'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Rina Sawayama'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'John Wick 4' AND nombre_original = 'John Wick: Chapter 4'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Scott Adkins'),
    'Actor');


INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Ballerina, del universo de John Wick' AND nombre_original = 'Ballerina'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Len Wiseman'),
    'Director');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Ballerina, del universo de John Wick' AND nombre_original = 'Ballerina'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Ana de Armas'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Ballerina, del universo de John Wick' AND nombre_original = 'Ballerina'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Anjelica Huston'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Ballerina, del universo de John Wick' AND nombre_original = 'Ballerina'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Keanu Reeves'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Ballerina, del universo de John Wick' AND nombre_original = 'Ballerina'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Norman Reedus'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Ballerina, del universo de John Wick' AND nombre_original = 'Ballerina'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Lance Reddick'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Ballerina, del universo de John Wick' AND nombre_original = 'Ballerina'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Catalina Sandino Moreno'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Ballerina, del universo de John Wick' AND nombre_original = 'Ballerina'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Ian McShane'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Ballerina, del universo de John Wick' AND nombre_original = 'Ballerina'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Gabriel Byrne'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Ballerina, del universo de John Wick' AND nombre_original = 'Ballerina'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Sharon Duncan-Brewster'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Ballerina, del universo de John Wick' AND nombre_original = 'Ballerina'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Robert Maaser'),
    'Actor');


INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Los Vengadores' AND nombre_original = 'The Avengers'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Joss Whedon'),
    'Director');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Los Vengadores' AND nombre_original = 'The Avengers'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Robert Downey Jr.'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Los Vengadores' AND nombre_original = 'The Avengers'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Chris Evans'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Los Vengadores' AND nombre_original = 'The Avengers'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Mark Ruffalo'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Los Vengadores' AND nombre_original = 'The Avengers'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Chris Hemsworth'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Los Vengadores' AND nombre_original = 'The Avengers'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Scarlett Johansson'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Los Vengadores' AND nombre_original = 'The Avengers'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Jeremy Renner'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Los Vengadores' AND nombre_original = 'The Avengers'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Tom Hiddleston'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Los Vengadores' AND nombre_original = 'The Avengers'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Clark Gregg'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Los Vengadores' AND nombre_original = 'The Avengers'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Cobie Smulders'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Los Vengadores' AND nombre_original = 'The Avengers'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Samuel L. Jackson'),
    'Actor');


INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: La Era de Ultrón' AND nombre_original = 'Avengers: Age of Ultron'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Joss Whedon'),
    'Director');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: La Era de Ultrón' AND nombre_original = 'Avengers: Age of Ultron'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Robert Downey Jr.'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: La Era de Ultrón' AND nombre_original = 'Avengers: Age of Ultron'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Chris Hemsworth'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: La Era de Ultrón' AND nombre_original = 'Avengers: Age of Ultron'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Mark Ruffalo'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: La Era de Ultrón' AND nombre_original = 'Avengers: Age of Ultron'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Chris Evans'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: La Era de Ultrón' AND nombre_original = 'Avengers: Age of Ultron'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Scarlett Johansson'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: La Era de Ultrón' AND nombre_original = 'Avengers: Age of Ultron'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Jeremy Renner'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: La Era de Ultrón' AND nombre_original = 'Avengers: Age of Ultron'),
    (SELECT id FROM PERSONAS WHERE nombre = 'James Spader'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: La Era de Ultrón' AND nombre_original = 'Avengers: Age of Ultron'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Samuel L. Jackson'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: La Era de Ultrón' AND nombre_original = 'Avengers: Age of Ultron'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Don Cheadle'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: La Era de Ultrón' AND nombre_original = 'Avengers: Age of Ultron'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Aaron Taylor-Johnson'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: La Era de Ultrón' AND nombre_original = 'Avengers: Age of Ultron'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Elizabeth Olsen'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: La Era de Ultrón' AND nombre_original = 'Avengers: Age of Ultron'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Paul Bettany'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: La Era de Ultrón' AND nombre_original = 'Avengers: Age of Ultron'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Anthony Mackie'),
    'Actor');


INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Infinity War' AND nombre_original = 'Avengers: Infinity War'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Joe Russo'),
    'Director');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Infinity War' AND nombre_original = 'Avengers: Infinity War'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Anthony Russo'),
    'Director');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Infinity War' AND nombre_original = 'Avengers: Infinity War'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Robert Downey Jr.'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Infinity War' AND nombre_original = 'Avengers: Infinity War'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Chris Evans'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Infinity War' AND nombre_original = 'Avengers: Infinity War'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Chris Hemsworth'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Infinity War' AND nombre_original = 'Avengers: Infinity War'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Josh Brolin'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Infinity War' AND nombre_original = 'Avengers: Infinity War'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Mark Ruffalo'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Infinity War' AND nombre_original = 'Avengers: Infinity War'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Scarlett Johansson'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Infinity War' AND nombre_original = 'Avengers: Infinity War'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Don Cheadle'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Infinity War' AND nombre_original = 'Avengers: Infinity War'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Benedict Cumberbatch'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Infinity War' AND nombre_original = 'Avengers: Infinity War'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Tom Holland'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Infinity War' AND nombre_original = 'Avengers: Infinity War'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Chadwick Boseman'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Infinity War' AND nombre_original = 'Avengers: Infinity War'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Zoe Saldaña'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Infinity War' AND nombre_original = 'Avengers: Infinity War'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Karen Gillan'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Infinity War' AND nombre_original = 'Avengers: Infinity War'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Tom Hiddleston'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Infinity War' AND nombre_original = 'Avengers: Infinity War'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Paul Bettany'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Infinity War' AND nombre_original = 'Avengers: Infinity War'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Elizabeth Olsen'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Infinity War' AND nombre_original = 'Avengers: Infinity War'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Anthony Mackie'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Infinity War' AND nombre_original = 'Avengers: Infinity War'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Idris Elba'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Infinity War' AND nombre_original = 'Avengers: Infinity War'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Danai Gurira'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Infinity War' AND nombre_original = 'Avengers: Infinity War'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Peter Dinklage'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Infinity War' AND nombre_original = 'Avengers: Infinity War'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Benedict Wong'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Infinity War' AND nombre_original = 'Avengers: Infinity War'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Pom Klementieff'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Infinity War' AND nombre_original = 'Avengers: Infinity War'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Dave Bautista'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Infinity War' AND nombre_original = 'Avengers: Infinity War'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Vin Diesel'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Infinity War' AND nombre_original = 'Avengers: Infinity War'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Bradley Cooper'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Infinity War' AND nombre_original = 'Avengers: Infinity War'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Chris Pratt'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Infinity War' AND nombre_original = 'Avengers: Infinity War'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Gwyneth Paltrow'),
    'Actor');


INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Endgame' AND nombre_original = 'Avengers: Endgame'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Joe Russo'),
    'Director');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Endgame' AND nombre_original = 'Avengers: Endgame'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Anthony Russo'),
    'Director');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Endgame' AND nombre_original = 'Avengers: Endgame'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Robert Downey Jr.'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Endgame' AND nombre_original = 'Avengers: Endgame'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Chris Evans'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Endgame' AND nombre_original = 'Avengers: Endgame'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Mark Ruffalo'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Endgame' AND nombre_original = 'Avengers: Endgame'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Chris Hemsworth'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Endgame' AND nombre_original = 'Avengers: Endgame'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Scarlett Johansson'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Endgame' AND nombre_original = 'Avengers: Endgame'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Jeremy Renner'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Endgame' AND nombre_original = 'Avengers: Endgame'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Josh Brolin'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Endgame' AND nombre_original = 'Avengers: Endgame'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Don Cheadle'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Endgame' AND nombre_original = 'Avengers: Endgame'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Paul Rudd'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Endgame' AND nombre_original = 'Avengers: Endgame'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Benedict Cumberbatch'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Endgame' AND nombre_original = 'Avengers: Endgame'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Chadwick Boseman'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Endgame' AND nombre_original = 'Avengers: Endgame'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Brie Larson'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Endgame' AND nombre_original = 'Avengers: Endgame'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Tom Holland'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Endgame' AND nombre_original = 'Avengers: Endgame'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Karen Gillan'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Endgame' AND nombre_original = 'Avengers: Endgame'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Zoe Saldaña'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Endgame' AND nombre_original = 'Avengers: Endgame'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Evangeline Lilly'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Endgame' AND nombre_original = 'Avengers: Endgame'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Tessa Thompson'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Endgame' AND nombre_original = 'Avengers: Endgame'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Rene Russo'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Endgame' AND nombre_original = 'Avengers: Endgame'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Elizabeth Olsen'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Endgame' AND nombre_original = 'Avengers: Endgame'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Anthony Mackie'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Endgame' AND nombre_original = 'Avengers: Endgame'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Sebastian Stan'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Endgame' AND nombre_original = 'Avengers: Endgame'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Tom Hiddleston'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Endgame' AND nombre_original = 'Avengers: Endgame'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Danai Gurira'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Endgame' AND nombre_original = 'Avengers: Endgame'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Benedict Wong'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Endgame' AND nombre_original = 'Avengers: Endgame'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Pom Klementieff'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Endgame' AND nombre_original = 'Avengers: Endgame'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Dave Bautista'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Endgame' AND nombre_original = 'Avengers: Endgame'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Hiroyuki Sanada'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Endgame' AND nombre_original = 'Avengers: Endgame'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Vin Diesel'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Endgame' AND nombre_original = 'Avengers: Endgame'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Bradley Cooper'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Endgame' AND nombre_original = 'Avengers: Endgame'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Gwyneth Paltrow'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Endgame' AND nombre_original = 'Avengers: Endgame'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Chris Pratt'),
    'Actor');
INSERT INTO REPRODUCIBLES_PERSONAS (id_reproducible, id_persona, rol)
VALUES (
    (SELECT id FROM REPRODUCIBLES WHERE nombre = 'Vengadores: Endgame' AND nombre_original = 'Avengers: Endgame'),
    (SELECT id FROM PERSONAS WHERE nombre = 'Samuel L. Jackson'),
    'Actor');
