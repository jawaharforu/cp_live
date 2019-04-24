@extends('layouts.inner')
@section('content')
<div class="container">
    <div class="row justify-content-md-center">
        <div class="col-sm-auto">
            <div class="title register-title">
                <h3 class="header">Profile</h3>
            </div>

            <form name="registration_form" id="registration_form" action="/update-profile" method="post" role="form">

                <div class="c-group">
                    @if ( Session::get('message') != '' )
                        <div class="alert alert-{{ Session::get('message_type') }}">
                            {{ Session::get('message') }}
                        </div>
                    @endif
                    {{ csrf_field() }}
                    <div class="card text-center">
                        <div class="card-body">
                            <h6 class="card-title text-uppercase">Email</h6>
                            <div class="w-50 m-auto">
                                <input type="text" name="name" value="{{$profile->name}}" class="form-control input-decor"
                                       placeholder="" required/>
                            </div>
                        </div>
                    </div>

                    <div class="card text-center">
                        <div class="card-body">
                            <h6 class="card-title text-uppercase">Mobile Number</h6>
                            <div class="w-50 m-auto">
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="cc-span">+91</span>
                                    </div>
                                    <input value="+91" id="country_code" name="country_code" type="hidden"/>
                                    <input type="number" id="mobile" name="mobile" class="form-control input-decor" value="{{str_replace('+91','',$profile->mobile)}}" required readonly />
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="card text-center">
                        <div class="card-body">
                            <h6 class="card-title text-uppercase">Email</h6>
                            <div class="w-50 m-auto">
                                <input type="email" name="email" value="{{$profile->email}}" class="form-control input-decor"
                                       placeholder="" required readonly/>
                            </div>
                        </div>
                    </div>

                    <div class="card text-center">
                        <div class="card-body">
                            <h6 class="card-title text-uppercase">Create Password</h6>
                            <div class="w-50 m-auto">
                                <input type="password" name="password" class="form-control input-decor"
                                       placeholder=""/>
                            </div>
                        </div>
                    </div>

                    <div class="card text-center">
                        <div class="card-body">
                            <h6 class="card-title text-uppercase">Confirm Password</h6>
                            <div class="w-50 m-auto">
                                <input type="password" name="password_confirmation"
                                       class="form-control input-decor"
                                       placeholder=""/>
                            </div>
                        </div>
                    </div>

                    <div class="login-btn-group d-flex flex-column">
                        <button type="submit" id="login-btn"
                                class="btn btn-secondary flat-btn">Update
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
@stop
