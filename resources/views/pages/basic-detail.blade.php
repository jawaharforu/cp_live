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
                {{ csrf_field() }}
                <div class="form-row">
                    <div class="form-group col-md-6">
                    <label for="inputEmail4">Age</label>
                    <input type="text" class="form-control" name="age" required id="inputEmail4" placeholder="Age">
                    </div>
                    <div class="form-group col-md-6">
                    <label for="inputPassword4">Sex</label>
                    <input type="text" class="form-control" name="sex" required id="inputPassword4" placeholder="Sex">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputAddress">Brief about your problem</label>
                    <textarea class="form-control" id="inputAddress" name="problem" required rows="3"></textarea>
                </div>
                <input type="submit" class="btn btn-orng mb-5 w-100" value="Continue">
            </form>
            </div>
            
        </div>
    </div>
@stop