
<div id="navbar-main">
    <div class="clearfix"> </div>

    @auth
        <nav class="navbar navbar-expand-md navbar-light" style="background:#fff">
            @else
                <nav class="navbar navbar-expand-md navbar-light" style="background:#21469b">
                    @endauth

                    <div class="container" style="padding: 5px 20px 20px">
                        <div class="navbar-header">
                            <a class="navbar-brand" href="#">
                                @auth
                                    <img alt="PSI-S" id="logo_small" src="/images/logo_small.png">
                                @else
                                    <img alt="PSI-S" src="/images/logo.png">
                                @endauth
                            </a>
                        </div>
                        <div class="hrms">
                            @auth
                                <img alt="PSI-S" src="/images/hrms1.png">
                            @else
                                <img alt="PSI-S" src="/images/hrms.png">
                            @endauth
                        </div>
                    </div>
                    <div style="background: #21469b">
                        <div class="container" >
                            @auth
                                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                                    <span class="navbar-toggler-icon"></span>
                                </button>
                                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                    <!-- Left Side Of Navbar -->
                                    <ul class="navbar-nav mr-auto">
                                        <li class="nav-item dropdown">
                                            <a id="master_data" class="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <i class="fas fa-home"></i>  @lang('nav.MasterData') <span class="caret"></span>
                                            </a>
                                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                                <li class="dropdown">
                                                    <a class="dropdown-toggle dropdown-item" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">@lang('nav.Users')</a>
                                                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                                        <li><a class="dropdown-item" href="{{ route('users.index') }}">User List</a></li>
                                                        <li><a class="dropdown-item" href="{{ route('users.create') }}"> Create User</a></li>

                                                    </ul>
                                                </li>
                                                <li class="dropdown">
                                                    <a class="dropdown-toggle dropdown-item" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Employees</a>
                                                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                                        <li><a class="dropdown-item" href="{{ route('employees') }}">@lang('nav.Employee')</a></li>
                                                        <li><a class="dropdown-item" href="{{ route('employee.skill') }}"> Employee Skills</a></li>
                                                        <li><a class="dropdown-item" href="{{ route('availability.add') }}"> Employee Availability</a></li>

                                                    </ul>
                                                </li>

                                                <li class="dropdown">
                                                    <a class="dropdown-toggle dropdown-item" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Companies</a>
                                                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                                        <li><a class="dropdown-item" href="{{ route('company.create') }}">@lang('nav.Company')</a></li>
                                                        <li><a class="dropdown-item" href="{{ route('shift.add') }}"> Company Shift</a></li>

                                                    </ul>
                                                </li>
                                            </ul>

                                        </li>
                                        <li class="nav-item dropdown">
                                            <a id="shift_management" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                                <i class="far fa-clock"></i>

                                                @lang('nav.ShiftManagement') <span class="caret"></span>
                                            </a>

                                            <div class="dropdown-menu dropdown-menu-left" aria-labelledby="shift_management">
                                                <a class="dropdown-item" href="{{ route('pages.shift') }}"> Company Shift </a>
                                                <a class="dropdown-item" href="{{route('sheet.dessert')}}"> Self Sheet </a>
                                                <a class="dropdown-item" href="#"> Attendance Management </a>
                                            </div>
                                        </li>
                                        <!-- company login as -->
                                        @php
                                            $username = \Session::get('username');
                                            $companies = \Session::get('user_companies');

                                            $primaryCompany = \Session::get('primary_company');
                                            $language = \Session::get('user_language');
                                            $user_id = \Session::get('user_id');
                                        @endphp
                                        <li class="nav-item dropdown">
                                            <a id="shift_management" class="nav-link dropdown-toggle company_default_select" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" >
                                                <i class="fas fa-sign-in-alt"></i>
                                                {{isset($primaryCompany->name)?'Logged As '.$primaryCompany->name:'Primary Company not set'}} <span class="caret"></span>
                                            </a>

                                            <div class="dropdown-menu dropdown-menu-left" aria-labelledby="shift_management">
                                                @foreach($companies as $company)
                                                    @if(isset($primaryCompany->name) && $primaryCompany->name !==$company->name)
                                                        <a class="dropdown-item" href="{{route('changecompany',['change_to'=>$company->id,'name'=>$company->name])}}" > {{$company->name}} </a>
                                                    @endif
                                                @endforeach
                                            </div>
                                            {{--{{dd($primaryCompany)}}--}}
                                        </li>

                                    </ul>
                                @endauth
                                <!-- Right Side Of Navbar -->
                                    <ul class="navbar-nav ml-auto">
                                        <!-- Authentication Links -->
                                        @guest
                                            {{--<!-- <li class="nav-item">
                                                <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                                            </li> -->--}}
                                        @else
                                            {{--<!--  <li class="nav-item">
                                                 <a class="nav-link" href="{{ route('employees') }}">{{ __('Employees') }}</a>
                                             </li> -->--}}


                                            <li class="nav-item dropdown">
                                                <a id="setting" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                                    <i class="fas fa-cog"></i> @lang('nav.Setting') <span class="caret"></span>
                                                </a>

                                                <div class="dropdown-menu dropdown-menu-left" aria-labelledby="setting">
                                                    <a class="dropdown-item" href="#">
                                                        Alert Management
                                                    </a>
                                                </div>
                                            </li>

                                            <li class="nav-item dropdown">
                                                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                                    <i class="fas fa-user"></i>


                                                    {{( $username )}} <span class="caret"></span>
                                                </a>

                                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                                    <a class="dropdown-item" href="{{route('profile', $user_id)}}">Profile</a>
                                                    <a class="dropdown-item" href="#" id="logout">Logout</a>

                                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                                       onclick="event.preventDefault();
                                        document.getElementById('logout-form').submit();">
                                                        {{ __('Logout') }}
                                                    </a>

                                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                                        @csrf
                                                    </form>
                                                </div>
                                            </li>
                                            <li class="nav-item dropdown dropdown-menu-left">
                                                {!! Form::open(['method' => 'POST', 'route' => 'changelocale', 'class' => 'form-inline navbar-select']) !!}
                                                <div class="form-group @if($errors->first('locale')) has-error @endif">
                                                    <span aria-hidden="true"></span>
                                                    {!! Form::select(
                                                        'locale',
                                                        ['en' => 'EN', 'ja' => 'JA'],
                                                        \App::getLocale(),
                                                        [
                                                            'id'       => 'locale',
                                                            'class'    => 'form-control',
                                                            'required' => 'required',
                                                            'style'   =>  'font-size:11px;height:35px;border:none',
                                                            'onchange' => 'this.form.submit()',
                                                        ]
                                                    ) !!}
                                                    <a id="master_data" class="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                        {{ $errors->first('locale') }}
                                                    </a>
                                                </div>

                                                <div class="btn-group pull-right sr-only">
                                                    {!! Form::submit("Change", ['class' => 'btn btn-success']) !!}
                                                </div>
                                                {!! Form::close() !!}

                                            </li>
                                        @endguest

                                    </ul>
                                </div>

                        </div>
                    </div>
                </nav>

                <script type="text/javascript">
                    $(document).ready(function(){
                        $('.dropdown-menu a.test').on("click", function(e){
                            $(this).next('ul').toggle();
                            e.stopPropagation();
                            e.preventDefault();
                        });
                    });
                    (function($){
                        $('.dropdown-menu a.dropdown-toggle').on('click', function(e) {
                            if (!$(this).next().hasClass('show')) {
                                $(this).parents('.dropdown-menu').first().find('.show').removeClass("show");
                            }
                            var $subMenu = $(this).next(".dropdown-menu");
                            $subMenu.toggleClass('show');

                            $(this).parents('li.nav-item.dropdown.show').on('hidden.bs.dropdown', function(e) {
                                $('.dropdown-submenu .show').removeClass("show");
                            });

                            return false;
                        });
                    })(jQuery)

                    $("#logo_small").click(function () {
                        location.href = "{{route('dashboard')}}";
                    });


                    $("#logout").click(function(){
                        swal({
                            title: "Are you sure?",
                            text: "Your will not be able to recover this imaginary file!",
                            type: "warning",
                            buttons:true,
                            showCancelButton: true,
                            confirmButtonClass: "btn-warning",
                            confirmButtonText: "Yes, delete it!",
                            closeOnConfirm: false
                        })
                            .then((willDelete) => {
                                if (willDelete) {
                                    window.location = "{{route('logout')}}";
                                    }
                                else {
                                    swal("Your imaginary file is safe!");
                                }
                            });
                    });
                </script>