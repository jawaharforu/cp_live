@extends('layouts.inner')
@section('content')
<div class="container">
        <div class="row justify-content-md-center">
            
            <div class="col-md-6">
            <form method="post" action="">
                <div class="card bg-info text-white  h-9 justify-content-center align-items-center">
                    <div class="card-body mt-2"><h2>Book Appoinment</h2></div>
                </div>
                <div class="h-9 success-msg" style="text-align: center;">
                    <p class="mt-5" style="font-size: 40px;">Payment Success</p>
                    <img src="/img/check.png" class="m-100" />
                    <p class="mt-5" style="font-size: 25px; width: 70%; margin: auto;">Live Consultation Scheduled on 2-2-2020 10:30 am</p>
                </div>
            </form>
            </div>
            
        </div>
    </div>
@stop