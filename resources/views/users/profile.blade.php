@extends('layouts.app')

@section('title', '| Profile')

@section('content')

    @php
        $username = \Session::get('username');
        $companies = \Session::get('user_companies');
        $primaryCompany = \Session::get('primary_company');
        $language = \Session::get('user_language');
        $user_id = \Session::get('user_id');
        $userEmail = \Session::get('user_email');
    echo Auth::user()->email;
    echo $userEmail;
    @endphp

    <div class="row">
        <div class="col-md-3">

            <!-- Profile Image -->
            <div class="box box-primary">
                <div class="box-body box-profile">
                    <img class="profile-user-img img-responsive img-circle" src="../../dist/img/user4-128x128.jpg" alt="User profile picture">

                    <h3 class="profile-username text-center">{{$username}}</h3>

                    <p class="text-muted text-center">{{ Auth::user()->roles()->pluck('name')->implode('')}}</p>
                    <p class="text-muted text-center">{{ $userEmail}}</p>
                </div>
                <!-- /.box-body -->
            </div>
            <!-- /.box -->

            <!-- About Me Box -->
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">About Me</h3>
                </div>
                <!-- /.box-header -->
                <div class="box-body">
                    <strong><i class="fa fa-book margin-r-5"></i> Education</strong>

                    <p class="text-muted">
                        B.S. in Computer Science from the University of Tennessee at Knoxville
                    </p>

                    <hr>

                    <strong><i class="fa fa-map-marker margin-r-5"></i> Location</strong>

                    <p class="text-muted">Malibu, California</p>

                    <hr>

                    <strong><i class="fa fa-pencil margin-r-5"></i> Skills</strong>

                    <p>
                        <span class="label label-danger">UI Design</span>
                        <span class="label label-success">Coding</span>
                        <span class="label label-info">Javascript</span>
                        <span class="label label-warning">PHP</span>
                        <span class="label label-primary">Node.js</span>
                    </p>

                    <hr>

                    <strong><i class="fa fa-file-text-o margin-r-5"></i> Notes</strong>

                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam fermentum enim neque.</p>
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
                        <form class="form-horizontal">

                            <div class="form-group">
                                <label for="inputEmail" class="col-sm-2 control-label">Email</label>

                                <div class="col-sm-10">
                                    <input type="email" class="form-control" id="inputEmail" value="{{$userEmail}}">
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="primaryCompany" class="col-sm-2 control-label">Primary Company</label>

                                <div class="col-sm-10">
                                    <select name="primary_company" class="form-control">
                                        {{--@foreach($companies as $company)--}}
                                        {{--@endforeach--}}
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="language" class="col-sm-2 control-label">Preferred Language</label>

                                <div class="col-sm-10">
                                    <select name="language" class="form-control">
                                        <option value="0"<?=($language==0)?'selected="selected"':''?>>English</option>
                                        <option value="1"<?=($language==1)?'selected="selected"':''?>>Japanese</option>
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
