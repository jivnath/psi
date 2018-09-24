@extends('layouts.app')

@section('content')

<div class="col-md-10 offset-1">
    <div class="box">
        <div class="box-header">
            <h3>Available Permissions
                <a href="{{ route('users.index') }}" class="btn btn-link pull-right">Users</a>
                <a href="{{ route('roles.index') }}" class="btn btn-link pull-right">Roles</a></h3>
            <hr>
        </div>
        <div class="box-body">
            <div class="table-responsive">
                <table class="table table-bordered table-striped">

                    <thead>
                        <tr>
                            <th>Permissions</th>
                            <th>Operation</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($permissions as $permission)
                        <tr>
                            <td>{{ $permission->name }}</td>
                            <td>
                            <a href="{{ URL::to('permissions/'.$permission->id.'/edit') }}" class="btn btn-info pull-left" style="margin-right: 3px;">Edit</a>

                            {!! Form::open(['method' => 'DELETE', 'route' => ['permissions.destroy', $permission->id] ]) !!}
                            {!! Form::submit('Delete', ['class' => 'btn btn-danger']) !!}
                            {!! Form::close() !!}

                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>

            <a href="{{ URL::to('permissions/create') }}" class="btn btn-success">Add Permission</a>

        </div>
    </div>
</div>

@endsection