@extends('layouts.default')
@section('content')
    <div class="container">
        <div class="row justify-content-md-center">
            <div class="col-sm-auto">
                <div class="title register-title">
                    <h3 class="header">Register</h3>
                </div>

                <form name="registraion_form" id="registraion_form" action="/register" method="post" role="form">

                    <div class="c-group">
                        @if ( Session::get('message') != '' )
                            <div class='alert alert-danger'>
                                {{ Session::get('message') }}
                            </div>
                        @endif
                        {{ csrf_field() }}
                        <div class="card text-center">
                            <div class="card-body">
                                <h6 class="card-title text-uppercase">Mobile Number</h6>
                                <div class="w-50 m-auto">
                                    <input type="hidden" name="name" value="{{$ip}}"/>
                                    <input type="number" name="mobile" class="form-control input-decor"
                                           placeholder=""/>
                                </div>
                            </div>
                        </div>

                        <div class="card text-center">
                            <div class="card-body">
                                <h6 class="card-title text-uppercase">Email</h6>
                                <div class="w-50 m-auto">
                                    <input type="email" name="email" class="form-control input-decor"
                                           placeholder="xyz@gmail.com"/>
                                </div>
                            </div>
                        </div>

                        <div class="card text-center">
                            <div class="card-body">
                                <h6 class="card-title text-uppercase">Create Password</h6>
                                <div class="w-50 m-auto">
                                    <input type="password" name="password" class="form-control input-decor-default"
                                           placeholder="********"/>
                                </div>
                            </div>
                        </div>

                        <div class="card text-center">
                            <div class="card-body">
                                <h6 class="card-title text-uppercase">Confirm Password</h6>
                                <div class="w-50 m-auto">
                                    <input type="password" name="password_confirmation"
                                           class="form-control input-decor-default"
                                           placeholder="********"/>
                                </div>
                            </div>
                        </div>

                        <div class="login-btn-group d-flex flex-column">
                            <button id="login-btn" type="submit" class="btn btn-secondary">Submit</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
@stop