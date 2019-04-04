@extends('layouts.default')
@section('content')
    <div class="container">
        <div class="row justify-content-md-center">
            <div class="col-sm-auto">
                <div class="title register-title">
                    <h3 class="header">Register</h3>
                </div>

                <form name="registration_form" id="registration_form" action="/register" method="post" role="form">

                    <div class="c-group">
                        @if ( Session::get('message') != '' )
                            <div class='alert alert-danger'>
                                {{ Session::get('message') }}
                            </div>
                        @endif
                        {{ csrf_field() }}
                        <input id="csrf" type="hidden" name="csrf"/>
                        <input id="code" type="hidden" name="code"/>
                        <input type="hidden" name="name" value="{{$ip}}"/>

                        <div class="card text-center">
                            <div class="card-body">
                                <h6 class="card-title text-uppercase">Mobile Number</h6>
                                <div class="w-50 m-auto">
                                    <div class="input-group mb-3">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text" id="cc-span">+91</span>
                                        </div>
                                        <input value="+91" id="country_code" name="country_code" type="hidden"/>
                                        <input type="number" id="mobile" name="mobile" class="form-control input-decor"
                                               placeholder="" maxlength="10" required
                                               oninput="this.value=this.value.slice(0,this.maxLength)"/>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="card text-center">
                            <div class="card-body">
                                <h6 class="card-title text-uppercase">Email</h6>
                                <div class="w-50 m-auto">
                                    <input type="email" name="email" class="form-control input-decor"
                                           placeholder="xyz@gmail.com" required/>
                                </div>
                            </div>
                        </div>

                        <div class="card text-center">
                            <div class="card-body">
                                <h6 class="card-title text-uppercase">Create Password</h6>
                                <div class="w-50 m-auto">
                                    <input type="password" name="password" class="form-control input-decor-default"
                                           placeholder="********" required/>
                                </div>
                            </div>
                        </div>

                        <div class="card text-center">
                            <div class="card-body">
                                <h6 class="card-title text-uppercase">Confirm Password</h6>
                                <div class="w-50 m-auto">
                                    <input type="password" name="password_confirmation"
                                           class="form-control input-decor-default"
                                           placeholder="********" required/>
                                </div>
                            </div>
                        </div>

                        <div class="login-btn-group d-flex flex-column">
                            <button type="button" onclick="smsLogin();" id="login-btn"
                                    class="btn btn-secondary flat-btn">Submit
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
@stop