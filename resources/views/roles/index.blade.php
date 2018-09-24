@extends('layouts.app')

@section('content')

<div class="col-md-10 offset-1">
    <div class="box">
        <div class="box-header">
            <h3> Roles
                <a href="{{ route('permissions.index') }}" class="btn btn-link pull-right">Permissions</a>
                <a href="{{ route('users.index') }}" class="btn btn-link pull-right">Users</a></h3>
            <hr>
        </div>
        <div class="box-body">
            <div class="table-responsive">
                <table class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>Role</th>
                            <th>Permissions</th>
                            <th>Operation</th>
                        </tr>
                        </tr>
                    </thead>

                    <tbody>
                        @foreach ($roles as $role)
                        <tr>

                            <td>{{ $role->name }}</td>

                            <td>{{ str_replace(array('[',']','"'),'', $role->permissions()->pluck('name')) }}</td>{{-- Retrieve array of permissions associated to a role and convert to string --}}
                            <td>
                            <a href="{{ URL::to('roles/'.$role->id.'/edit') }}" class="btn btn-info pull-left" style="margin-right: 3px;">Edit</a>

                            {!! Form::open(['method' => 'DELETE', 'route' => ['roles.destroy', $role->id] ]) !!}
                            {!! Form::submit('Delete', ['class' => 'btn btn-danger']) !!}
                            {!! Form::close() !!}

                            </td>
                        </tr>
                        @endforeach
                    </tbody>

                </table>
            </div>
            <a href="{{ URL::to('roles/create') }}" class="btn btn-success">Add Role</a>
        </div>
    </div>
</div>

@endsection