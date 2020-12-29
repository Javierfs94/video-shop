<?php

use App\Http\Controllers\FilmController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/films', 'FilmController@index');

Route::get('/details/{year?}', [
    'middleware' => 'testyear',
    'uses' => 'FilmController@details',
    'as' => 'details.film'

]);

Route::get('/form', 'FilmController@form');
Route::post('/getf', 'FilmController@getForm');

Route::get('/redirect', 'FilmController@redirect');

Route::resource('user', 'UserController');
