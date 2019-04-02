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

Route::get('/', function () {
    return view('pages.home');
});
Route::post('forgot', ['uses' => 'AdminCmsUsersController@postForgot', 'as' => 'postForgot']);
Route::get('forgot', ['uses' => 'AdminCmsUsersController@getForgot', 'as' => 'getForgot']);
Route::post('register', ['uses' => 'AdminCmsUsersController@postRegister', 'as' => 'postRegister']);
Route::get('register', ['uses' => 'AdminCmsUsersController@getRegister', 'as' => 'getRegister']);
Route::get('logout', ['uses' => 'AdminCmsUsersController@getLogout', 'as' => 'getLogout']);
Route::post('login', ['uses' => 'AdminCmsUsersController@postLogin', 'as' => 'postLogin']);
Route::get('login', ['uses' => 'AdminCmsUsersController@getLogin', 'as' => 'getLogin']);