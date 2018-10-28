@extends('layouts.app') 
@section('content')
<style>
    .img-circle {
        border-radius: 50%;
    }
</style>

<div class="row">
    <div class="col-md-8 offset-md-2">
        <div class="box box-primary">
            <div class="box-header with-border">

                    <img src="{{asset('images/dist/user4-128x128.jpg')}}" alt="user image" class="profile-user-img img-responsive img-circle">
                <h4 class="box-title" style="color:#004d99;font-weight:bold;font-size:160%;margin-left:3%">Bina Maharjan</h4>

            </div>
            <div class="box-body">

                <div style="margin-left:3%;font-size:medium">
                    I wont be able to perform my tasks as i will be busy on my personal works. </div>
                <i class="fas fa-clock" style="color:#004d99;margin-left:85%";>10:44am</i></li><hr>
                <form action="{{route('inbox.store')}}" method="POST" class="form-horizontal" enctype="multipart/form-data">
                    <input type="hidden" name="_token" value="{{ csrf_token() }}">


                    <div class="form-group">
                        <label for="language" class="col-sm-3 control-label" style="color:#004d99;font-weight:bold;font-size:110%;">Response Message</label>
                        <div class="col-sm-12">
                        <textarea name="response" rows="4" cols="110"></textarea>
                        </div>
                    </div>
                    


                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <button type="submit" class="btn btn-danger">Send</button>
                            </div>
                        </div>
                    </div>
                </form>

            </div>


        </div>
    </div>
@endsection