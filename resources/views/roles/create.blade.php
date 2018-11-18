@extends('layouts.app')

@section('content')

    <div class="row">
        <div class='col-md-8 offset-2'>
            <div class="box">
                <div class="box-header">
                    <h4>@lang('employee.AddRole')</h4>
                    <hr>
                </div>
                <div class="box-body" style="margin-left: 15px">

                    {{ Form::open(array('route' => 'roles.store')) }}

                    <div class="form-group">
                        {{ Form::label('name', trans('employee.Name')) }}
                        {{ Form::text('name', '', array('class' => 'form-control input-shorter', 'style' => 'width:50%')) }}
                    </div>

                    {{ Form::submit(trans('employee.Add'), array('class' => 'btn btn-primary')) }}

                    {{ Form::close() }}

                </div>
            </div>
        </div>
    </div>

@endsection