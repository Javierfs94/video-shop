<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class FilmController extends Controller
{
    public function index()
    {
        $title = "Film list";

        $data = array(
            'title' => $title,
        );

        return view('film.index', $data);
    }

    public function details($year = null)
    {
        return view('film.detail');
    }

    public function redirect()
    {
        return redirect()->action('FilmController@details');
    }

    public function form()
    {
        return view('film.form');
    }

    public function getForm(Request $request)
    {
        $name = $request->input('name');
        $email = $request->input('email');
        echo '<p>Nombre: ' . $name . '</p><p>Email: ' . $email . '</p>';
        return "El nombre es $name y el email es $email";
    }
}
