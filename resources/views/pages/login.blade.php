@extends('layouts.default')
@section('content')
    <div class="container login">
        <div class="row justify-content-md-center">
            <div class="wrapper">
                <div class="title login-title">
                    <h3 class="header">Login</h3>
                </div>
                <form name="login_form" id="login_form" action="/login" method="post" role="form">

                    <div class="c-group">
                        @if ( Session::get('message') != '' )
                            <div class='alert alert-danger'>
                                {{ Session::get('message') }}
                            </div>
                        @endif
                        {{ csrf_field() }}
                        <div class="card text-center">
                            <div class="card-body">
                                <h6 class="card-title text-uppercase">Email / Mobile Number</h6>
                                <div class="w-50 m-auto">
                                    <input type="text" name="email" class="form-control input-decor"
                                           placeholder=""/>
                                </div>
                            </div>
                        </div>

                        <div class="card text-center">
                            <div class="card-body">
                                <h6 class="card-title text-uppercase">Password</h6>
                                <div class="w-50 m-auto">
                                    <input type="password" name="password" class="form-control input-decor-default"
                                           placeholder="********"/>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="login-btn-group d-flex flex-column w-100">
                        <button id="login-btn" type="submit" class="btn btn-secondary">Login</button>
                        <button id="register-btn" type="button" class="btn btn-link">Forgot your password?</button>
                    </div>
                </form>

            </div>
        </div>
    </div>
@stop