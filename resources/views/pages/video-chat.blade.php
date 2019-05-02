@extends('layouts.inner')
@section('content')
<div class="container">
        <div class="row justify-content-md-center">

            <div class="col-md-6">
            <form method="post" action="">
                <div class="card bg-info text-white  h-9 justify-content-center align-items-center">
                    <div class="card-body mt-2"><h2>Video Chat</h2></div>
                </div>
                <div class="h-9 justify-content-center" style="text-align: center;">
                    <div class="caller-block  rightBlock " id="meet" >Doctor Video (My Video)</div>
                    <input type="submit" class="btn btn-orng mb-5 w-100" value="Stop">
                </div>
            </form>
            </div>

        </div>
    </div>
@stop
@push('scripts')
<script type="text/javascript" src="//meet.jit.si/external_api.js"></script>
<script>
$(function() {
    var apikey="testing01";
    const domain = 'live.curepeople.in';
    const options = {
        roomName: apikey,
        width: 100%,
        height: 100%,
        parentNode: document.querySelector('#meet'),
    };
    const api = new JitsiMeetExternalAPI(domain, options);
});
</script>
@endpush
