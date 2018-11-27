@extends('layouts.app') 
@section('content')

<div class="row">
    <div class="col-md-12">
        <div class="box box-primary">
            <div style="margin-left: 20px">
                <h3><center>@lang('employee.Messages')</center></h3>
            </div>
            <div class="box-body">
                <div class="col-md-10 offset-1">
                    <div class="nav-tabs-custom">
                       
                        <div class="tab-content">
                            <div class="active tab-pane" id="all">
                                {{--
                                <div class="box box-default">--}} {{--
                                    <div class="box-header">
                                        <h5>All Requests</h5>
                                    </div>--}} {{--
                                    <div class="box-body">--}}
                                        <hr> @foreach($inbox as $i)
                                        <div class="box-body chat" id="chat-box">
                                            @foreach($employees as $e) @if($e->psi_number==$i->employeeid)
                                            <div class="item">
                                                <img src="{{asset('images/dist/user4-128x128.jpg')}}" alt="user image" class="online">
                                                <small class="text-muted pull-right"><i class="fa fa-clock-o"></i> {{$i->message_date}}</small>
                                                    @if($i->response_message==null)
                                                    <div style="font-weight:bold">
                                                         <p class="message" style="font-size:small;">                                                    <p class="message" style="font-size:small;">
                                                        <a href="#" class="name" style="font-weight:bold">
                                                {{$e->name}}</a><br> {{$i->request_message}}
                                                    </p>
                                                </div>

                                                    @else
                                                <p class="message" style="font-size:small;">
                                                    <a href="#" class="name" style="font-weight:bold">
                                            {{$e->name}}</a><br> {{$i->request_message}}
                                                </p>
                                                @endif
                                            </div><br> @endif @endforeach @foreach($users as $u) @if($u->id==$i->response_by_userid)
                                            <div class="item">
                                                <img src="{{asset('images/dist/user1-128x128.jpg')}}" alt="user image" class="online">
                                                <small class="text-muted pull-right"><i class="fa fa-clock-o"></i> {{$i->response_date}}</small>
                                                <p class="message" style="font-size:small;">
                                                    <a href="#" class="name" style="font-weight:bold">
                                             {{$u->name}}</a><br> {{$i->response_message}}
                                                </p>
                                            </div>
                                            @endif @endforeach
                                        </div>
                                        <hr>
                                        <hr> @endforeach
                                    </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
@endsection