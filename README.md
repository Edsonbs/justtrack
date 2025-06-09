# JustTrack

JustTrack es un servicio online que te permite trackear contenido multimedia. Inicialmente sólo te permitirá trackear algunas películas y series, pero a futuro está planteado para permitirte trackear más contenido multimedia como pueden ser videojuegos o libros.

## Dependencias

Necesitaremos tener ciertos elementos instalados para ejecutar la aplicación sin problemas.

1. PHP.
2. Laravel.
3. Composer.
4. Node.js.
5. GIT, para poder clonar el repositorio con toda la aplicación web.
6. Apache (no es estrictamente necesario, pero estoy mostrando un tutorial de cómo hacerlo con Apache)
7. MySQL.

```shell
# Instalamos PHP:
sudo apt install php php-cli php-mbstring php-xml php-bcmath php-curl php-mysql php-zip unzip -y
php -v  # Para comprobar la versión

# Instalamos composer:
sudo cd ~
sudo php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer
composer --version # Comprobamos la versión instalada

# Instalamos Node.js con npm:
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt install -y nodejs
node -v && npm -v

# Instalamos GIT:
sudo apt install git -y
git --version

# Instalamos Apache:
sudo apt install apache2 libapache2-mod-php -y

# Instalamos MySQL:
sudo apt install mysql-server
```

## Cómo ejecutar

1. Lo primero que tendremos que hacer es vaciar la carpeta en la que se encuentra la página por defecto de Apache.
2. Lo siguiente que tendremos que hacer es clonar el repositorio en esa carpeta.
3. Tendremos que acceder a la carpeta en donde tenemos el repositorio clonado.
4. Tendremos que ejecutar los siguientes comandos en el orden indicado:

```shell
# Eliminamos la página por defecto de Apache.
sudo rm -R /var/www/html/*

# Accedemos para clonar ahí JustTrack.
cd /var/www/html/
sudo git clone https://github.com/Edsonbs/justtrack.git

# Creamos un nuevo fichero de configuración de Apache.
sudo cp -R /etc/apache2/sites-available/000-default.conf /etc/apache2/sites-available/justtrack.conf

# Ahora tendremos que acceder al nuevo archivo de configuración que tiene los valores por defecto para ajustarlos al nuevo sitio web.
sudo nano /etc/apache2/sites-available/justtrack.conf

# Debemos poner los siguientes cambios:
# "DocumentRoot" apuntando a "/var/www/html/justtrack/public"
# Debemos añadir la siguiente línea:
# DirectoryIndex index.html index.php
# Debemos añadir las siguientes líneas para los permisos sobre ese fichero:
#<Directory /var/www/html/justtrack/public>
#        Options Indexes FollowSymLinks
#        AllowOverride All
#        Require all granted
#</Directory>

# Ahora tendremos que deshabilitar la configuración del sitio por defecto y activar la configuración del nuevo sitio web, además tendremos que habilitar los módulos de Apache necesarios para el funcionamiento de este proyecto hecho con Laravel.
sudo a2dissite 000-default.conf
sudo a2ensite justtrack.conf
sudo a2enmod rewrite headers env
sudo service apache2 restart

# Ahora le daremos la propiedad de todos los ficheros del proyecto al usuario y grupo de Apache y permisos de escritura:
sudo chown -R www-data:www-data /var/www/html/justtrack
sudo chmod -R 775 /var/www/html/justtrack

# Ahora tendremos que crear el .env del proyecto:
sudo cp /var/www/html/justtrack/.env.ejemplo /var/www/html/justtrack/.env

# A continuación tendremos que modificarlo:
sudo nano /var/www/html/justtrack/.env
# Tendremos que darle una configuración que represente nuestra base de datos.

# Tendremos que instalar las dependencias de nuestro proyecto con composer:
cd /var/www/html/justtrack/
sudo composer install

# Ahora tendremos que generar una clave para nuestra aplicación:
sudo php artisan key:generate

# Ahora instalaremos todas las dependencias JavaScript del proyecto:
cd /var/www/html/justtrack/
sudo npm install

# Ahora creamos un enlace para que la aplicación pueda acceder a los elementos visuales descargados localmente en el servidor:
sudo php artisan storage:link

# Finalmente compilaremos todos nuestro ficheros CSS y JS con Vite:
sudo npm run build
```

En este punto la aplicación ya está preparada para funcionar, solo que hay muchas cosas que aún no funcionarán ya que aún tenemos que levantar la base de datos. Comenzamos con lo que necesitamos ejecutar para levantar la base de datos:

```shell
# Lo primero que haremos es darle una configuración al sistema gestor de base de datos MySQL que acabamos de instalar. Primero accedemos para ponerle una contraseña al usuario root (cambiamos "1234" por la contraseña que queremos para el usuario root):
sudo mysql
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '1234';
FLUSH PRIVILEGES;
EXIT;

# Ahora emplearemos el script que he creado para crear la base de datos de forma automatizada:
mysql -u root -p < /var/www/html/justtrack/documentacion_proyecto/base_datos/modelo_fisico.sql

# Podremos comprobar que se ha creado ejecutando los siguientes comandos:
mysql -u root -p1234
SHOW DATABASES;
USE JUSTTRACK;
SHOW TABLES;
# Con esto podremos comprobar que efectivamente se ha creado tanto la base de datos como sus tablas.

# Ahora insertaremos los datos de pruebas:
mysql -u root -p < /var/www/html/justtrack/documentacion_proyecto/base_datos/insercion_datos.sql

# Podremos comprobar que ahora las tablas tienen datos para probar empleando los siguientes comandos:
mysql -u root -p1234
USE JUSTTRACK;
SELECT * FROM REPRODUCIBLES;
# A partir de aquí simplemente ejecutamos esa última línea de SELECT con todas las tablas que queramos comprobar.
```

Con estos pasos que acabamos de ejecutar ya tendremos nuestra base de datos completamente funcional y ya podremos utilizar la aplicación web JustTrack accediendo a la dirección IP de nuestro servidor.

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
