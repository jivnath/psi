@extends('layouts.app')
@section('content')
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">
    <style>
    </style>
    <div class="col-md-12">
        <div class="box box-info">
            <div class="box-header with-border">
                <h3 class="box-title">@lang('employee.TotalNecessary')</h3>

            </div>
            <div class="box-body">
                @if($total)
                    {{--{{dd($total)}}--}}
                    @foreach($total as $ts)
                        <div class="tableDiv" style="overflow-x: auto">
                            @if(count($ts['smd'])>0)
                                <h5><b>{{$ts['name']}}</b></h5>
                                <table class="table table-bordered table-condensed" id='tn_table' style="">
                                    <thead>
                                    <tr>
                                        <th>@lang('employee.Date')</th>
                                        @foreach($ts['smd'][0]['date'] as $t)
                                            <th colspan="2">{{substr($t->date, 5)}}</th>
                                        @endforeach
                                    </tr>
                                    </thead>
                                    <thead>
                                    <tr>
                                        <th>@lang('employee.Time')</th>
                                        @foreach($ts['smd'][0]['date'] as $t)
                                            <th>@lang('employee.Total')</th>
                                            <th>@lang('employee.Nece')</th>
                                        @endforeach
                                    </tr>
                                    </thead>
                                    <tbody>
                                    @foreach($ts['smd'] as $t)
                                        <tr>
                                            <td>{{substr($t['time'], 0, -3)}}</td>
                                            @foreach($t['date'] as $d)
                                                @if($d->normal <= $d->occupied)
                                                    <td class="table-primary">{{$d->occupied}}</td>
                                                    <td class="table-primary">{{$d->normal}}</td>
                                                @else
                                                    <td class="table-danger">{{$d->occupied}}</td>
                                                    <td class="table-danger">{{$d->normal}}</td>
                                                @endif
                                            @endforeach
                                        </tr>
                                    @endforeach
                                    </tbody>
                                </table>
                            @endif
                        </div>
                        <hr>
                    @endforeach
                @endif
            </div>
        </div>
    </div>
    @push('scripts')
        <script src='https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js'></script>
        <script src='https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js'></script>
        <script>
            $(document).ready(function () {
                $('.tableDiv').css('width', (window.innerWidth - 50));
            });
        </script>
    @endpush
@endsection