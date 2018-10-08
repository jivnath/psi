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
                   <center> <h3 class="box-title">About Me</h3></center>
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
                    <li><a href="#activity" data-toggle="tab">Activity</a></li>
                    <li><a href="#settings" data-toggle="tab">Settings</a></li>
                </ul>
                <div class="tab-content">
                    <div class="active tab-pane" id="activity">
                        <div class="post clearfix">
                        </div>
                    </div>
                    <div class="tab-pane" id="settings">
                        <form action="{{url('')}}" method="POST" class="form-horizontal">
                            <input type="hidden" name="_method" value="PUT">
                            <input type="hidden" name="_token" value="{{ csrf_token() }}">


                            <div class="form-group">
                                <label for="language" class="col-sm-3 control-label">Preferred Language</label>

                                <div class="col-sm-12">
                                    <select name="language" class="form-control">
                                        <option value="0">English</option>
                                        <option value="1">Japanese</option>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <button type="submit" class="btn btn-danger">Submit</button>
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
                            </table>
                        </div>
                    </div>
                    <!-- /.tab-pane -->
                </div>
                <!-- /.tab-content -->
            </div>
            <!-- /.nav-tabs-custom -->
        </div>
        <div class="col-md-3 box box-info">
            <label for="request">Requests</label><br>
            <a href="#" >Request for contact no. change</a><br>
            <a href="#" >Request for address change</a><br>
            <a href="#" >Request for birthday change</a><br>
            <a href="#" >Request for work location change</a><br>
            <a href="#" >Request for residence card no. change</a><br>
        </div>
        <!-- /.col -->
    </div>
    <!-- /.row -->
@endsection
