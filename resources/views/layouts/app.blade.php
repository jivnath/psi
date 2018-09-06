<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{!! Request::segment(count(request()->segments())) !!} | {!! config('app.name', 'PSI-S') !!}</title>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
    <link rel="stylesheet" href="{{asset('css/animate.min.css')}}">
    <link rel="stylesheet" href="{{asset('css/bootstrap-dropdownhover.css')}}">
    <script src="{{asset('js/bootstrap-dropdownhover.js')}}"></script>
    <link href="{{ asset('css/AdminLTE.min.css') }}" rel="stylesheet">
    <link rel="stylesheet" href="{{asset('bower_components/Ionicons/css/ionicons.min.css')}}">



@yield('styles')
    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <link href="{{ asset('css/fontawesome-all.css') }}" rel="stylesheet">
</head>
  @auth
 <body style="background:#ecf0f5">
  @endauth
    <div id="app">
        <div>
            @include('layouts.nav')
        </div>
        <div>
            @include('layouts.messeges')
        </div>
        <main class="py-4" style='background: #ecf0f5;'>
        @auth
        <section class="content-header">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="#"><i class="fas fa-home"></i> Dashboard</a></li>
             <?php $segments = '';
             $total=count(Request::segments());
             ?>
              @foreach(Request::segments() as $key=> $segment)
                <?php $segments .= '/'.$segment; ?>
                <?php
                if ($key === ($total-1)){?>
                    <li class="breadcrumb-item active" aria-current="page">{{ $segment }}</li>
                    <li class="breadcrumb-item pull-right">Last Update: 3:15pm</li>
                <?php }else{
                ?>
                <li class="breadcrumb-item">
                    <a href="{{ $segments }}">{{$segment}}</a>
                </li>
                <?php }?>
            @endforeach
              </ol>
              </div>
            </section>
            @endauth
            <div class="container" style='background: #ecf0f5;'>
                @if (session('status'))
                    <div class="alert alert-success" role="alert">
                        {{ session('status') }}
                    </div>
                @endif

                @yield('content')

            </div>
        </main>
    </div>


    <!-- Scripts -->
    <script src="{{ mix('js/app.js') }}"></script>
    <script src="{{ asset('js/jquery.js') }}"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    @stack('scripts')

</body>
</html>
