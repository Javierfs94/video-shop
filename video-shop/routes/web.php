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

// Rutas fruta
Route::group(['prefix' => 'frutas'], function () {
    Route::get('/', 'FrutaController@index');
    Route::get('index', 'FrutaController@index');
    Route::get('detail/{id}', 'FrutaController@detail');
    Route::get('crear', 'FrutaController@create');
    Route::post('save', 'FrutaController@save');
    Route::get('delete/{id}', 'FrutaController@delete');
    Route::get('editar/{id}', 'FrutaController@edit');
    Route::post('update', 'FrutaController@update');
});


Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

/*
GET: Conseguir datos
POST: Guardar datos
PUT: Actualizar recursos
DELETE: Eliminar recursos
*/

/*
Route::get('/mostrar-fecha', function(){
	$titulo = "Estoy mostrando la fecha";
	return view('mostrar-fecha', array(
		'titulo' => $titulo
	));
});

Route::get('/pelicula/{titulo}/{year?}', function($titulo = 'No hay una pelicula seleccionada', $year = 2019){

	return view('pelicula', array(
		'titulo' => $titulo,
		'year'   => $year
	));

})->where(array(
	'titulo' => '[a-zA-Z]+',
	'year' => '[0-9]+'
));

Route::get('/listado-peliculas', function(){

	$titulo = "Listado de peliculas";
	$listado = array('Batman', 'Spiderman', 'Gran torino');

	return view('peliculas.listado')
			->with('titulo', $titulo)
			->with('listado', $listado);

});

Route::get('/pagina-generica', function(){

	return view('pagina');
});
 *
 */
