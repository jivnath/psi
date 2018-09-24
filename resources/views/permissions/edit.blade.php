@extends('layouts.app')

@section('content')

<div class='col-md-8 offset-2'>
    <div class="box">
        <div class="box-header">
            <h3> Edit {{$permission->name}}</h3>
            <br>
        </div>
        <div class="box-body">

            {{ Form::model($permission, array('route' => array('permissions.update', $permission->id), 'method' => 'PUT')) }}{{-- Form model binding to automatically populate our fields with permission data --}}

            <div class="form-group">
                {{ Form::label('name', 'Permission Name') }}
                {{ Form::text('name', null, array('class' => 'form-control', 'style'=>'width:80%')) }}
            </div>
            <br>
            {{ Form::submit('Edit', array('class' => 'btn btn-primary')) }}

            {{ Form::close() }}
        </div>
    </div>
</div>

@endsection