@extends('layouts.app')
<style>
.carousel-inner>.item>a>img, .carousel-inner>.item>img, .img-responsive, .thumbnail a>img, .thumbnail>img {
    display: block;
    max-width: 100%;
    height: auto;
}
.img-circle {
    border-radius: 50%;
}
</style>

@section('title', '| Profile')

@section('content')
    @php
        $employee_name = \Session::get('employee_name');
        $employee_psi_number = \Session::get('employee_psi_number');
        $employee_retirement_date = \Session::get('employee_retirement_date');
        $employee_birth_date = \Session::get('employee_birth_date');
        $employee_cell_no = \Session::get('employee_cell_no');
        $employee_residence_card_no = \Session::get('employee_residence_card_no');
        $employee_residence_card_exp_date = \Session::get('employee_residence_card_exp_date');
        $employee_work_location = \Session::get('employee_work_location');
        $employee_country_citizenship = \Session::get('employee_country_citizenship');
        $employee_reg_officer = \Session::get('employee_reg_officer');
        $employee_hire_date = \Session::get('employee_hire_date');
        $employee_address_ip = \Session::get('employee_address_ip');
        $employee_phoetic_kanji = \Session::get('employee_phoetic_kanji');
        $employee_hourly_wage = \Session::get('employee_hourly_wage');
        $employee_status_residence = \Session::get('employee_status_residence');

        $employee_base = \Session::get('employee_base');
        $employee_for_work = \Session::get('employee_for_work');
        $employee_opt_management = \Session::get('employee_opt_management');
        $employee_contract_collection = \Session::get('employee_contract_collection');
        $employee_res_confirmation = \Session::get('employee_res_confirmation');
        $employee_sex = \Session::get('employee_sex');
        $employee_sex=($employee_sex)?$employee_sex:'Not';
        $employee_postal_code = \Session::get('employee_postal_code');
        $employee_business_content = \Session::get('employee_business_content');
        $employee_dispatch_destination = \Session::get('employee_dispatch_destination');
        $employee_name_of_facility= \Session::get('employee_name_of_facility');
        $employee_path = \Session::get('employee_path');
        $employee_one_way_rate= \Session::get('employee_one_way_rate');
        $employee_pass_price = \Session::get('employee_pass_price');
        $employee_hourly_employee = \Session::get('employee_hourly_employee');
        $employee_dependent_exemption = \Session::get('employee_dependent_exemption');
        $employee_notes = \Session::get('employee_notes');

        $employee_account = \Session::get('employee_account');
        $employee_input = \Session::get('employee_input');
        $employee_operating_status= \Session::get('employee_operating_status');
        $employee_status= \Session::get('employee_status');
        $employee_office = \Session::get('employee_office');
        $employee_old_double_registration = \Session::get('employee_old_double_registration');
        $employee_lane_employee_no = \Session::get('employee_lane_employee_no');
        $employee_phonetic = \Session::get('employee_phonetic');
        $employee_viber_install = \Session::get('employee_viber_install');
        $employee_email = \Session::get('employee_email');
        $employee_school_information = \Session::get('employee_school_information');
        $employee_place = \Session::get('employee_place');
        $employee_financial_institution = \Session::get('employee_financial_institution');
        $employee_branch_name = \Session::get('employee_branch_name');
        $employee_account_number = \Session::get('employee_account_number');
        $employee_expiration_date = \Session::get('employee_expiration_date');
        $employee_account_registration = \Session::get('employee_account_registration');

    @endphp

    <div class="row">
        <div class="col-md-3">

            <!-- Profile Image -->
            <div class="box box-primary">
                <div class="box-body box-profile">
                    <img class="profile-user-img img-responsive img-circle" src="https://adminlte.io/themes/AdminLTE/dist/img/user4-128x128.jpg" alt="User profile picture">
                    <h3 class="profile-username text-center"><?= $employee_name.'(<small>'.$employee_sex.'</small>)'?></h3>
                    <p class="text-muted text-center"><i class="fas fa-mobile-alt"></i> {{$employee_cell_no}}</p>
                    <p class="text-center">
                        @if($employee_status==1)
                            <i class="fa fa-circle text-success"></i> @lang('employee.Available')
                        @elseif($employee_status==0)
                            <i class="fa fa-circle text-danger"></i> @lang('employee.NotAvailable')
                        @endif
                    </p>

                </div>
                <!-- /.box-body -->
            </div>
            <!-- /.box -->

            <!-- About Me Box -->
            <div class="box box-primary">
                <div class="box-header with-border">
                    <center><h3 class="box-title">@lang('employee.AboutMe')</h3></center>
                </div>
                <!-- /.box-header -->
                <div class="box-body">

                    <!--     <strong><i class="fa fa-map-marker margin-r-5"></i> Location</strong> -->


                    <p class="text-muted">{{$employee_address_ip}}</p>

                    <strong><i class="fas fa-map-marker-alt"></i> @lang('employee.WorkLocation')</strong>

                    <p class="text-muted">{{$employee_work_location}}</p>
                    <hr>

                    <strong><i class="fas fa-mobile-alt"></i>@lang('employee.ContactNumber')</strong>

                    <p class="text-muted">{{$employee_cell_no}}</p>
                    <hr>
                    <strong><i class="far fa-address-card"></i> @lang('employee.ResidentCardNumber')</strong>

                    <p class="text-muted">{{$employee_residence_card_no}}</p>
                    <hr>
                    <strong><i class="far fa-clock"></i> @lang('employee.ResidenceCardExpiryDate')</strong>

                    <p class="text-muted">{{$employee_residence_card_exp_date}}</p>
                    <hr>
                    <strong><i class="far fa-calendar-alt"></i> @lang('employee.RetirementDate')</strong>

                    <p class="text-muted">{{$employee_retirement_date}}</p>
                </div>
                <!-- /.box-body -->
            </div>
            <!-- /.box -->
        </div>
        <!-- /.col -->
        <div class="col-md-6">
            <div class="nav-tabs-custom">
                <ul class="nav nav-tabs">
                    <li class="active"><a href="#about_me" data-toggle="tab">@lang('employee.Personal')</a></li>
                    <li><a href="#requests" data-toggle="tab">@lang('employee.Request')</a></li>
                </ul>
                <div class="tab-content">
                    <div class="active tab-pane" id="activity">
                        <div class="post clearfix">
                        </div>
                    </div>
                    <div class="tab-pane" id="requests">
                        <form action="{{route('inbox.store')}}" method="POST" class="form-horizontal" enctype="multipart/form-data">
                            {{-- <input type="hidden" name="_method" value="POST"> --}}
                            <input type="hidden" name="_token" value="{{ csrf_token() }}">


                            <div class="form-group">
                                <label for="language" class="col-sm-3 control-label">@lang('employee.RequestType')</label>

                                <div class="col-sm-12">
                                    <select name="type" class="form-control">
                                        <option value="profile change">@lang('employee.ProfileChange')</option>
                                        <option value="other">@lang('employee.Others')</option>
                                    </select>
                                </div>
                                <br/>
                                 <div class="form-group">
                                  <label for="exampleInputFile" class="col-sm-3 control-label">@lang('employee.BrowseFile')</label>
                                   <div class="col-sm-12">
                                       <input type="file" class="form-control" name="cfile">
                                   </div>
                                </div>
                                <div class="form-group">

                                    <label for="language" class="col-sm-3 control-label">@lang('employee.Message')</label>
                                    <div class="col-sm-12">
                                        <textarea name="message" cols="82%" rows="10" required></textarea>
                                        {{--<input type="text" style="height: 200px" class="form-control" name="message" required>--}}
                                    </div>
                                </div>


                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <button type="submit" class="btn btn-danger">@lang('employee.Send')</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="active tab-pane" id="about_me">
                        <div class="post clearfix">
                            <table class="table table-striped table-condensed">

                                @if($employee_name!=null)
                                    <tr>
                                        <td>@lang('employee.Name')</td>
                                        <td>{{$employee_name}}</td>
                                    </tr>
                                @endif

                                @if($employee_psi_number!=null)
                                    <tr>
                                        <td>@lang('employee.PSISNumber').</td>
                                        <td>{{$employee_psi_number}}</td>
                                    </tr>
                                @endif

                                @if($employee_phoetic_kanji!=null)
                                    <tr>
                                        <td>@lang('employee.PhoeticKanji')</td>
                                        <td>{{$employee_phoetic_kanji}}</td>
                                    </tr>
                                @endif

                                @if($employee_cell_no!=null)
                                    <tr>
                                        <td>@lang('employee.ContactNo').</td>
                                        <td>{{$employee_cell_no}}</td>
                                    </tr>
                                @endif

                                @if($employee_address_ip!=null)
                                    <tr>
                                        <td>@lang('employee.Address')</td>
                                        <td>{{$employee_address_ip}}</td>
                                    </tr>
                                @endif

                                @if($employee_work_location!=null)
                                    <tr>
                                        <td>@lang('employee.WorkLocation')</td>
                                        <td>{{$employee_work_location}}</td>
                                    </tr>
                                @endif

                                @if($employee_retirement_date!=null)
                                    <tr>
                                        <td>@lang('employee.RetirementDate')</td>
                                        <td>{{$employee_retirement_date}}</td>
                                    </tr>
                                @endif

                                @if($employee_birth_date!=null)
                                    <tr>
                                        <td>@lang('employee.Birthdate')</td>
                                        <td>{{$employee_birth_date}}</td>
                                    </tr>
                                @endif

                                @if($employee_residence_card_no!=null)
                                    <tr>
                                        <td>@lang('employee.ResidenceCardNo').</td>
                                        <td>{{$employee_residence_card_no}}</td>
                                    </tr>
                                @endif

                                @if($employee_reg_officer!=null)
                                    <tr>
                                        <td>@lang('employee.RegisterOfficer')</td>
                                        <td>{{$employee_reg_officer}}</td>
                                    </tr>
                                @endif

                                @if($employee_hire_date!=null)
                                    <tr>
                                        <td>@lang('employee.HireDate')</td>
                                        <td>{{$employee_hire_date}}</td>
                                    </tr>
                                @endif

                                @if($employee_country_citizenship!=null)
                                    <tr>
                                        <td>@lang('employee.CountryCitizenship')</td>
                                        <td>{{$employee_country_citizenship}}</td>
                                    </tr>
                                @endif

                                @if($employee_residence_card_exp_date!=null)
                                    <tr>
                                        <td>@lang('employee.ResidenceCardExpiryDate')</td>
                                        <td>{{$employee_residence_card_exp_date}}</td>
                                    </tr>
                                @endif

                                @if($employee_hourly_wage!=null)
                                    <tr>
                                        <td>@lang('employee.HourlyWage')</td>
                                        <td>{{$employee_hourly_wage}}</td>
                                    </tr>
                                @endif

                                @if($employee_status_residence!=null)
                                    <tr>
                                        <td>@lang('employee.ResidenceStatus')</td>
                                        <td>{{ $employee_status_residence}}</td>
                                    </tr>
                                @endif

                                @if($employee_base!=null)
                                    <tr>
                                        <td>@lang('employee.Base')</td>
                                        <td>{{ $employee_base}}</td>
                                    </tr>
                                @endif

                                @if($employee_for_work!=null)
                                    <tr>
                                        <td>@lang('employee.ForWork')</td>
                                        <td>{{  $employee_for_work}}</td>
                                    </tr>
                                @endif

                                @if($employee_opt_management!=null)
                                    <tr>
                                        <td>@lang('employee.OptionalManagement')</td>
                                        <td>{{  $employee_opt_management}}</td>
                                    </tr>
                                @endif

                                @if($employee_contract_collection!=null)
                                    <tr>
                                        <td>@lang('employee.ContractCollection')</td>
                                        <td>{{ $employee_contract_collection}}</td>
                                    </tr>
                                @endif

                                @if( $employee_res_confirmation!=null)
                                    <tr>
                                        <td>@lang('employee.ResidenceConfirmation')</td>
                                        <td>{{ $employee_res_confirmation}}</td>
                                    </tr>
                                @endif

                                @if($employee_sex!=null)
                                    <tr>
                                        <td>@lang('employee.Sex')</td>
                                        <td>{{ $employee_sex}}</td>
                                    </tr>
                                @endif

                                @if($employee_postal_code!=null)
                                    <tr>
                                        <td>@lang('employee.PostalCode')</td>
                                        <td>{{ $employee_postal_code}}</td>
                                    </tr>
                                @endif

                                @if($employee_business_content!=null)
                                    <tr>
                                        <td>@lang('employee.BusinessContent')</td>
                                        <td>{{ $employee_business_content}}</td>
                                    </tr>
                                @endif

                                @if($employee_dispatch_destination!=null)
                                    <tr>
                                        <td>@lang('employee.DispatchDestination')</td>
                                        <td>{{ $employee_dispatch_destination}}</td>
                                    </tr>
                                @endif

                                @if($employee_name_of_facility!=null)
                                    <tr>
                                        <td>@lang('employee.Nameoffacility')</td>
                                        <td>{{ $employee_name_of_facility}}</td>
                                    </tr>
                                @endif

                                @if($employee_path!=null)
                                    <tr>
                                        <td>@lang('employee.Path')</td>
                                        <td>{{ $employee_path}}</td>
                                    </tr>
                                @endif

                                @if($employee_one_way_rate!=null)
                                    <tr>
                                        <td>@lang('employee.OneWayRate')</td>
                                        <td>{{ $employee_one_way_rate}}</td>
                                    </tr>
                                @endif

                                @if($employee_pass_price!=null)
                                    <tr>
                                        <td>@lang('employee.PassPrice')</td>
                                        <td>{{ $employee_pass_price}}</td>
                                    </tr>
                                @endif

                                @if($employee_hourly_employee!=null)
                                    <tr>
                                        <td>@lang('employee.HourlyEmployee')</td>
                                        <td>{{ $employee_hourly_employee}}</td>
                                    </tr>
                                @endif

                                @if($employee_dependent_exemption!=null)
                                    <tr>
                                        <td>@lang('employee.DependentExemption')</td>
                                        <td>{{ $employee_dependent_exemption}}</td>
                                    </tr>
                                @endif

                                @if($employee_notes!=null)
                                    <tr>
                                        <td>Notes</td>
                                        <td>{{ $employee_notes }}</td>
                                    </tr>
                                @endif
                                @if($employee_operating_status!=null)
                                    <tr>
                                        <td>@lang('employee.OperatingStatus')</td>
                                        <td>{{ $employee_operating_status }}</td>
                                    </tr>
                                @endif

                                @if($employee_viber_install !== null)

                                    {{--{{dd($employee_viber_install)}}--}}
                                    <tr>
                                        <td>@lang('employee.ViberInstall')</td>
                                        <td>
                                            @if($employee_viber_install==1)
                                                    @lang('employee.Yes')
                                            @elseif($employee_viber_install==0)
                                                   @lang('employee.No')
                                            @endif
                                            </td>
                                    </tr>
                                @endif

                            </table>
                        </div>
                    </div>

                </div>
                <!-- /.tab-content -->
            </div>
            <!-- /.nav-tabs-cust
            om -->
        </div>
        <div class="col-md-3 box box-info">
            <div class="box-header with-border">

              <h3 class="box-title">@lang('employee.Activity')</h3>
            </div>
           {{-- <div class="box-body chat" id="chat-box">
              <!-- chat item -->
              <div class="item">
                <img src="{{asset('images/dist/user4-128x128.jpg')}}" alt="user image" class="online">
                <p class="message">
                  <a href="#" class="name">
                    <small class="text-muted pull-right"><i class="fa fa-clock-o"></i> 2:15</small>

                  </a>
                 I am going to nepal for 2 months so i am not avialable till 01 Jan 2019<br/> 
                 私は2ヶ月間ネパールに行くので、2019年1月1++++++++++++++++++++++++++++++++++++日までは利用できません
                </p>
            </div>
                <div class="item">
                        <img src="{{asset('images/dist/user4-128x128.jpg')}}" alt="user image" class="online">--}}
                @foreach($inbox as $i)
                <div class="box-body chat" id="chat-box">
                    @foreach($employees as $e)
                    
                        @if($e->psi_number==$i->employeeid)
                        <div class="item">
                        <img src="{{asset('images/dist/user4-128x128.jpg')}}" alt="user image" class="online">
                        <small class="text-muted pull-right"><i class="fa fa-clock-o"></i> {{$i->message_date}}</small>
                        <p class="message" style="font-size:small;">
                                <a href="#" class="name" style="font-weight:bold">
                        {{$e->name}}</a><br>
                        {{$i->request_message}}</p></div><br>
                         @endif
                    @endforeach
                    @foreach($users as $u)
                        @if($u->id==$i->response_by_userid)
                        <div class="item">
                        <img src="{{asset('images/dist/user1-128x128.jpg')}}" alt="user image" class="online">
                        <small class="text-muted pull-right"><i class="fa fa-clock-o"></i> {{$i->response_date}}</small>
                        <p class="message" style="font-size:small;">
                                <a href="#" class="name" style="font-weight:bold">
                         {{$u->name}}</a><br>
                        {{$i->response_message}}</p></div>
                        @endif
                    @endforeach
                </div> <hr><hr>             
                @endforeach
                <div class="box-footer text-center">
                    <a href="{{route('employee.message')}}" class="uppercase">@lang('employee.ViewAll')</a>
                </div>

               {{--/////
                
                <div class="item">
                <img src="{{asset('images/dist/user1-128x128.jpg')}}" alt="user image" class="online">
                  <p class="message">
                <a href="#" class="name">
                    <small class="text-muted pull-right"><i class="fa fa-clock-o"></i> 12:15</small>
                    Admin</a>
                    Thank you for the information.Please let us know after you returned.<br/>
                  情報ありがとうございました。返品後にお知らせください
                  </p>
                </div>--}}
                </div>
                <!-- /.attachment -->
              
              <!-- /.item -->

            </div>
        </div>
    </div>
    <!-- /.col -->
    </div>
    <!-- /.row -->
@endsection
