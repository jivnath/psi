@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ "Edit User" }}</div>

                <div class="card-body " style="padding: 10px;">
                    <table>
                        <tr> 
                            <td> Username : </td>
                            <td> {{$user->name}} </td>
                        </tr>
                        <tr> 
                            <td> Email : </td>
                            <td> {{$user->email}} </td>
                        </tr>
                    </table>

                   
                    <form  action="{{ route('users.update', $user->id )}}" method="POST" >
                        <input type="hidden" name="_method" value="PUT">
                        <input type="hidden" name="_token" value="{{ csrf_token() }}">
                        
                        <div class="row">
                            <div class="col-md-8">
                                <select class="form-control" name="role">
                                    @foreach($roles as $role)
                                        <option value="{{ $role->id }}"> {{ $role->name }}  </option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-md-4">
                                <button style="margin-top: 5px" type="submit" class="btn btn-primary">
                                    Change Role
                                </button>
                            </div>
                        </div>                
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
