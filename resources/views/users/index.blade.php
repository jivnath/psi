@extends('layouts.app')

@section('content')
    <div class="col-md-10 offset-1">
        <div class="box">
            <div class="box-header">
                <h4> @lang('employee.Users')<a href="{{ route('users.create') }}" class="btn btn-link pull-right">@lang('employee.AddNewUser')</a>
                    {{--<a href="{{ route('permissions.index') }}" class="btn btn-link pull-right">Permissions</a>--}}</h4>
                <hr>
            </div>
            <div class="box-body">
                <div class="table-responsive">
                    <table class="table table-bordered table-striped table-condensed">

                        <thead>
                            <tr>
                                <th>@lang('employee.Name')</th>
                                <th>@lang('employee.Email')</th>
                                <th>@lang('employee.DateTimeAdded')</th>
                                <th>@lang('employee.UserRoles')</th>
                                {{--<th>@lang('employee.PrimaryCompany')</th> --}}
                                <th>@lang('employee.Operations')</th>
                            </tr>
                        </thead>

                        <tbody>
                            @foreach ($users as $user)
                            <tr>

                                <td>{{ $user->name }}</td>
                                <td>{{ $user->email }}</td>
                                <td>{{ $user->created_at->format('F d, Y h:ia') }}</td>
                                <td>{{ $user->roles()->pluck('name')->implode(' ') }}</td>{{-- Retrieve array of roles associated to a user and convert to string --}}
                               {{-- <td>{{ $user->primary_company }}</td>--}}
                                <td>
                                <a href="{{ route('users.edit', $user->id) }}" class="btn btn-info pull-left" style="margin-right: 3px;">@lang('employee.Edit')</a>
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
