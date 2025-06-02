import { defineConfig } from 'vite';
import laravel from 'laravel-vite-plugin';
import tailwindcss from '@tailwindcss/vite';

export default defineConfig({
    plugins: [
        laravel({
            input: [
                'resources/css/app.css',
                'resources/css/header.css',
                'resources/css/general.css',

                'resources/css/temporalView.css',
                'resources/css/popularView.css',
                'resources/css/peliculaView.css',
                'resources/css/loginRegistro_usuarioView.css',
                
                'resources/js/app.js',
                'resources/js/animacion_texto_ancho.js',
            ],
            refresh: true,
        }),
        tailwindcss(),
    ],
});
