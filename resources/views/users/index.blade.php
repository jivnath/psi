@extends('layouts.app')

@section('content')
    <div class="col-md-10 offset-1">
        <div class="box">
            <div class="box-header">
                <h3> User Administration <a href="{{ route('roles.index') }}" class="btn btn-link pull-right">Roles</a>
                    {{--<a href="{{ route('permissions.index') }}" class="btn btn-link pull-right">Permissions</a></h3>--}}
                <hr>
            </div>
            <div class="box-body">
                <div class="table-responsive">
                    <table class="table table-bordered table-striped">

                        <thead>
                            <tr>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Date/Time Added</th>
                                <th>User Roles</th>
                                <th>Operations</th>
                            </tr>
                        </thead>

                        <tbody>
                            @foreach ($users as $user)
                            <tr>

                                <td>{{ $user->name }}</td>
                                <td>{{ $user->email }}</td>
                                <td>{{ $user->created_at->format('F d, Y h:ia') }}</td>
                                <td>{{ $user->roles()->pluck('name')->implode(' ') }}</td>{{-- Retrieve array of roles associated to a user and convert to string --}}
                                <td>
                                <a href="{{ route('users.edit', $user->id) }}" class="btn btn-info pull-left" style="margin-right: 3px;">Edit</a>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>

                    </table>
                </div>
            </div>
        </div>
    </div>
@endsection
