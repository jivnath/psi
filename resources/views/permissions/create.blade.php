@extends('layouts.app')

@section('content')

    <div class='col-md-8 offset-2'>
        <div class="box">
            <div class="box-header">
                <h3> Add Permission</h3>
                <br>
            </div>
            <div class="box-body">

                {{ Form::open(array('url' => 'permissions')) }}

                <div class="form-group">
                    <b>{{ Form::label('name', 'Name') }}</b>
                    {{ Form::text('name', '', array('class' => 'form-control', 'style' => 'width:80%')) }}
                </div><br>
                @if(!$roles->isEmpty())
                    <b>Assign Permission to Roles</b><br>

                    @foreach ($roles as $role)
                        {{ Form::checkbox('roles[]',  $role->id ) }}
                        {{ Form::label($role->name, ucfirst($role->name)) }}<br>

                    @endforeach
                @endif
                <br>
                {{ Form::submit('Add', array('class' => 'btn btn-primary')) }}

                {{ Form::close() }}

            </div>
        </div>
    </div>

@endsection