<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|


----------------Home Controller-----------------------
*/


Route::get('/', 'HomeController@index');
Route::get('home', 'HomeController@index');

Route::post('/', 'HomeController@post');
Route::get('/create', 'HomeController@create');
Route::get('/post/{postid}', 'HomeController@singlepost');
Route::get('/myblog', 'HomeController@myblog');
Route::get('/remove/post/{postid}', 'HomeController@removepost');
Route::get('/edit/post/{sdjij}', 'HomeController@editpost');
Route::post('/update/post/{postid}', 'HomeController@updatepost');
Route::get('/myprofile/{userid}', 'HomeController@showprofile');
Route::post('/myprofile/{userid}', 'HomeController@updateprofile');
/*
Route::controllers([
    'auth' => 'Auth\AuthController',
    'password' => 'Auth\PasswordController',
]);


Route::auth();


*/



//         Authenticate user Controller      //

Route::get('/login', 'UserController@getlogin');
Route::post('/login', 'UserController@postlogin');

Route::get('/register', 'UserController@getregister');
Route::post('/register', 'UserController@postregister');

Route::get('/logout', 'UserController@logout');


