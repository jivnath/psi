@extends('layouts.app')

@section('content')

    <div class='col-md-8 offset-2'>
        <div class="box">
            <div class="box-header" style="padding-top:2px;padding-bottom: 2px">
                <h4>@lang('employee.EditUser') '{{$user->name}}'</h4>
                <hr>
            </div>
            <div class="box-body" style="padding-top:2px;padding-bottom: 2px">

                {{ Form::model($user, array('route' => array('users.update', $user->id), 'method' => 'PUT')) }}{{-- Form model binding to automatically populate our fields with user data --}}

                <div class="form-group">
                   <b> {{ Form::label('name', trans('employee.Name'))}}:</b>
                    {{ $user->name }}
                </div>

                <div class="form-group">
                    <b>{{ Form::label('email', trans('employee.Email')) }}:</b>
                    {{ $user->email }}
                </div>

                <b>@lang('employee.PrimaryCompany')</b>

                <div class='form-group'>
                    <select name="primary_company" class="form-control" style="width: 60%">
                        <option value="">@lang('employee.None')</option>>
                        @foreach($companies as $company)
                            <option value="{{$company->id}}" <?=($user->primary_company==$company->id)? 'selected="selected"':''?>> {{$company->name}} </option>
                        @endforeach
                    </select>
                </div>

                <b>@lang('employee.GiveRole')</b>

                <div class='form-group'>
                    <select name="role" class="form-control" style="width: 60%">
                        @foreach($roles as $role)
                            <option value="{{$role['id']}}" <?=($user->roles()->pluck('name')->first()==$role['name'])? 'selected="selected"':''?>> {{$role['name']}} </option>
                        @endforeach
                    </select>
                </div>

                {{ Form::submit(trans('employee.Update'), array('class' => 'btn btn-primary')) }}


                {{ Form::close() }}
            </div>
        </div>
    </div>
@endsection