@extends('layouts.app')
@section('title', '| Profile')
@section('content') @php $username = \Session::get('username'); $companies
= \Session::get('user_companies'); $primaryCompany = \Session::get('primary_company'); $language = \Session::get('user_language');
$user_id = \Session::get('user_id'); $userEmail = \Session::get('user_email'); $role_id = \Session::get('user_role_id');

@endphp

<div class="row">
    <div class="col-md-3">
        <!-- Profile Image -->
        <div class="box box-primary">
            <div class="box-body box-profile">
                <h4 class="profile-username text-center">{{$username}}</h4>

                <p class="text-muted text-center">{{ Auth::user()->roles()->pluck('name')->implode('')}}</p>
                <p class="text-muted text-center">{{ $userEmail}}</p>
            </div>
            <!-- /.box-body -->
        </div>
        <!-- /.box -->

        <!-- About Me Box -->
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">@lang('employee.AboutMe')</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
                <strong><i class="fa fa-book margin-r-5"></i> @lang('employee.Education')</strong>

                <p class="text-muted">
                    B.S. in Computer Science from the University of Tennessee at Knoxville
                </p>

                <hr>

                <strong><i class="fa fa-map-marker margin-r-5"></i> @lang('employee.Location')</strong>

                <p class="text-muted">Malibu, California</p>
            </div>
            <!-- /.box-body -->
        </div>
        <!-- /.box -->
    </div>
    <!-- /.col -->
    <div class="col-md-9">
            <div id="alert" style="display: none">
                    <div class="alert alert-success" role="alert">
                        <strong>@lang('employee.Success'): </strong><span id="message"></span>
                    </div>
            </div>
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">@lang('employee.Setting')</h3>
            </div>
            <form action="{{route('updateProfile', $user_id)}}" method="POST" class="form-horizontal">
                <input type="hidden" name="_method" value="PUT">
                <input type="hidden" name="_token" value="{{ csrf_token() }}">

                <div class="form-group">
                    <label for="inputEmail" class="col-sm-2 control-label">@lang('employee.Email')</label>

                    <div class="col-sm-9">
                        <input type="email" name="email" class="form-control" id="inputEmail" value="{{$userEmail}}">
                    </div>
                </div>

                <div class="form-group">
                    <label for="primaryCompany" class="col-sm-2 control-label">@lang('employee.PrimaryCompany')</label>

                    <div class="col-sm-9">
                        <select name="primary_company" class="form-control" {{($role_id==5) ? 'disabled': ''}}>
                            @foreach($companies as $company)
                                <option value="{{$company->id}}"<?=(Auth::user()->primary_company == $company->id) ? 'selected="selected"' : ''?>>{{$company->name}}</option>
                            @endforeach
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="language" class="col-sm-2 control-label">@lang('employee.PreferredLanguage')</label>

                    <div class="col-sm-9">
                        <select name="language" class="form-control">
                            <option value="0"<?=($language == 0) ? 'selected="selected"' : ''?>>@lang('employee.English')</option>
                            <option value="1"<?=($language == 1) ? 'selected="selected"' : ''?>>@lang('employee.Japanese')</option>
                        </select>
                    </div>
                </div>
            </form>

            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="submit" class="btn btn-danger">@lang('employee.Submit')</button>
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
                        Change Password
                    </button>
                </div>
                
            {{-- <form  method="POST" action="{{route('updatePassword')}}" enctype="multipart/form-code"> --}}
                {{-- @csrf --}}
                <div class="modal" id="myModal">
                    <div class="modal-dialog">
                        <div class="modal-content">

                            <!-- Modal Header -->
                            <div class="modal-header">
                                <h5 class="modal-title">Change Password</h5>
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                            </div>

                            <!-- Modal body -->
                            <div class="modal-body">
                                <div class="form-group">
                                    <label class="col-sm-4 control-label">Current Password</label>

                                    <div class="col-sm-10">
                                        <input type="password" class="form-control" id="current-password" name="current_password" placeholder="Type Current Password">

                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-4 control-label">New Password</label>

                                    <div class="col-sm-10">
                                        <input type="password" class="form-control" id="password" name="password" placeholder="Type New Password">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-4 control-label">Confirm Password</label>

                                    <div class="col-sm-10">
                                        <input type="password" class="form-control" id="password_confirmation" name="password_confirmation" placeholder="Re-enter Password">
                                    </div>
                                </div>
                            </div>

                            <!-- Modal footer -->
                            <div class="modal-footer">
                                <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                                <span id="submit" class="btn btn-success" >Submit</span>
                            </div>

                        </div>
                    </div>
                </div>
            {{-- </form> --}}
        </div>

    </div>

</div>
<!-- /.row -->
@endsection
@push('scripts')
<script type="text/javascript">
$.ajaxSetup({
    headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    }
});
$('#submit').click(function () {
    var cpassword = $('#current-password').val();
    var password= $('#password').val();
    var rpassword = $('#password_confirmation').val();
    alert(cpassword);
    alert(password);
    alert(rpassword);

    if(password != rpassword){
        alert('duiwata password milena');
    }
    else{
        $.ajax({
            type: 'POST',
            url: '{{route("updatePassword")}}',
            dataType: 'json',
            async: true,
            data: { 'cpassword':cpassword, 'pass':password, 'rpass':rpassword },
            success: function (data) {
                if(data==0){
                    alert('pahile ko password milena');
                }
                else if(data==2){
                    alert('new password should be entered');
                }
                else if(data==3){
                    alert('the new password unmatched with confirm password');
                }
                else if(data == 4){
                    alert('password all field must be entered');
                }
                else {
                    $("#alert").show()
                    $("#message").html('<span>{{trans('employee.passwordchanged')}}</span>');
                    $("#myModal").hide()
                    $(function () {
                        $('html, body').animate({
                            scrollTop: $("#alert").offset().top
                        }, 500);
                        setTimeout(function () {
                            $("#alert").hide(500);
                        }, 4000);
                    });
                }

            }
        });
    }
});
</script>
@endpush