# JustTrack

JustTrack es un servicio online que te permite trackear contenido multimedia. Inicialmente sólo te permitirá trackear algunas películas y series, pero a futuro está planteado para permitirte trackear más contenido multimedia como pueden ser videojuegos o libros.

## Dependencias

Necesitaremos tener ciertos elementos instalados para ejecutar la aplicación sin problemas.

1. PHP.
2. Laravel.
3. Composer.
4. Node.js.
5. Apache (no es estrictamente necesario, pero estoy mostrando un tutorial de cómo hacerlo con Apache)

## Cómo ejecutar

1. Lo primero que tendremos que hacer es clonar el repositorio.
2. Tendremos que acceder a la carpeta en donde tenemos el repositorio clonado.
3. Tendremos que ejecutar los siguientes comandos en el orden indicado:

```shell
composer install
cp .env.example .env
nano .env # Aquí tendremos que poner nuestros datos de conexión.
php artisan key:generate
sudo chmod -R 777 * # Podemos ajustar más los permisos si lo vemos necesario.
npm install
npm run build
sudo a2enmod rewrite
sudo service apache2 restart
```
