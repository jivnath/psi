@extends('layouts.app')
@section('content')
    {{--<link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">--}}

    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="box box-info">
                    <div class="box-header with-border">
                        <h3 class="box-title">@lang('employee.AttendanceManagement')</h3>
                    </div>
                    <div class="box-body">
                        <div class="row">
                                <div class="col-md-1 subsectionDiv" style="text-align: right">
                                    <label for="subsection">@lang('employee.SubSection')</label>
                                </div>
                                <div class="col-md-2 subsectionDiv">
                                    <select class="form-control" name="subsection" id="subsection">
                                        <option value="0">@lang('employee.None')</option>
                                        @foreach($subSections as $sub)
                                            <option value="{{$sub->id}}">{{$sub->name}}</option>
                                        @endforeach
                                    </select>
                                </div>

                                <div class="col-md-1 dateDiv" style="text-align: right;display: none">
                                    <label for="date">@lang('employee.Date')</label>
                                </div>
                                <div class="col-md-2 dateDiv" style="display: none">
                                    {{ Form::date('date', \Carbon\Carbon::now(), array('class' => 'form-control','id'=>'date'))}}
                                </div>

                                <div class="col-md-1 shiftDiv" style="text-align: right;display:none;">
                                    <label for="shift">@lang('employee.Shifts')</label>
                                </div>
                                <div class="col-md-2 shiftDiv" style="display: none">
                                    <select class="form-control" name="shift" id="shift">
                                    </select>
                                </div>
                            <div class="col-md-1 submit" style="display: none">
                                <span class="btn btn-primary" id="submit">@lang('employee.Submit')</span>
                            </div>
                        </div>
                        <hr>
                        <div id="loadingDiv" style="display: none"><h5><b>@lang('employee.LoadingPleaseWait')</b></h5></div>
                        <div id="tableDiv" style="display:none;margin-top: 25px;">
                            <p>
                                <button class="specific">@lang('employee.PrintTable')</button>
                            </p>
                            <table style="" id="attendance" class="table table-striped">
                                <thead>
                                <th>#</th>
                                <th>@lang('employee.PSISNumber')</th>
                                <th>@lang('employee.Name')</th>
                                <th>@lang('employee.Phonetic')</th>
                                <th>@lang('employee.Country')</th>
                                <th>@lang('employee.Shifts')</th>
                                <th>@lang('employee.SubSection')</th>
                                <th>@lang('employee.Confirmationthedaybefore')</th>
                                <th>@lang('employee.Confirmation3hoursbefore')</th>
                                <th>@lang('employee.ContactNo')</th>
                                <th>出勤ｼｭｯｷﾝ</th>
                                <th>カード</th>
                                <th>出勤時刻</th>
                                <th>退勤時刻</th>
                                <th>@lang('employee.BreakTime')</th>
                                <th>移動</th>
                                </thead>
                                <tbody id="body">
                                {{--@foreach($data as $index => $datum)--}}
                                    {{--<tr>--}}
                                        {{--<td scope="row">{{$index + 1}}</td>--}}
                                        {{--<td>{{$datum->staff_no}}</td>--}}
                                        {{--<td>{{$datum->name}}</td>--}}
                                        {{--<td>{{$datum->phoetic_kanji}}</td>--}}
                                        {{--<td>{{$datum->country_citizenship}}</td>--}}
                                        {{--<td>{{substr($datum->start_time, 0, -3)}}--}}
                                            {{--- {{substr($datum->end_time, 0, -3)}}</td>--}}
                                        {{--<td>{{$datum->subsection}}</td>--}}
                                        {{--<td>{{$datum->conformation_day_before}}</td>--}}
                                        {{--<td>{{$datum->conformation_3_hours_ago}}</td>--}}
                                        {{--<td>{{$datum->cell_no}}</td>--}}
                                        {{--<td></td>--}}
                                        {{--<td></td>--}}
                                        {{--<td></td>--}}
                                        {{--<td></td>--}}
                                        {{--<td></td>--}}
                                        {{--<td></td>--}}
                                    {{--</tr>--}}
                                {{--@endforeach--}}
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
@push('scripts')
    {{--<script src='https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js'></script>--}}
    {{--<script src='https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js'></script>--}}
    <script>
        // $(document).ready(function () {
            // $('#attendance').DataTable({"pageLength": 20});
        // });

        $("#subsection").change(function(){
            var id = $(this).val();
            if(id != 0) {
                $("#shift").html('');
                $.ajax({
                    type: "GET",
                    url: "{{route('getShiftsForSubsection')}}",
                    data: {'id': id},
                    dataType: "json",
                    success: function (data) {
                        $("#shift").append(data);
                        $(".dateDiv").show();
                        $(".shiftDiv").show();
                        $(".submit").show();
                    }
                });
            }
            else {
                $("#tableDiv").hide();
                $(".dateDiv").hide();
                $(".shiftDiv").hide();
                $(".submit").hide();
            }
        });
        $("#submit").click(function(){
           $("#body").html('');
           var id = $("#subsection").val();
           var date = $("#date").val();
           var shift = $("#shift").val();
           $.ajax({
               type:"GET",
               url:"{{route('getAttendanceMgmtData')}}",
               data:{'id':id, 'date':date, 'shift':shift},
               beforeSend:function(){
                   $("#loadingDiv").show();
               },
               success:function(data){
                    $("#loadingDiv").hide();
                    $("#tableDiv").show();
                    $("#body").append(data);
               }
           });
        });

        $('.specific').click(function(){
            var print =  document.getElementById('attendance');
            var wr = window.open();
            wr.document.write(print.outerHTML);
            wr.document.close();
            wr.focus();
            wr.print();
            wr.close();
        });
    </script>
@endpush
