<?php

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

Route::get('/', 'IndexController@index');
Route::get('/about-us', 'AboutController@index');
Route::get('/gallery', 'GalleryController@index');
Route::get('/events', 'EventsController@index');
Route::get('/contact', 'ContactController@index');
Route::get('/menu', 'MenuController@index');

Route::post('send-message','ContactController@send_message');
Route::post('send-reservation','ContactController@send_reservation');



Route::get('/storage/thumb/{query}/{file?}', 'ThumbController@index')
    ->where([
        'query' => '[A-Za-z0-9\:\;\-]+',
        'file'  => '[A-Za-z0-9\/\.\-\_]+',
    ])
    ->name('thumb');


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});


Route::get('locale/{locale}', function($locale) {
    \Session::put('locale', $locale);
    return redirect()->back();
  });