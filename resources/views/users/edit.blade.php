@extends('layouts.app')

@section('content')

<div class='col-md-4 offset-4'>

    <h1><i class='fa fa-user-plus'></i> Edit {{$user->name}}</h1>
    <hr>

    {{ Form::model($user, array('route' => array('users.update', $user->id), 'method' => 'PUT')) }}{{-- Form model binding to automatically populate our fields with user data --}}

    <div class="form-group">
        {{ Form::label('name', 'Name:') }}
        {{ $user->name }}
    </div>

    <div class="form-group">
        {{ Form::label('email', 'Email:') }}
        {{ $user->email }}
    </div>

    <h5><b>Give Role</b></h5>

    <div class='form-group'>
        <select name="role">
            @foreach($roles as $role)
                <option value="{{$role['name']}}" <?=($user->roles()->pluck('name')->first()==$role['name'])? 'selected="selected"':''?>> {{$role['name']}} </option>
            @endforeach
        </select>
        <div class="form-group">
            <label for="companies">Companies</label><br>{{dd($comp_id)}}

            @foreach($allCompanies->chunk(3) as $chunk)
                <div class="row">
                    @foreach($chunk as $comp)
                        <div class="col-md-4">
                            <input type="checkbox" name="comapnies[]" value="{{$comp->id}}"<?=(in_array($comp->id, $comp_id))?'checked':''?>>
                            {{Form::label($comp->name, $comp->name)}}
                        </div>
                    @endforeach
                </div>
            @endforeach
        </div>
    </div>

    {{ Form::submit('Edit', array('class' => 'btn btn-primary')) }}

    {{ Form::close() }}

</div>

@endsection