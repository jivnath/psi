@extends('layouts.app')

@section('content')

    <div class="col-md-12">
        <div class="box">
            <div class="box-header">
                <h4> Roles</h4>
                <hr>
            </div>
            <div class="box-body">
                <div class="table-responsive col-md-8">
                    <table class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th>Role</th>
                            {{--<th>Permissions</th>--}}
                            <th>Operation</th>
                        </tr>
                        </tr>
                        </thead>

                        <tbody>
                        @foreach ($roles as $role)
                            <tr>

                                <td>{{ $role->name }}</td>

                                {{--<td>{{ str_replace(array('[',']','"'),'', $role->permissions()->pluck('name')) }}</td>--}}{{-- Retrieve array of permissions associated to a role and convert to string --}}
                                <td>
                                    <a href="{{ URL::to('roles/'.$role->id.'/edit') }}" class="btn btn-info pull-left"
                                       style="margin-right: 3px;">Edit</a>
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