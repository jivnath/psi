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
                <h4 class="box-title" style="color:#004d99;font-weight:bold;font-size:160%;margin-left:3%">{{$name->name}}</h4>

            </div>
            <div class="box-body">

                <div style="margin-left:3%;font-size:medium">
                    {{$edit->request_message}}
                </div>

                <i class="fas fa-clock" style="color:#004d99;margin-left:80%" ;>{{substr($edit->message_date, 0, -3)}}</i><hr>

                @if($edit->file_upload_path!=null)
                <a href="{{route('inbox.download',$edit->id)}}" class="btn btn-success btn-sm"><i class="fas fa-download">  Download File</i></a>  {{$edit->file_upload_path}}
                <hr> @endif 

                <form action="{{route('inbox.update', $edit->id)}}" method="POST" class="form-horizontal" enctype="multipart/form-data">
                    @csrf @method('PUT')

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
            </form>
        </div>

        </div>


    </div>
</div>
@endsection