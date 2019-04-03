@extends('layouts.default')
@section('content')

    <div class="container">
        <div class="row justify-content-md-center">
            <div class="col-sm-auto">
                <div class="title">
                    <h3 class="header"><img src="/img/curepeople_logo.png" /></h3>
                    <p class="sub-header">preventive ayurveda</p>
                </div>

                <div id="introIndicators" class="carousel slide" data-ride="carousel">

                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <p>Have a live consultation with in minutes</p>
                        </div>
                        <div class="carousel-item">
                            <p>Have a live consultation with in minutes</p>
                        </div>
                        <div class="carousel-item">
                            <p>Have a live consultation with in minutes</p>
                        </div>
                    </div>
                    <ol class="carousel-indicators">
                        <li data-target="#introIndicators" data-slide-to="0" class="active"></li>
                        <li data-target="#introIndicators" data-slide-to="1"></li>
                        <li data-target="#introIndicators" data-slide-to="2"></li>
                    </ol>
                </div>

                <div class="login-btn-group d-flex flex-column">
                    <a href="{{ route('getLogin') }}" id="login-btn" type="button" class="btn btn-secondary">
                        Login
                    </a>
                    <button id="fb-btn" type="button" class="btn btn-secondary">Connect With Facebook</button>
                    <a href="{{ route('getRegister') }}" id="register-btn" type="button" class="btn btn-link">
                        Have an account? Register
                    </a>
                </div>

                <div class="terms d-flex justify-content-center text-center w-100">
                    <p>By continuing you agree to our Terms & Conditions</p>
                </div>
            </div>
        </div>
    </div>
@stop
