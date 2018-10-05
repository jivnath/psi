@extends('layouts.app')

@section('title', '| Profile')

@section('content')

    <div class="row">
        <div class="col-md-3">

            <!-- Profile Image -->
            <div class="box box-primary">
                <div class="box-body box-profile">
                    <h4 class="profile-username text-center"><i class="fas fa-user  fa-2x" style="width:40px"></i></h4>

                    <p class="text-muted text-center">John Abhrahm</p>
                    <p class="text-muted text-center"><i class="fas fa-mobile-alt"></i> 9812345678</p>
                    
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

                    <p class="text-muted">Malibu, California</p>
                    <hr>

                    <strong><i class="fas fa-map-marker-alt"></i> Work Location</strong>

                    <p class="text-muted">Malibu, California</p>
                    <hr>

                    <strong><i class="far fa-address-card"></i> Resident Card No</strong>

                    <p class="text-muted">422000</p>
                    <hr>

                    <strong><i class="far fa-calendar-alt"></i> Retirement Date</strong>

                    <p class="text-muted">2052/11/01</p>
                </div>
                <!-- /.box-body -->
            </div>
            <!-- /.box -->
        </div>
        <!-- /.col -->
        <div class="col-md-9">
            <div class="nav-tabs-custom">
                <ul class="nav nav-tabs">
                    <li class="active"><a href="#activity" data-toggle="tab">Activity</a></li>
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
                                <label for="language" class="col-sm-2 control-label">Preferred Language</label>

                                <div class="col-sm-10">
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
                    <!-- /.tab-pane -->
                </div>
                <!-- /.tab-content -->
            </div>
            <!-- /.nav-tabs-custom -->
        </div>
        <!-- /.col -->
    </div>
    <!-- /.row -->
@endsection
