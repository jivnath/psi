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

                <b style="color:#004d99;font-size:110%;margin-left:3%;">Request</b>
                <div style="margin-left:3%;">
                    {{$view->request_message}}
                    <i class="fas fa-clock" style="color:#004d99;margin-left:80%" ;>{{$view->message_date}}</i>
                </div>
               
                @if($view->file_upload_path!=null)
                <a href="{{route('inbox.download',$view->id)}}" class="btn btn-success btn-sm"  style="margin-left:3%"><i class="fas fa-download">  Download File</i></a>                {{$view->file_upload_path}}
                <hr> @endif

                <b style="color:#004d99;font-size:110%;margin-left:3%;">Response</b>
                <div style="margin-left:3%;">
                    {{$view->response_message}}
                    <i class="fas fa-clock" style="color:#004d99;margin-left:80%" ;>{{$view->response_date}}</i>
                </div>

                
                



            </div>


        </div>
    </div>
@endsection