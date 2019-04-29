<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Request;

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
Route::group(['middleware' => ['web', '\App\Http\Middleware\CheckLoggedin']], function () {
    Route::any('customer-dashboard', 'MainController@getDashboard');
    Route::get('basic-details', function(){
        return view('pages.basic-detail');
    });
    Route::post('basic-details', function(){
        Session::put('basic_details', Request::all());
        return redirect('book-appoinment');
    });
    Route::get('book-appoinment', 'MainController@getBookAppoinment');
    Route::post('book-appoinment', 'MainController@postBookAppoinment');
    Route::get('make-payment', function(){
        return view('pages.make-payment');
    });
    Route::get('payment-success', function(){
        return view('pages.payment-success');
    });
    Route::any('profile', 'MainController@profile');
    Route::post('update-profile', 'MainController@updateProfile');
});
