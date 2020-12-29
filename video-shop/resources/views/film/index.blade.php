@extends('layout.main')

@section('title', 'Films')

@section('content')
    <h2>{{ $title }}</h2>
    <p>Main content of the page</p>
    <a href="{{ action('FilmController@details') }}">Go to film's details</a>

    @if (isset($title))

    @endif
    <p>
        {{ $seasons ?? 'no seasons' }}
    </p>
@stop
