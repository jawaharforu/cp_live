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
                <div class="p-4">
                    <div class="calendar"></div>
                </div>
                <div class="shadow p-3 bg-white rounded">
                    <div class="card">
                        <div style="overflow:hidden;">
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-8 offset-md-2 offset-sm-2 justify-content-center align-items-center">
                                    <div id="datetimepicker"></div>
                                    {{ csrf_field() }}
                                    <input type="hidden" name="doctor_id" id="doctor_id" value="3" />
                                    <input type="hidden" name="date" id="date" value="<?php echo date('d-m-Y'); ?>" />
                                    <input type="hidden" name="time" id="time" value="<?php echo date('h:i a'); ?>"/>
                                    <input type="hidden" name="schedule_date" id="my_hidden_input" value="<?php echo date('d-m-Y h:i a'); ?>">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="box mb-3"><?php echo date('d-m-Y h:i a'); ?></div>
                <input type="submit" class="btn btn-orng mb-5 w-100" value="BOOK NOW">
            </form>
            </div>
            
        </div>
    </div>
@stop
@push('head')
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.3.1/semantic.min.css">
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/prism/1.13.0/themes/prism.min.css">
<link rel="stylesheet" href="//use.fontawesome.com/releases/v5.0.9/css/all.css">
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.3.1/components/icon.min.css">
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css">
<link rel="stylesheet" type="text/css" href="/demo/css/style.css"/>
<link rel="stylesheet" type="text/css" href="/demo/css/ui.css"/>
<link rel="stylesheet" type="text/css" href="/dist/css/pignose.calendar.min.css"/>
<link rel="stylesheet" type="text/css" href="/css/css_bootstrap-datetimepicker.css"/>
@endpush
@push('scripts')
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.3.1/semantic.min.js"></script>
<script type="text/javascript" src="dist/js/pignose.calendar.full.min.js"></script>
<script type="text/javascript" src="/js/moment.js"></script>
<script type="text/javascript" src="/js/js_bootstrap-datetimepicker.js"></script>
<script>
$(function() {
    function onSelectHandler(date, context) {
        /**
            * @date is an array which be included dates(clicked date at first index)
            * @context is an object which stored calendar interal data.
            * @context.calendar is a root element reference.
            * @context.calendar is a calendar element reference.
            * @context.storage.activeDates is all toggled data, If you use toggle type calendar.
            * @context.storage.events is all events associated to this date
            */

        var $element = context.element;
        var $calendar = context.calendar;
        var $box = $('.box').show();
        var text = '';

        if (date[0] !== null) {
            text += date[0].format('DD-MM-YYYY');
        }

        if (date[0] !== null && date[1] !== null) {
            text += ' ~ ';
        }
        else if (date[0] === null && date[1] == null) {
            text += 'nothing';
        }

        if (date[1] !== null) {
            text += date[1].format('DD-MM-YYYY');
        }
        $('#date').val(text);
        $box.text(text + " " + $('#time').val());
        $('#my_hidden_input').val(text + " " + $('#time').val());
    }
    
    $('.calendar').pignoseCalendar({
		theme: 'blue', // light, dark, blue
        select: onSelectHandler
	});
    $('#datetimepicker').datetimepicker({
        inline: true,
        sideBySide: true,
        format: 'LT'
    });
    $('#datetimepicker').on('dp.change', function(event) {
        //console.log(moment(event.date).format('MM/DD/YYYY h:mm a'));
        console.log(event.date.format('MM/DD/YYYY h:mm a'));
        //$('#selected-date').text(event.date);
        var formatted_date = event.date.format('h:mm a');
        $('#time').val(formatted_date);
        $('.box').text($('#date').val() + " " + formatted_date);
        $('#my_hidden_input').val($('#date').val() + " " + formatted_date);
    });
});
</script>
@endpush