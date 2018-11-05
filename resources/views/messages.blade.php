@extends('layouts.app')
@section('content')

    <div class="row">
        <div class="col-md-12">
            <div class="box box-primary">
                <div style="margin-left: 20px"><h3>@lang('employee.Requests')</h3></div>
                <div class="box-body">
                    <div class="col-md-10 offset-1">
                        <div class="nav-tabs-custom">
                            <ul class="nav nav-tabs">
                                <li class="active"><a href="#all" data-toggle="tab"><b>@lang('employee.All')</b></a></li>
                                <li><a href="#unresponded" data-toggle="tab"><b>@lang('employee.Unresponded')</b></a></li>
                                <li><a href="#responded" data-toggle="tab"><b>@lang('employee.Responded')</b></a></li>
                            </ul>
                            <div class="tab-content">
                                <div class="active tab-pane" id="all">
                                    {{--<div class="box box-default">--}}
                                        {{--<div class="box-header"><h5>All Requests</h5></div>--}}
                                        {{--<div class="box-body">--}}
                                    <hr>
                                            @foreach($requests as $req)
                                                @if($req->status == 1)
                                                    <div style="font-weight:bold">
                                                        <p style="color: #004d99">{{$req->name}}</p>
                                                        <p>@lang('employee.RequestType') : {{$req->message_type}}</p>
                                                        <p style="width: 100%">{{$req->request_message}}
                                                        <h5 style="text-align: right">
                                                            <small><i class="fas fa-clock"
                                                                      style="right: 20px;color: #004d99"> {{substr($req->message_date, 0, -3)}}
                                                                </i></small>
                                                        </h5>
                                                        </p>
                                                        <a class="btn btn-primary btn-sm"
                                                           href="{{route('inbox.smessage', $req->id)}}">@lang('employee.Response') </a>
                                                        <hr>
                                                    </div>
                                                @else
                                                    <div>
                                                        <p style="color: #004d99">{{$req->name}}</p>
                                                        <p>@lang('employee.RequestType'): {{$req->message_type}}</p>
                                                        <p style="width: 100%">{{$req->request_message}}
                                                        <h5 style="text-align: right">
                                                            <small><i class="fas fa-clock"
                                                                      style="right: 20px;color: #004d99"> {{substr($req->message_date, 0, -3)}}
                                                                </i></small>
                                                        </h5>
                                                        </p>
                                                        <a class="btn btn-primary btn-sm"
                                                           href="{{route('inbox.view', $req->id)}}">@lang('employee.View')</a>
                                                        <hr>
                                                    </div>
                                                @endif
                                            @endforeach
                                        </div>
                                    {{--</div>--}}
                                {{--</div>--}}
                                <div class="tab-pane" id="unresponded">
                                    {{--<div class="box box-default">--}}
                                        {{--<div class="box-body">--}}
                                    <hr>
                                            @foreach($requests as $req)
                                                @if($req->status == 1)
                                                    <div style="font-weight:bold">
                                                        <p style="color: #004d99">{{$req->name}}</p>
                                                        <p>@lang('employee.RequestType') : {{$req->message_type}}</p>
                                                        <p style="width: 100%">{{$req->request_message}}
                                                        <h5 style="text-align: right">
                                                            <small><i class="fas fa-clock"
                                                                      style="right: 20px;color: #004d99"> {{substr($req->message_date, 0, -3)}}
                                                                </i></small>
                                                        </h5>
                                                        </p>
                                                        <a class="btn btn-primary btn-sm"
                                                           href="{{route('inbox.smessage', $req->id)}}">@lang('employee.Response') </a>
                                                        <hr>
                                                    </div>
                                                @endif
                                            @endforeach
                                        </div>
                                    {{--</div>--}}
                                {{--</div>--}}
                                <div class="tab-pane" id="responded">
                                    {{--<div class="box box-default">--}}
                                        {{--<div class="box-body">--}}
                                    <hr>
                                            @foreach($requests as $req)
                                                @if($req->status == 0)
                                                    <div>
                                                        <p style="color: #004d99">{{$req->name}}</p>
                                                        <p>@lang('employee.RequestType'): {{$req->message_type}}</p>
                                                        <p style="width: 100%">{{$req->request_message}}
                                                        <h5 style="text-align: right">
                                                            <small><i class="fas fa-clock"
                                                                      style="right: 20px;color: #004d99"> {{substr($req->message_date, 0, -3)}}
                                                                </i></small>
                                                        </h5>
                                                        </p>
                                                        <a class="btn btn-primary btn-sm"
                                                           href="{{route('inbox.view', $req->id)}}"> @lang('employee.View') </a>
                                                        <hr>
                                                    </div>
                                                @endif
                                            @endforeach
                                        </div>
                                    {{--</div>--}}
                                {{--</div>--}}

                            </div>
                            <!-- /.tab-content -->
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection