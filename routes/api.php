<?php
	
	use Illuminate\Http\Request;
	use Illuminate\Support\Facades\Route;
	
	Route::post( 'login', [ 'uses' => 'AdminCmsUsersController@postApiLogin', 'as' => 'postApiLogin' ] );
	Route::middleware( 'auth:api' )->get( '/user', function ( Request $request ) {
		return $request->user();
	} );
