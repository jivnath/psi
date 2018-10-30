@extends('layouts.app') 
@section('content')

<div class="row">

    <div class="col-md-3">
        <div class="box box-primary">
            <div class="box-body">
                <div class="btn btn-link"> Unresponded Messages</div>
                <hr>
                <div class="btn btn-link"> Responded Messages</div>
                <hr>
                <div class="btn btn-link"> All Messages</div>
            </div>
        </div>
    </div>
    <div class="col-md-8">
        <div class="box box-primary">
            <div class="box-header with-border">
                <center>
                    <h4 class="box-title" style="color:#3399ff">Unresponded Messages</h4>
                </center>
            </div>
            <div class="box-body">
                <ul style="list-style-type:none">
                    @foreach($umsg as $u)
                    <li>
                        <div>
                            @foreach($employee as $e) 
                            @if($e->psi_number==$u->employeeid)
                            <div style="color:#004d99;font-weight:bold">{{$e->name}}</div>
                            @endif 
                            @endforeach {{$u->request_message}}
                            <br>
                            <i class="fas fa-clock" style="color:#004d99;margin-left:80%">{{$u->message_date}}</i>
                            <a class="btn btn-primary btn-sm" href="{{route('inbox.smessage', $u->id)}}">Response </a>

                        </div>
                    </li>
                    <hr> @endforeach
                </ul>
            </div>
        </div>
    </div>
    <div class="col-md-3">
    </div>
    <div class="col-md-8">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <center>
                        <h4 class="box-title" style="color:#3399ff">Responded Messages</h4>
                    </center>
                </div>
                <div class="box-body">
                    <ul style="list-style-type:none">
                        @foreach($rmsg as $r)
                        <li>
                            <div>
                                @foreach($employee as $e) @if($e->psi_number == $r->employeeid)
                                <div style="color:#004d99;font-weight:bold">{{$e->name}}</div>
                                @endif @endforeach {{$r->request_message}}
                                <br>
                                <i class="fas fa-clock" style="color:#004d99;margin-left:80%">{{$r->message_date}}</i>
                                <a class="btn btn-primary btn-sm" href="{{route('inbox.view', $r->id)}}"> View Response</a>
    
                            </div>
                        </li>
                        <hr> @endforeach
                    </ul>
                </div>
            </div>
        </div>
@endsection