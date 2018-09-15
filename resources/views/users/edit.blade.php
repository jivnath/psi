@extends('layouts.app')

@section('content')

<div class='col-md-8 offset-2'>

    <h4><i class='fa fa-user-plus'></i> Edit {{$user->name}}</h4>
    <hr>

    {{ Form::model($user, array('route' => array('users.update', $user->id), 'method' => 'PUT')) }}{{-- Form model binding to automatically populate our fields with user data --}}

    <div class="form-group">
       <b> {{ Form::label('name', 'Name:') }}</b>
        {{ $user->name }}
    </div>

    <div class="form-group">
        <b>{{ Form::label('email', 'Email:') }}</b>
        {{ $user->email }}
    </div>

    <b>Give Role</b>

    <div class='form-group'>
        <select name="role" class="form-control" style="width: 60%">
            @foreach($roles as $role)
                <option value="{{$role['name']}}" <?=($user->roles()->pluck('name')->first()==$role['name'])? 'selected="selected"':''?>> {{$role['name']}} </option>
            @endforeach
        </select>
    </div>
        <div class="form-group">
            <b><label for="companies">Companies</label></b><br>

            @foreach($allCompanies->chunk(3) as $chunk)
                <?php
                ?>
                <div class="row">
                    @foreach($chunk as $comp)
                        <div class="col-md-4">
                            <input type="checkbox" name="companies[]" value="{{$comp->id}}"<?=(in_array($comp->id, $compid))?'checked':''?>>
                            {{Form::label($comp->name, $comp->name)}}
                        </div>
                    @endforeach
                </div>
            @endforeach
        </div>

    {{ Form::submit('Edit', array('class' => 'btn btn-primary')) }}

    {{ Form::close() }}

</div>


@endsection