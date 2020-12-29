@extends('layout.main')

@section('title', 'Films')

@section('content')

    <h1>Form</h1>
    <form action="{{ action('FilmController@getForm') }}" method="post">
       {{ csrf_field() }}
        <label for="name">Name</label>
        <input type="text" name="name" required>
        <br>
        <label for="email">Email</label>
        <input type="email" name="email" required>
        <br>
        <input type="submit" value="Send">

    </form>

@stop
