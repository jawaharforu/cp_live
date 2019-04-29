@extends('layouts.inner')
@section('content')
<div class="container">
        <div class="row justify-content-md-center">
            
            <div class="col-md-6">
            <form method="post" action="">
                <div class="card bg-info text-white  h-9 justify-content-center align-items-center">
                    <div class="card-body mt-2"><h2>Book Appoinment</h2></div>
                </div>
                @if ( Session::get('message') != '' )
                    <div class='mt-2 align-items-center alert alert-{{ Session::get("message_type") }}'>
                        {{ Session::get('message') }}
                    </div>
                @endif
                <div class="h-9 justify-content-center align-items-center">
                    <p>Please make a payment of Rs.1200 for medicine</p>
                </div>
            </form>
            </div>
            
        </div>
    </div>
@stop