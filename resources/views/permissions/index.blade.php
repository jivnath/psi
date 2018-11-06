@extends('layouts.app')

@section('content')

    <div class="col-md-10 offset-1">
        <div class="box">
            <div class="box-header">
                <h4>@lang('employee.Permissions')
                    <a href="{{ route('roles.index') }}" class="btn btn-link pull-right">@lang('employee.Roles')</a></h4>
                <hr>
            </div>
            <div class="box-body">
                <div class="table-responsive">
                    <table class="table table-bordered table-striped">

                        <thead>
                        <tr>
                            <th>@lang('employee.Permissions')</th>
                            <th>@lang('employee.Operation')</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach ($permissions as $permission)
                            <tr>
                                <td>{{ $permission->name }}</td>
                                <td>
                                    <a href="{{ URL::to('permissions/'.$permission->id.'/edit') }}"
                                       class="btn btn-info pull-left" style="margin-right: 3px;">@lang('employee.Edit')</a>
                                </td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                </div>

                <a href="{{ URL::to('permissions/create') }}" class="btn btn-success">@lang('employeeAddPermission')</a>

            </div>
        </div>
    </div>

@endsection