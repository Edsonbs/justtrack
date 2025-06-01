import { defineConfig } from 'vite';
import laravel from 'laravel-vite-plugin';
import tailwindcss from '@tailwindcss/vite';

export default defineConfig({
    plugins: [
        laravel({
            input: [
                'resources/css/app.css',
                'resources/js/app.js',
                'resources/js/animacion_texto_ancho.js',
                'resources/css/header.css',
                'resources/css/general.css',
                'resources/css/temporalView.css',
                'resources/css/popularView.css',
            ],
            refresh: true,
        }),
        tailwindcss(),
    ],
});
