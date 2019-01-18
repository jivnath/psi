{{--{{dd($total)}}--}}
@if($total)
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