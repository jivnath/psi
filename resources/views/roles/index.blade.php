@extends('layouts.app')

@section('content')

    <div class="col-md-12">
        <div class="box">
            <div class="box-header">
                <h4>@lang('employee.Roles')</h4>
                <hr>
            </div>
            <div class="box-body">
                <div class="table-responsive col-md-8">
                    <table class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th>@lang('employee.Role')</th>
                            {{--<th>Permissions</th>--}}
                            <th>@lang('employee.Operation')</th>
                        </tr>
                        </tr>
                        </thead>

                        <tbody>
                        @foreach ($roles as $role)
                            <tr>

                                <td>{{ $role->name }}</td>

                                {{--<td>{{ str_replace(array('[',']','"'),'', $role->permissions()->pluck('name')) }}</td>--}}{{-- Retrieve array of permissions associated to a role and convert to string --}}
                                <td>
                                    <a href="{{ route("roles.edit", $role->id) }}" class="btn btn-info pull-left"
                                       style="margin-right: 3px;">@lang('employee.Edit')</a>
                                </td>
                            </tr>
                        @endforeach
                        </tbody>

                    </table>
                </div>
                <a href="{{ route('roles.create') }}" class="btn btn-success">@lang('employee.AddRole')</a>
            </div>
        </div>
    </div>

@endsection