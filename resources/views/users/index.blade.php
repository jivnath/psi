@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-6 offset-3">                
                <table class="table-hover" width="80%" border="1px">
                    <thead>
                        <tr>
                            <td>Users</td>
                            <td>User Type</td>
                            <td>Action</td>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($users as $user)
                            <tr>
                                <td>{{ $user->name }}</td>
                                <td>{{ $user->userType->type }}</td>
                                <td>
                                    <a href="{{ route('users.edit', $user->id) }}" class="btn btn-link btn-sm" role="button">Edit</a>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>  
            </div>
        </div>
        <a href="{{ route('register') }}"> Register New Users</a>
        
    </div>




@endsection
