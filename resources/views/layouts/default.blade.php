<!doctype html>
<html lang="en">
<head>
   @include('includes.head')
</head>
<body  id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
<div>
    @include('includes.header')
   <div id="main" class="row">
           @yield('content')
   </div>
   @include('includes.footer')
</div>
</body>
</html>
