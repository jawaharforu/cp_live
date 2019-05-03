<!doctype html>
<html>
<head>
    @include('includes.head')
</head>
<body>
<div>
    <div class="colorlib-loader"></div>
    <div id="page">
        @yield('content')
        @include('includes.footer')
    </div>
    @include('includes.script')
</div>
</body>
</html>
