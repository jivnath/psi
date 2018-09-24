@extends('layouts.app')

@section('content')

<div class='col-md-8 offset-2'>
    <div class="box">
        <div class="box-header">
            <h3>Edit Role: {{$role->name}}</h3>
            <hr>
        </div>
        <div class="box-body">
            {{ Form::model($role, array('route' => array('roles.update', $role->id), 'method' => 'PUT')) }}

            <div class="form-group">
                <b>{{ Form::label('name', 'Role Name') }}</b>
                {{ Form::text('name', null, array('class' => 'form-control', 'style' => 'width:80%')) }}
            </div>

            <b>Assign Permissions</b><br>
            @foreach ($permissions as $permission)

                {{Form::checkbox('permissions[]',  $permission->id, $role->permissions ) }}
                {{Form::label($permission->name, ucfirst($permission->name)) }}<br>

            @endforeach
            <br>
            {{ Form::submit('Edit', array('class' => 'btn btn-primary')) }}

            {{ Form::close() }}
        </div>
    </div>
</div>

@endsection