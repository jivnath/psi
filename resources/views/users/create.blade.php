@extends('layouts.app')

@section('title', '| Add User')

@section('content')

    <div class='col-md-8 offset-2'>
        <div class="box">
            <div class="box-header">
                <h4> Add User</h4>
                <hr>
            </div>
            <div class="box-body">

                {{ Form::open(array('route' => 'users.store')) }}

                <div class="form-group">
                    {{ Form::label('name', 'Name') }}
                    {{ Form::text('name', '', array('class' => 'form-control', 'style'=>'width:80%')) }}
                </div>
                <div class="form-group">
                    {{ Form::label('email', 'Email') }}
                    {{ Form::email('email', '', array('class' => 'form-control', 'style'=>'width:80%')) }}
                </div>

                <div class="form-group">
                    {{ Form::label('password', 'Password') }}<br>
                    {{ Form::password('password', array('class' => 'form-control', 'style'=>'width:80%')) }}

                </div>

                <div class="form-group">
                    {{ Form::label('password', 'Confirm Password') }}<br>
                    {{ Form::password('password_confirmation', array('class' => 'form-control', 'style'=>'width:80%')) }}

                </div>

                <div class='form-group'>
                    <label for="role">Role</label><br>
                    <select name="role" class="form-control" style="width:80%">
                        @foreach($roles as $role)
                            <option value="{{$role->id}}"> {{$role->name}} </option>
                        @endforeach
                    </select>
                </div>

                <div class="form-group">
                    <label for="language">Preferred Language</label><br>
                    <select name="language" class="form-control" style="width:80%">
                        <option value="0" >English</option>
                        <option value="1">Japanese</option>
                    </select>
                </div>

                {{ Form::submit('Add', array('class' => 'btn btn-primary')) }}

                {{ Form::close() }}

            </div>
        </div>
    </div>

@endsection