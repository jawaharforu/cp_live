<?php

namespace App\Http\Middleware;

use Closure;
use CRUDBooster;

class CheckLoggedin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if (CRUDBooster::myId() == '') {
            $url = url('login');
            return redirect($url)->with('message', trans('crudbooster.not_logged_in'));
        }
        return $next($request);
    }
}
