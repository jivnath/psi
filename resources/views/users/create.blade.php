@extends('layouts.app')

@section('title', '| Add User')

@section('content')

    <div class='col-md-8 offset-2'>
        <div class="box">
            <div class="box-header">
                <h4>  @lang('employee.AddUser')</h4>
                <hr>
            </div>
            <div class="box-body">
                {{ Form::open(array('route' => 'users.store')) }}

                <div class="form-group">
                  {{ Form::label('name', trans('employee.Name')) }}
                    {{ Form::text('name', '', array('class' => 'form-control', 'style'=>'width:80%')) }}
                </div>

                <div class="form-group">
                {{ Form::label('email', trans('employee.Email')) }}
                    {{ Form::email('email', '', array('class' => 'form-control', 'style'=>'width:80%')) }}

                </div>

                <div class="form-group">
               {{ Form::label('password', trans('employee.Password')) }}<br>
                    {{ Form::password('password', array('class' => 'form-control', 'style'=>'width:80%')) }}


                <div class="form-group">
                    {{ Form::label('password', trans('employee.ConfirmPassword')) }}<br>
                    {{ Form::password('password_confirmation', array('class' => 'form-control', 'style'=>'width:80%')) }}

                </div>

                <div class='form-group'>
                    <label for="role">@lang('employee.Role')</label><br>
                    <select name="role" class="form-control" style="width:80%">
                        @foreach($roles as $role)
                            <option value="{{$role->id}}"> {{$role->name}} </option>
                        @endforeach
                    </select>
                </div>

                <div class="form-group">
                    <label for="language">@lang('employee.PreferredLanguage')</label><br>
                    <select name="language" class="form-control" style="width:80%">
                        <option value="0" >@lang('employee.English')</option>
                        <option value="1">@lang('employee.Japanese')</option>
                    </select>
                </div>

                {{ Form::submit(trans('employee.Add'), array('class' => 'btn btn-primary')) }}
                {{ Form::close() }}

            </div>
        </div>
    </div>

@endsection