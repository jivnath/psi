@extends('layouts.app')

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
                    <h4 class="profile-username text-center"><i class="fas fa-user  fa-2x" style="width:40px"></i></h4>

                    <p class="text-muted text-center">{{$employee_name}}</p>
                    <p class="text-muted text-center"><i class="fas fa-mobile-alt"></i> {{$employee_cell_no}}</p>

                </div>
                <!-- /.box-body -->
            </div>
            <!-- /.box -->

            <!-- About Me Box -->
            <div class="box box-primary">
                <div class="box-header with-border">
                    <center><h3 class="box-title">About Me</h3></center>
                </div>
                <!-- /.box-header -->
                <div class="box-body">

                    <strong><i class="fa fa-map-marker margin-r-5"></i> Location</strong>

                    <p class="text-muted">{{$employee_address_ip}}</p>
                    <hr>

                    <strong><i class="fas fa-map-marker-alt"></i> Work Location</strong>

                    <p class="text-muted">{{$employee_work_location}}</p>
                    <hr>

                    <strong><i class="far fa-address-card"></i> Resident Card No</strong>

                    <p class="text-muted">{{$employee_residence_card_no}}</p>
                    <hr>

                    <strong><i class="far fa-calendar-alt"></i> Retirement Date</strong>

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
                    <li class="active"><a href="#about_me" data-toggle="tab">Personal</a></li>
                    <li><a href="#requests" data-toggle="tab">Requests</a></li>
                    <li><a href="#status" data-toggle="tab">Status</a></li>
                </ul>
                <div class="tab-content">
                    <div class="active tab-pane" id="activity">
                        <div class="post clearfix">
                        </div>
                    </div>
                    <div class="tab-pane" id="requests">
                        <form action="{{url('')}}" method="POST" class="form-horizontal">
                            <input type="hidden" name="_method" value="POST">
                            <input type="hidden" name="_token" value="{{ csrf_token() }}">


                            <div class="form-group">
                                <label for="language" class="col-sm-3 control-label">Request Type</label>

                                <div class="col-sm-12">
                                    <select name="language" class="form-control">
                                        <option value="0">Profile Change</option>
                                        <option value="1">Others</option>
                                    </select>
                                </div>
                                <br/>
                                <div class="form-group">
                                    <label for="language" class="col-sm-3 control-label">Request Type</label>
                                    <div class="col-sm-12">
                                        <textarea cols="70" rows="10"></textarea>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <button type="submit" class="btn btn-danger">Submit</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="active tab-pane" id="about_me">
                        <div class="post clearfix">
                            <table class="table table-striped">
                                <tr>
                                    <td>Name</td>
                                    <td>{{$employee_name}}</td>
                                </tr>
                                <tr>
                                    <td>PSI-S No.</td>
                                    <td>{{$employee_psi_number}}</td>
                                </tr>
                                <tr>
                                    <td>Phoetic Kanji</td>
                                    <td>{{$employee_phoetic_kanji}}</td>
                                </tr>
                                <tr>
                                    <td>Contact No.</td>
                                    <td>{{$employee_cell_no}}</td>
                                </tr>
                                <tr>
                                    <td>Address</td>
                                    <td>{{$employee_address_ip}}</td>
                                </tr>
                                <tr>
                                    <td>Work Location</td>
                                    <td>{{$employee_work_location}}</td>
                                </tr>
                                <tr>
                                    <td>Retirement Date</td>
                                    <td>{{$employee_retirement_date}}</td>
                                </tr>
                                <tr>
                                    <td>Birthday</td>
                                    <td>{{$employee_birth_date}}</td>
                                </tr>
                                <tr>
                                    <td>Residence Card No.</td>
                                    <td>{{$employee_residence_card_no}}</td>
                                </tr>
                                <tr>
                                    <td>Register Officer</td>
                                    <td>{{$employee_reg_officer}}</td>
                                </tr>
                                <tr>
                                    <td>Hire Date</td>
                                    <td>{{$employee_hire_date}}</td>
                                </tr>
                                <tr>
                                    <td>Country Citizenship</td>
                                    <td>{{$employee_country_citizenship}}</td>
                                </tr>
                                <tr>
                                    <td>Residence Card Expiry Date</td>
                                    <td>{{$employee_residence_card_exp_date}}</td>
                                </tr>
                                <tr>
                                    <td>Hourly Wage</td>
                                    <td>{{$employee_hourly_wage}}</td>
                                </tr>
                                <tr>
                                    <td>Residence Status</td>
                                    <td>{{ $employee_status_residence}}</td>
                                </tr>

                                <tr>
                                    <td>Base</td>
                                    <td>{{ $employee_base}}</td>
                                </tr>
                                <tr>
                                    <td>For Work</td>
                                    <td>{{  $employee_for_work}}</td>
                                </tr>
                                <tr>
                                    <td>Optional Management</td>
                                    <td>{{  $employee_opt_management}}</td>
                                </tr>
                                <tr>
                                    <td>Contract Collection</td>
                                    <td>{{ $employee_contract_collection}}</td>
                                </tr>
                                <tr>
                                    <td>Residence Confirmation</td>
                                    <td>{{ $employee_res_confirmation}}</td>
                                </tr>
                                <tr>
                                    <td>Sex</td>
                                    <td>{{ $employee_sex}}</td>
                                </tr>
                                <tr>
                                    <td>Postal Code</td>
                                    <td>{{ $employee_postal_code}}</td>
                                </tr>
                                <tr>
                                    <td>Business Content</td>
                                    <td>{{ $employee_business_content}}</td>
                                </tr>

                                <tr>
                                    <td>Dispatch Destination</td>
                                    <td>{{ $employee_dispatch_destination}}</td>
                                </tr>
                                <tr>
                                    <td>Name of facility</td>
                                    <td>{{ $employee_name_of_facility}}</td>
                                </tr>
                                <tr>
                                    <td>Path</td>
                                    <td>{{ $employee_path}}</td>
                                </tr>
                                <tr>
                                    <td>One Way Rate</td>
                                    <td>{{ $employee_one_way_rate}}</td>
                                </tr>
                                <tr>
                                    <td>Pass Price</td>
                                    <td>{{ $employee_pass_price}}</td>
                                </tr>
                                <tr>
                                    <td>Hourly Employee</td>
                                    <td>{{ $employee_hourly_employee}}</td>
                                </tr>
                                <tr>
                                    <td>Dependent Exemption</td>
                                    <td>{{ $employee_dependent_exemption}}</td>
                                </tr>
                                <tr>
                                    <td>Notes</td>
                                    <td>{{ $employee_notes}}</td>
                                </tr>

                            </table>
                        </div>
                    </div>
                    <!-- /.tab-pane -->
                    <div class="active tab-pane" id="status">
                        <div class="post clearfix">
                            <p>
                                <label for="title">
                                    <h5>Unavailable</h5>
                                </label>
                            </p>
                        </div>
                    </div>
                </div>
                <!-- /.tab-content -->
            </div>
            <!-- /.nav-tabs-cust
            om -->
        </div>
        <div class="col-md-3 box box-info">
            <label for="request">Activity</label>
        </div>
        <!-- /.col -->
    </div>
    <!-- /.row -->
@endsection
