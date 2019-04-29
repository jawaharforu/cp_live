@extends('layouts.inner')
@section('content')
<div class="container">
        <div class="row justify-content-md-center">
            <div class="col-md-6">
                <div><img class="w-100" src="/img/curepeople-mobile_page-0006-copy.jpg" /></div>
                <div class="p-4">
                    <div class="card bg-light text-dark">
                        <button class="btn btn-info whatareyou">What are you looking for ?</button>
                        <div class="card-body">
                            <div class="schedule-list">
                                <button type="button" class="btn btn-info mb-3" data-toggle="collapse" data-target="#demo">Booked Scheduled</button>
                                <div id="demo" class="collapse">
                                    @foreach($pasentSchedule as $item)
                                        <div class="schedule-date mb-3 justify-content-center">Scheduled at <span class="s-date">{{date('d-m-Y h:i a', strtotime($item->schedule_date))}}</span></div>
                                    @endforeach
                                </div>
                            </div>
                            <p class="dashboard-text orrangecls font-weight-bold">Live Consultation</p>
                            <p class="dashboard-text">Virtual Consultation - Free</p>
                            <p class="dashboard-text">Home Remedies - Free</p>
                            <p class="dashboard-text mb-5">Preventive Medicine</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@stop
