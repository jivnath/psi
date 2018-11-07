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
    @endphp

    <div class="row">
        <div class="col-md-3">

            <!-- Profile Image -->
            <div class="box box-primary">
                <div class="box-body box-profile">
                    <h4 class="profile-username text-center">{{$username}}</h4>

                    <p class="text-muted text-center">{{ Auth::user()->roles()->pluck('name')->implode('')}}</p>
                    <p class="text-muted text-center">{{ $userEmail}}</p>
                </div>
                <!-- /.box-body -->
            </div>
            <!-- /.box -->

            <!-- About Me Box -->
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">@lang('employee.AboutMe')</h3>
                </div>
                <!-- /.box-header -->
                <div class="box-body">
                    <strong><i class="fa fa-book margin-r-5"></i> @lang('employee.Education')</strong>

                    <p class="text-muted">
                        B.S. in Computer Science from the University of Tennessee at Knoxville
                    </p>

                    <hr>

                    <strong><i class="fa fa-map-marker margin-r-5"></i> @lang('employee.Location')</strong>

                    <p class="text-muted">Malibu, California</p>
                </div>
                <!-- /.box-body -->
            </div>
            <!-- /.box -->
        </div>
        <!-- /.col -->
        <div class="col-md-9">
            <div class="nav-tabs-custom">
                <ul class="nav nav-tabs">
                    <li class="active"><a href="#activity" data-toggle="tab">@lang('employee.Activity')</a></li>
                    <li><a href="#settings" data-toggle="tab">@lang('employee.Settings')</a></li>
                </ul>
                <div class="tab-content">
                    <div class="active tab-pane" id="activity">
                        <div class="post clearfix">
                        </div>
                    </div>
                    <div class="tab-pane" id="settings">
                        <form action="{{route('updateProfile', $user_id)}}" method="POST" class="form-horizontal">
                            <input type="hidden" name="_method" value="PUT">
                            <input type="hidden" name="_token" value="{{ csrf_token() }}">

                            <div class="form-group">
                                <label for="inputEmail" class="col-sm-2 control-label">@lang('employee.Email')</label>

                                <div class="col-sm-10">
                                    <input type="email" name="email" class="form-control" id="inputEmail" value="{{$userEmail}}">
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="primaryCompany" class="col-sm-2 control-label">@lang('employee.PrimaryCompany')</label>

                                <div class="col-sm-10">
                                    <select name="primary_company" class="form-control">
                                        @foreach($companies as $company)
                                            <option value="{{$company->id}}"<?=(Auth::user()->primary_company==$company->id)?'selected="selected"':''?>>{{$company->name}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="language" class="col-sm-2 control-label">@lang('employee.PreferredLanguage')</label>

                                <div class="col-sm-10">
                                    <select name="language" class="form-control">
                                        <option value="0"<?=($language==0)?'selected="selected"':''?>>@lang('employee.English')</option>
                                        <option value="1"<?=($language==1)?'selected="selected"':''?>>@lang('employee.Japanese')</option>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <button type="submit" class="btn btn-danger">@lang('employee.Submit')</button>
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
