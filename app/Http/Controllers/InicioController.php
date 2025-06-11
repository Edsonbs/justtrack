<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class InicioController extends Controller
{
    public function showInicio() {
        return view('inicioView');
    }

    public function enviarCorreo(Request $request)
    {
        $request->validate([
            'correo' => 'required|email',
            'asunto_correo' => 'required|string|max:255',
            'cuerpo_correo' => 'required|string',
        ]);

        // Envío del correo al administrador con la sugerencia de feedback.
        Mail::raw($request->cuerpo_correo . "\n\nEnviado por: \"{$request->correo}\"", function ($message) use ($request) {
        $message->to('justtrack.noreply@gmail.com') // Correo del administrador
                ->from($request->correo)
                ->subject($request->asunto_correo);
        });

        // Envío de confirmación al usuario.
        Mail::raw("Hola,\n\nHemos recibido tu sugerencia con el asunto: \"{$request->asunto_correo}\". Muchas gracias por tu interés en mejorar JustTrack. 📬\n\nEste es el mensaje que nos enviaste:\n\n\"{$request->cuerpo_correo}\"\n\n— El equipo de JustTrack", function ($message) use ($request) {
            $message->to($request->correo)
                ->from('justtrack.noreply@gmail.com', 'JustTrack')
                ->subject('Confirmación de envío de sugerencia');
        });

        // Tras enviar correctamente los correos redirigimos de vuelta al usuario.
        // Enviamos de vuelta varios datos para mostrar el formulario relleno.
        return redirect()
            ->to(url()->previous() . '#apartado_feedback')
            ->with([
                'success' => '¡Gracias por tu sugerencia!',
                'correo' => $request->correo,
                'asunto_correo' => $request->asunto_correo,
                'cuerpo_correo' => $request->cuerpo_correo,
            ]);
    }
}
