@extends('layouts.app')

@section('content')
    <div class="row">
        <div class="col-md-10 offset-1">
            <div class="box">
                <div class="box-header"><h3>User Registration</h3></div>
                <br>
                <div class="box-body">
                    <form method="POST" action="{{route('company.users.store')}}" class="form-horizontal" style="text-align:center">
                        @csrf
                        <div class="form-group row">
                            <label for="username" class="col-sm-2 control-label">Username</label>

                            <div class="col-sm-7">
                                <input type="text" name="username" class="form-control" placeholder="Username" required>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="email" class="col-sm-2 control-label">Email</label>

                            <div class="col-sm-7">
                                <input type="email" name="email" class="form-control" placeholder="Email" required>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="password" class="col-sm-2 control-label">Password</label>

                            <div class="col-sm-7">
                                <input type="password" name="password" class="form-control" placeholder="Password" required>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="language" class="col-sm-2 control-label">Preferrred Language</label>

                            <div class="col-sm-7">
                                <select name="language" class="form-control">
                                    <option value="0">Japanese</option>
                                    <option value="1">English</option>
                                </select>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="companies" class="col-sm-2 control-label">Companies</label>
                            <div class="checkbox col-md-7" style="text-align: left">
                                @foreach($companies as $company)

                                    <input type="checkbox" value="{{$company->id}}" name="companies[]"> {{$company->name}}
                                <br>
                                @endforeach
                            </div>
                        </div>

                        <!-- /.box-body -->
                        <div class="box-footer row">
                            <div class="col-sm-2"></div>
                            <div class="col-sm-7">
                                <button type="submit" class="btn btn-info pull-right">Register</button>
                            </div>
                        </div>
                        <!-- /.box-footer -->
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection