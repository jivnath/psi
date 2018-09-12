@extends('layouts.app')

@section('title', '| Add User')

@section('content')

<div class='col-md-6 offset-3'>

    <h1><i class='fa fa-user-plus'></i> Add User</h1>
    <hr>

    {{ Form::open(array('route' => 'users.store')) }}

    <div class="form-group">
        {{ Form::label('name', 'Name') }}
        {{ Form::text('name', '', array('class' => 'form-control')) }}
    </div>
    <div class="form-group">
        {{ Form::label('email', 'Email') }}
        {{ Form::email('email', '', array('class' => 'form-control')) }}
    </div>

    <div class="form-group">
        {{ Form::label('password', 'Password') }}<br>
        {{ Form::password('password', array('class' => 'form-control')) }}

    </div>

    <div class="form-group">
        {{ Form::label('password', 'Confirm Password') }}<br>
        {{ Form::password('password_confirmation', array('class' => 'form-control')) }}

    </div>

    <div class='form-group'>
        <label for="role">Role</label><br>
        <select name="role" class="form-control">
            @foreach($roles as $role)
                <option value="{{$role->id}}"> {{$role->name}} </option>
            @endforeach
        </select>
    </div>

    <div class="form-group">
        <label for="companies">Companies</label><br>
        @foreach($companies->chunk(3) as $chunk)
            <div class="row">
                @foreach($chunk as $company)
                    <div class="col-md-4">
                    {{Form::checkbox('companies[]', $company->id)}}
                    {{Form::label($company->name, $company->name)}}
                    </div>
                @endforeach
            </div>
        @endforeach
    </div>

    <div class="form-group">
        <label for="language">Preferred Language</label><br>
        <select name="language" class="form-control">
            <option value="0" >English</option>
            <option value="1">Japanese</option>
        </select>
    </div>

    {{ Form::submit('Add', array('class' => 'btn btn-primary')) }}

    {{ Form::close() }}

</div>

@endsection