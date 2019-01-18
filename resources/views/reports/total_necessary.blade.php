@extends('layouts.app')
@section('content')
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">
    <style>
    </style>
    @php
        $today = date('Y');
        $month = date('n');
    @endphp
    {{--    {{dd($year)}}--}}
    <div class="col-md-12">
        <div class="box box-info">
            <div class="box-header with-border">
                <h3 class="box-title">@lang('employee.TotalNecessary')</h3>
            </div>
            <div class="box-body">
                <div class="row">
                    <div class="col-md-2" style="text-align: right">@lang('employee.year')</div>
                    <div class="col-md-2">
                        <select class="year form-control">
                            @foreach($year as $y)
                                {{--{{($y->year)}}--}}
                                <option
                                    <?= ($today == $y->year) ? 'selected' : '' ?> value="{{$y->year}}">{{$y->year}}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="col-md-2" style="text-align: right">@lang('employee.month')</div>
                    <div class="col-md-2">
                        <select class="month form-control">
                            <option <?= ($month == 1) ? 'selected' : '' ?> value="1">@lang('employee.january')</option>
                            <option <?= ($month == 2) ? 'selected' : '' ?> value="2">@lang('employee.february')</option>
                            <option <?= ($month == 3) ? 'selected' : '' ?> value="3">@lang('employee.march')</option>
                            <option <?= ($month == 4) ? 'selected' : '' ?> value="4">@lang('employee.april')</option>
                            <option <?= ($month == 5) ? 'selected' : '' ?> value="5">@lang('employee.may')</option>
                            <option <?= ($month == 6) ? 'selected' : '' ?> value="6">@lang('employee.june')</option>
                            <option <?= ($month == 7) ? 'selected' : '' ?> value="7">@lang('employee.july')</option>
                            <option <?= ($month == 8) ? 'selected' : '' ?> value="8">@lang('employee.august')</option>
                            <option <?= ($month == 9) ? 'selected' : '' ?> value="9">@lang('employee.september')</option>
                            <option <?= ($month == 10) ? 'selected' : '' ?> value="10">@lang('employee.october')</option>
                            <option <?= ($month == 11) ? 'selected' : '' ?> value="11">@lang('employee.november')</option>
                            <option <?= ($month == 12) ? 'selected' : '' ?> value="12">@lang('employee.december')</option>
                        </select>
                    </div>
                    <div class="col-md-2">
                        <span class="btn btn-primary submit">@lang('employee.Submit')</span>
                    </div>
                </div>
                <div class="generatedReport">
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
                                                    @if ($d->normal!='' || $d->normal!=0)
                                                        @if($d->normal <= $d->occupied)
                                                            <td class="table-primary">{{$d->occupied}}</td>
                                                            <td class="table-primary">{{$d->normal}}</td>
                                                        @else
                                                            <td class="table-danger">{{$d->occupied}}</td>
                                                            <td class="table-danger">{{$d->normal}}</td>
                                                        @endif
                                                    @else
                                                        <td>0</td>
                                                        <td>0</td>
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
                    @else
                        <div>
                            <h6><b>@lang('employee.NoDataAvailable')</b></h6>
                        </div>
                    @endif
                </div>
            </div>
        </div>
    </div>
    @push('scripts')
        <script src='https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js'></script>
        <script src='https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js'></script>
        <script>
            $(document).ready(function () {
                $('.generatedReport').css('width', (window.innerWidth - 75));
            });

            $(".submit").click(function () {
                var year = $(".year").val();
                var month = $(".month").val();
                $.ajax({
                    type: "GET",
                    url: "{{route('generateTotalNecessaryReport')}}",
                    data: {'year': year, 'month': month},
                    beforeSend: function () {
                        let html = "<h5><b>{{trans('employee.LoadingPleaseWait')}}</b></h5>"
                        $(".generatedReport").html(html);
                    },
                    success: function (data) {
                        $(".generatedReport").html(data);
                    }
                });
            });
        </script>
    @endpush
@endsection