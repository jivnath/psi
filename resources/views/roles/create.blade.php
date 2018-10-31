@extends('layouts.app')

@section('content')

    <div class="row">
        <div class='col-md-8 offset-2'>
            <div class="box">
                <div class="box-header">
                    <h4>Add Role</h4>
                    <hr>
                </div>
                <div class="box-body" style="margin-left: 15px">

                    {{ Form::open(array('url' => 'roles')) }}

                    <div class="form-group">
                        {{ Form::label('name', 'Name') }}
                        {{ Form::text('name', null, array('class' => 'form-control input-shorter', 'style' => 'width:50%')) }}
                    </div>
                    {{--<b>Permissions</b>--}}

                    {{--<div class='form-group'>--}}
                        {{--@foreach ($permissions as $permission)--}}
                            {{--{{ Form::checkbox('permissions[]',  $permission->id ) }}--}}
                            {{--{{ Form::label($permission->name, ucfirst($permission->name)) }}<br>--}}

                        {{--@endforeach--}}
                    {{--</div>--}}

                    {{ Form::submit('Add', array('class' => 'btn btn-primary')) }}

                    {{ Form::close() }}

                </div>
            </div>
        </div>
    </div>

@endsection