@extends('layouts.app')

@section('content')

    <div class='col-md-8 offset-2'>
        <div class="box">
            <div class="box-header">
                <h4>@lang('employee.EditUser') '{{$user->name}}'</h4>
                <hr>
            </div>
            <div class="box-body">

                {{ Form::model($user, array('route' => array('users.update', $user->id), 'method' => 'PUT')) }}{{-- Form model binding to automatically populate our fields with user data --}}

                <div class="form-group">
                   <b> {{ Form::label('name', trans('employee.Name:')) }}</b>
                    {{ $user->name }}
                </div>

                <div class="form-group">
                    <b>{{ Form::label('email', trans('employee.Email:')) }}</b>
                    {{ $user->email }}
                </div>

                <b>@lang('employee.GiveRole')</b>

                <div class='form-group'>
                    <select name="role" class="form-control" style="width: 60%">
                        @foreach($roles as $role)
                            <option value="{{$role['name']}}" <?=($user->roles()->pluck('name')->first()==$role['name'])? 'selected="selected"':''?>> {{$role['name']}} </option>
                        @endforeach
                    </select>
                </div>

                {{ Form::submit(trans('employee.Update'), array('class' => 'btn btn-primary')) }}


                {{ Form::close() }}
            </div>
        </div>
    </div>
@endsection