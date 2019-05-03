<?php
	date_default_timezone_set( 'UTC' );
	$SECRET_KEY          = 'c99eaa45da61577f48545c371adbd4a2';
	$TIMESTAMP           = \Carbon\Carbon::now()->timestamp;
	$USER_AGENT          = $_SERVER['HTTP_USER_AGENT'];
	$Authorization_Token = md5( $SECRET_KEY . $TIMESTAMP . $USER_AGENT );
?>

<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.js"
        integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.15.0/jquery.validate.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
<script
        src="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="https://sdk.accountkit.com/en_US/sdk.js"></script>
<script src="{{asset('js/main.js')}}"></script>

<script>
    var site_url = "{{url('/')}}";
    var user_token = document.head.querySelector('meta[name="_token"]');

    axios.defaults.headers.common['X-Authorization-Token'] = '{{$Authorization_Token}}';
    axios.defaults.headers.common['X-Authorization-Time'] = '{{$TIMESTAMP}}';
    axios.defaults.headers.common['Auth'] = user_token.content;

    $.ajaxSetup({
        headers: {'Auth': user_token.content},
        async: false
    });
</script>