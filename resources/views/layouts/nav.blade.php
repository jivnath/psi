<style>
    .footer_message {
        background: #21469b2e;
        margin-bottom: -8px;
    }


</style>
<div id="navbar-main">
    <div class="clearfix"></div>
    @if(Auth::guard('employee')->check())
        @php
            $employee_name = \Session::get('employee_cell_no');
		    $employee_psi_number = \Session::get('user_psi_number');
        @endphp


        <nav class="navbar navbar-expand-md navbar-light"
             style="background: #fff">

            <div class="container">
                <div class="navbar-header">
                    <a class="navbar-brand" href="{{route('employee.dashboard')}}"> <img alt="PSI-S"
                                                                                         src="/images/logo_small.png">

                    </a>
                </div>

            </div>
            <div style="background: #21469b">
                <div class="container">
                    <button class="navbar-toggler" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent"
                            aria-controls="navbarSupportedContent" aria-expanded="false"
                            aria-label="{{ __('Toggle navigation') }}">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse " id="navbarSupportedContent">
                        <!-- Left Side Of Navbar -->
                        <ul class="navbar-nav ml-auto">

                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="https://example.com" id="master_data"
                                   data-toggle="dropdown" aria-haspopup="true"
                                   aria-expanded="false">@lang('employee.Settings')</a>
                                <div class="dropdown-menu" aria-labelledby="master_data">
                                    <a class="dropdown-item" href="{{ url('/employee/profile') }}"><i
                                                class="fa fa-address-book"></i>@lang('employee.Profile')</a>
                                    <a class="dropdown-item" href="{{ route('employee.logout') }}"><i
                                                class="fas fa-sign-out-alt"></i>@lang('nav.Logout')</a>
                                </div>
                            </li>

                            <li class="nav-item dropdown">{!!
								Form::open(['method' => 'POST', 'route' => 'changelocale',
								'class' => 'form-inline navbar-select']) !!}
                                <div
                                        class="form-group @if($errors->first('locale')) has-error @endif">
                                    <span aria-hidden="true"></span> {!! Form::select( 'locale',
									['en' => 'EN', 'ja' => 'JA'], \App::getLocale(), [ 'id' =>
									'locale', 'class' => 'form-control', 'required' => 'required',
									'style' => 'font-size:11px;height:35px;margin-top:2px;border:none', 'onchange'
									=> 'this.form.submit()', ] ) !!} <a id="master_data"
                                                                        class="nav-link"
                                                                        id="navbarDropdown"
                                                                        role="button" data-toggle="dropdown"
                                                                        aria-haspopup="true"
                                                                        aria-expanded="false"> {{ $errors->first('locale') }} </a>
                                </div>

                                <div class="btn-group pull-right sr-only">{!!
									Form::submit("Change", ['class' => 'btn btn-success']) !!}</div>
                                {!! Form::close() !!}

                            </li>

                        </ul>
                    </div>

                </div>
            </div>
        </nav>
    @else
        @auth
            <nav class="navbar navbar-expand-md navbar-light"
                 style="background: #fff">
                @else
                    <nav class="navbar navbar-expand-md navbar-light"
                         style="background: #21469b">
                        @endauth

                        <div class="container">
                            <div class="navbar-header">
                                <a class="navbar-brand" href="#"> @auth <img alt="PSI-S"
                                                                             id="logo_small"
                                                                             src="/images/logo_small.png"> @else <img
                                            alt="PSI-S" src="/images/logo.png"> @endauth
                                </a>
                            </div>
                            <div class="hrms">
                                @auth
                                    <img alt="PSI-S" style='width: 100%;height: 100%' src="/images/hrms1.png">
                                @else

                                    <img alt="PSI-S" style='width: 100%;height: 100%' src="/images/hrms.png">
                                @endauth
                            </div>
                        </div>
                        <div style="background: #21469b">
                            <div class="container">
                                @auth
                                    <button class="navbar-toggler" type="button" data-toggle="collapse"
                                            data-target="#navbarSupportedContent"
                                            aria-controls="navbarSupportedContent" aria-expanded="false"
                                            aria-label="{{ __('Toggle navigation') }}">
                                        <span class="navbar-toggler-icon"></span>
                                    </button>
                                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                        <!-- Left Side Of Navbar -->
                                        <ul class="navbar-nav mr-auto">
                                            <li class="nav-item dropdown"><a id="master_data"
                                                                             class="nav-link dropdown-toggle"
                                                                             id="navbarDropdown"
                                                                             role="button" data-toggle="dropdown"
                                                                             aria-haspopup="true"
                                                                             aria-expanded="false"> <i
                                                            class="fas fa-home"></i>
                                                    @lang('nav.MasterData') <span class="caret"></span>
                                                </a>
                                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                                    <li class="dropdown"><a class="dropdown-toggle dropdown-item"
                                                                            href="#" id="navbarDropdown" role="button"
                                                                            data-toggle="dropdown" aria-haspopup="true"
                                                                            aria-expanded="false"><i
                                                                    class="fa fa-user"></i>@lang('nav.Users')</a>
                                                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                                            <li><a class="dropdown-item"
                                                                   href="{{ route('users.index') }}"><i
                                                                            class="	fa fa-address-book"></i>@lang('employee.UserList')
                                                                </a></li>
                                                            <li><a class="dropdown-item"
                                                                   href="{{ route('roles.index') }}"><i
                                                                            class="fas fa-pen-alt"></i>@lang('employee.Roles')
                                                                </a></li>
                                                            <li><a class="dropdown-item"
                                                                   href="{{ route('update.user') }}"><i
                                                                            class="fas fa-key"></i> @lang('employee.Permission')
                                                                </a></li>

                                                        </ul>
                                                    </li>
                                                    <li class="dropdown"><a class="dropdown-toggle dropdown-item"
                                                                            href="#" id="navbarDropdown" role="button"
                                                                            data-toggle="dropdown" aria-haspopup="true"
                                                                            aria-expanded="false"><i
                                                                    class="fa fa-users"></i>@lang('employee.Employees')
                                                        </a>
                                                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                                            <li><a class="dropdown-item"
                                                                   href="{{ route('employees.show') }}"><i
                                                                            class="fa fa-user"></i>@lang('nav.Employee')
                                                                </a>
                                                            </li>
                                                            <li><a class="dropdown-item"
                                                                   href="{{ route('manageSkills') }}"><i
                                                                            class="fa fa-bullseye"></i> @lang('employee.Skills')
                                                                </a></li>
                                                            {{-- <li><a class="dropdown-item"
                                                                   href="{{ route('employee.skill') }}"><i
                                                                            class="fas fa-user-graduate"></i> @lang('employee.EmployeeSkills')
                                                                </a></li> --}}
                                                            <li><a class="dropdown-item"
                                                                   href="{{ route('availability.index') }}"><i
                                                                            class="fas fa-user-clock"></i> @lang('employee.EmployeeAvailability')
                                                                </a></li>

                                                        </ul>
                                                    </li>

                                                    <li class="dropdown"><a class="dropdown-toggle dropdown-item"
                                                                            href="#" id="navbarDropdown" role="button"
                                                                            data-toggle="dropdown" aria-haspopup="true"
                                                                            aria-expanded="false"><i
                                                                    class="fas fa-city"></i>@lang('employee.Companies')
                                                        </a>
                                                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                                            <li><a class="dropdown-item"
                                                                   href="{{ route('manageCompanies') }}"><i
                                                                            class="fas fa-briefcase"></i>@lang('employee.CompanyManage')
                                                                </a></li>
                                                            <li><a class="dropdown-item"
                                                                   href="{{ route('shift.add') }}"><i
                                                                            class="fa fa-clock" aria-hidden="true"></i>
                                                                    @lang('employee.SubsectionShift')</a></li>
                                                            <li><a class="dropdown-item"
                                                                   href="{{ route('leader.create') }}"><i
                                                                            class="fa fa-user-circle"
                                                                            aria-hidden="true"></i>
                                                                    @lang('employee.SectionManager')</a></li>

                                                        </ul>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li class="nav-item dropdown"><a id="shift_management"
                                                                             class="nav-link dropdown-toggle" href="#"
                                                                             role="button"
                                                                             data-toggle="dropdown" aria-haspopup="true"
                                                                             aria-expanded="false" v-pre> <i
                                                            class="far fa-clock"></i>

                                                    @lang('nav.ShiftManagement') <span class="caret"></span>
                                                </a>

                                                <div class="dropdown-menu dropdown-menu-left"
                                                     aria-labelledby="shift_management">
                                                    <a class="dropdown-item" href="{{ route('pages.shift') }}"><i
                                                                class="fas fa-table"></i>
                                                        @lang('employee.SectionShift') </a>
                                                    <a class="dropdown-item"
                                                       href="{{route('sheet.dessert')}}">
                                                        <i class="far fa-calendar-alt" aria-hidden="true"></i>
                                                        @lang('employee.SelfSheet') </a>
                                                </div>
                                            </li>
                                            <li class="nav-item dropdown"><a id="shift_management"
                                                                             class="nav-link dropdown-toggle" href="#"
                                                                             role="button"
                                                                             data-toggle="dropdown" aria-haspopup="true"
                                                                             aria-expanded="false" v-pre> <i
                                                            class="fa fa-line-chart"></i>

                                                    @lang('employee.Reports') <span class="caret"></span>
                                                </a>

                                                <div class="dropdown-menu dropdown-menu-left"
                                                     aria-labelledby="report">
                                                    <a class="dropdown-item"
                                                   href="{{ route('company.details') }}"> <i
                                                            class="fa fa-building"
                                                            aria-hidden="true"></i>@lang('employee.Company')</a>
                                                    <a class="dropdown-item"
                                                       href="{{ route('employee.detail.report') }}"><i
                                                                class="fa fa-users" aria-hidden="true"></i>
                                                        @lang('employee.EmployeeDetails')</a>
                                                    <a class="dropdown-item"
                                                       href="{{ route('employee.worksheet.report') }}"><i
                                                                class="fa fa-clock" aria-hidden="true"></i>
                                                        @lang('employee.EmployeeWorksheet') </a>
                                                    <a class="dropdown-item" href="{{route('report_total_necessary')}}">
                                                        <i class="fas fa-user-check"></i>
                                                        @lang('employee.TotalNecessary')</a>

                                                    <a class="dropdown-item" href="{{route('selfsheet.report')}}">
                                                        {{--<i class="fas fa-user-check"></i>--}}
                                                        @lang('employee.SelfSheetReport')</a>

                                                    <a class="dropdown-item" href="{{route('attendance.mgmt')}}"><i
                                                                class="fas fa-book"></i>
                                                        @lang('employee.AttendanceManagement')</a>
                                                </div>
                                            </li>
                                            <!-- company login as -->
                                            @php $username = \Session::get('username'); $companies =
							\Session::get('user_companies'); $primaryCompany =
							\Session::get('primary_company'); $language =
							\Session::get('user_language'); $user_id =
                            \Session::get('user_id');
                            $user_role=\Session::get('user_role_id'); @endphp
                                {{--@if($user_role!= 4)--}}
                                            <li class="nav-item dropdown"><a id="shift_management"
                                                                             class="nav-link dropdown-toggle company_default_select"
                                                                             href="#"
                                                                             role="button" data-toggle="dropdown"
                                                                             aria-haspopup="true"
                                                                             aria-expanded="false"> <i
                                                            class="fas fa-sign-in-alt"></i>
                                                    {{isset($primaryCompany->name)?trans('employee.LoggedAs')
                                                    .' '.$primaryCompany->name:'Primary Company not set'}} <span
                                                            class="caret"></span>
                                                </a>

                                                <div class="dropdown-menu dropdown-menu-left"
                                                     aria-labelledby="shift_management">
                                                    {{--{{dd($companies)}}--}}
                                                @foreach($companies as $company)
                                                        @if(isset($primaryCompany->name) && $primaryCompany->name
                                                        !==$company->name) <a class="dropdown-item"
                                                                              href="{{route('changecompany',['change_to'=>$company->id,'name'=>$company->name])}}">
                                                            {{$company->name}} </a> @endif @endforeach
                                                </div> {{--{{dd($primaryCompany)}}--}}</li>
                                                {{--@endif--}}

                                        </ul>
                                    @endauth
                                    <!-- Right Side Of Navbar -->
                                        <ul class="navbar-nav ml-auto">
                                            <!-- Authentication Links -->
                                            @guest {{--
							<!-- <li class="nav-item">
                                                <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                                            </li> -->
							--}} @else {{--
							<!--  <li class="nav-item">
                                                 <a class="nav-link" href="{{ route('employees') }}">{{ __('Employees') }}</a>
                                             </li> -->
							--}}


                                            <li class="nav-item dropdown"><a id="setting"
                                                                             class="nav-link dropdown-toggle" href="#"
                                                                             role="button"
                                                                             data-toggle="dropdown" aria-haspopup="true"
                                                                             aria-expanded="false" v-pre> <i
                                                            class="fas fa-envelope fa-lg"></i>
                                                    <span class="label label-success total_inbox_messages"
                                                          style="position: absolute;top: 8px;right: 7px;text-align: center;font-size: 9px;padding: 2px 3px;line-height: .9;">{{ $total=\App\Models\PsiInbox::count()}}</span>
                                                </a>

                                                <div class="dropdown-menu dropdown-menu-left"
                                                     aria-labelledby="setting" style="margin-left: -50%;">
                                                    <div style="max-height: 200px;margin: 0;padding: 0;list-style: none;overflow-x: hidden;">
                                                    </div>
                                                    @if($total>0)
                                                        <div class='messages_space'
                                                             style="max-height: 200px;margin: 0;padding: 0;list-style: none;overflow-x: hidden;">

                                                        </div>
                                                        <a class="footer_message dropdown-item text-center"
                                                           href="{{route('inbox.messages')}}">@lang('employee.SeeAllRequests')</a>

                                                    @endif
                                                    @empty($total)
                                                        <a class="footer_message dropdown-item text-center">@lang('employee.Messagesnotavailable')
                                                            </a>
                                                    @endempty

                                                </div>

                                            </li>

                                            <li class="nav-item dropdown"><a id="setting"
                                                                             class="nav-link dropdown-toggle" href="#"
                                                                             role="button"
                                                                             data-toggle="dropdown" aria-haspopup="true"
                                                                             aria-expanded="false" v-pre> <i
                                                            class="fas fa-cog"></i>
                                                    @lang('nav.Setting') <span class="caret"></span>
                                                </a>

                                                <div class="dropdown-menu dropdown-menu-left"
                                                     aria-labelledby="setting">
                                                    <a class="dropdown-item" href="{{route('viberAlert')}}"><i
                                                                class="fa fa-bell" aria-hidden="true"></i>@lang('employee.AlertManagement')
                                                       </a>
                                                </div>
                                            </li>

                                            <li class="nav-item dropdown"><a id="navbarDropdown"
                                                                             class="nav-link dropdown-toggle" href="#"
                                                                             role="button"
                                                                             data-toggle="dropdown" aria-haspopup="true"
                                                                             aria-expanded="false" v-pre> <i
                                                            class="fas fa-user"></i> {{(
									$username )}} <span class="caret"></span>
                                                </a>

                                                <div class="dropdown-menu dropdown-menu-right"
                                                     aria-labelledby="navbarDropdown">
                                                    <a class="dropdown-item" href="{{route('profile', $user_id)}}"><i
                                                                class="fa fa-address-book"></i> @lang('employee.Profile')</a>
                                                    <a class="dropdown-item" href="#" id="logout"><i
                                                                class="fas fa-sign-out-alt"></i> @lang('employee.Logout')
                                                    </a>
                                                </div>
                                            </li>
                                            <li class="nav-item dropdown">{!!
								Form::open(['method' => 'POST', 'route' => 'changelocale',
								'class' => 'form-inline navbar-select']) !!}
                                                <div
                                                        class="form-group @if($errors->first('locale')) has-error @endif">
                                                    <span aria-hidden="true"></span> {!! Form::select( 'locale',
									['en' => 'EN', 'ja' => 'JA'], \App::getLocale(), [ 'id' =>
									'locale', 'class' => 'form-control', 'required' => 'required',
									'style' => 'font-size:11px;height:35px;margin-top:2px;border:none', 'onchange'
									=> 'this.form.submit()', ] ) !!} <a id="master_data"
                                                                        class="nav-link"
                                                                        id="navbarDropdown"
                                                                        role="button" data-toggle="dropdown"
                                                                        aria-haspopup="true"
                                                                        aria-expanded="false"> {{ $errors->first('locale') }} </a>
                                                </div>

                                                <div class="btn-group pull-right sr-only">{!!
									Form::submit("Change", ['class' => 'btn btn-success']) !!}</div>
                                                {!! Form::close() !!}

                                            </li>
                                            @endguest

                                        </ul>
                                    </div>
                            </div>
                        </div>
                    </nav>
            </nav>
        @endif

        @if(!Auth::guard('employee')->check())
            @auth

                <script type="text/javascript">
                    $(document).ready(function () {
                        update();
                        $('.dropdown-menu a.test').on("click", function (e) {
                            $(this).next('ul').toggle();
                            e.stopPropagation();
                            e.preventDefault();
                        });
                    });
                    (function ($) {
                        $('.dropdown-menu a.dropdown-toggle').on('click', function (e) {
                            if (!$(this).next().hasClass('show')) {
                                $(this).parents('.dropdown-menu').first().find('.show').removeClass("show");
                            }
                            var $subMenu = $(this).next(".dropdown-menu");
                            $subMenu.toggleClass('show');

                            $(this).parents('li.nav-item.dropdown.show').on('hidden.bs.dropdown', function (e) {
                                $('.dropdown-submenu .show').removeClass("show");
                            });

                            return false;
                        });
                    })(jQuery)

                    $("#logo_small").click(function () {
                        location.href = "{{route('dashboard')}}";
                    });


                    $("#logout").click(function () {
                        swal({
                            title: "{{trans('employee.Logout')}}?",
                            text: "{{trans('employee.logout_msg')}}",
                            type: "warning",
                            buttons: true,
                            showCancelButton: true,
                            confirmButtonClass: "btn-warning",
                            confirmButtonText: "Yes, delete it!",
                            closeOnConfirm: false
                        })
                            .then((willDelete) => {
                                if (willDelete) {
                                    $.ajax({
                                        type: 'POST',
                                        data: {"_token": "{{ csrf_token() }}"},
                                        url: "{{route('logout')}}",
                                        success: function (data) {
                                            window.location.replace("{{route('login')}}");
                                        }
                                    });
                                }
                                else {

                                }
                            });
                    });

                    function update() {
                        // return false;
                        to_fill = '';
                        $.get("{{route('notification.inbox')}}", function (data, status) {
                            var obj = data;
                            $('.total_inbox_messages').html(obj.count);
                            if (obj.status != 'fail') {
                                $.each(obj.data, function (k, v) {
                                    url = "{{route('inbox.smessage') }}" + "/" + k;
                                    to_fill += '<a class="dropdown-item text-center" href="' + url + '" style="white-space:normal;border-bottom: 1px solid;width: 235px">' + v + '</a>';
                                });
                                $('.messages_space').html(to_fill);
                            }

                        });
                    }

                    setInterval(update, 10000); //every 10 secs
                </script>
@endauth
@endif