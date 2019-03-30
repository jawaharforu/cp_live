<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

class HelperServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
        view()->composer('*', function ($view) {

            $view->with('postid', '0');

        });
    }

    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {

        foreach ( glob( app_path() . '/Helpers/*.php' ) as $filename ) {
            require_once( $filename );
        }


    }
}
