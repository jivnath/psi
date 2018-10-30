@extends('layouts.app') 
@section('content')
<style>
    .a {
        display: block;
    }
</style>
<div class="row">

    <div class="col-md-3">
        <div class="box box-primary">
            <div class="box-body">
                <div class="btn btn-link" href=""> New Messages</div>
                <hr>
                <div class="btn btn-link"> Read Messages</div>
                <hr>
                <div class="btn btn-link"> Unread Messages</div>
            </div>
        </div>
    </div>
    <div class="col-md-8">
        <div class="box box-primary">
            <div class="box-header with-border">
                <center>
                    <h4 class="box-title" style="color:#3399ff">Request Message</h4>
                </center>
            </div>
            <div class="box-body">
                <ul style="list-style-type:none">
                    @foreach($msg as $m)
                    <li>
                        <div>
                            @foreach($employee as $e) @if($e->psi_number==$m->employeeid)
                            <div style="color:#004d99;font-weight:bold">{{$e->name}}</div>
                            @endif @endforeach {{$m->request_message}}
                            <br>
                            <i class="fas fa-clock" style="color:#004d99;margin-left:80%">{{$m->message_date}}</i>
                            <a class="btn btn-primary" href="{{route('inbox.smessage', $m->id)}}">Response </a>

                        </div>
                    </li>
                    <hr> @endforeach
                </ul>
            </div>


        </div>
    </div>
@endsection