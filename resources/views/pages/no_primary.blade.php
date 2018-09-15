<html>
    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>
            PSI|Choose Primary Company
        </title>

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

        <link href="{{ asset('css/app.css') }}" rel="stylesheet">
        <link href="{{ asset('css/fontawesome-all.css') }}" rel="stylesheet">

    </head>
    <body>
        @php
            $username = \Session::get('username');
            $companies = \Session::get('user_companies');
            $language = \Session::get('user_language');
            $user_id = \Session::get('user_id');
        @endphp
        <div class="container" style="margin-top: 50px">
            <div class="row">
                <div class="col-md-8 offset-2">
                    <div class="box">
                        <div class="box-header"><h4>Choose Your Primary Company</h4></div>
                        <div class="box-body">
                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th> Role </th>
                                    <th> Company </th>
                                    <th> Team Leader </th>
                                    <th> Action </th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($companies as $company)
                                    <tr>
                                        <td> {{ Auth::user()->roles()->pluck('name')->implode('') }} </td>
                                        <td> {{ $company->name }} </td>
                                        <td> No </td>
                                        <td>
                                            <a class="btn btn-sm btn-primary" href="{{route('selectPrimary', $company->id)}}">Manage</a>
                                        </td>
                                    </tr>
                                @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>