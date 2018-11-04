@extends('layouts.app')
@section('content')
    {{--<link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">--}}

    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="box box-info">
                    <div class="box-header with-border">
                        <h3 class="box-title">Attendance Management</h3>
                    </div>
                    <div class="box-body">
                        <div class="row">
                                <div class="col-md-1 subsectionDiv" style="text-align: right">
                                    <label for="subsection">Subsection</label>
                                </div>
                                <div class="col-md-2 subsectionDiv">
                                    <select class="form-control" name="subsection" id="subsection">
                                        <option value="0">None</option>
                                        @foreach($subSections as $sub)
                                            <option value="{{$sub->id}}">{{$sub->name}}</option>
                                        @endforeach
                                    </select>
                                </div>

                                <div class="col-md-1 dateDiv" style="text-align: right;display: none">
                                    <label for="date">Date</label>
                                </div>
                                <div class="col-md-2 dateDiv" style="display: none">
                                    {{ Form::date('date', \Carbon\Carbon::now(), array('class' => 'form-control','id'=>'date'))}}
                                </div>

                                <div class="col-md-1 shiftDiv" style="text-align: right;display:none;">
                                    <label for="shift">Shift</label>
                                </div>
                                <div class="col-md-2 shiftDiv" style="display: none">
                                    <select class="form-control" name="shift" id="shift">
                                    </select>
                                </div>
                            <div class="col-md-1 submit" style="display: none">
                                <span class="btn btn-primary" id="submit">Submit</span>
                            </div>
                        </div>
                        <hr>
                        <div id="loadingDiv" style="display: none"><h5><b>Loading, Please wait...</b></h5></div>
                        <div id="tableDiv" style="display:none;margin-top: 25px;">
                            <table style="" id="attendance" class="table table-striped">
                                <thead>
                                <th>#</th>
                                <th>PSI-S No.</th>
                                <th>Name</th>
                                <th>Phonetic</th>
                                <th>Country</th>
                                <th>Confirmation Day Before</th>
                                <th>Confirmation 3 Hours Before</th>
                                <th>Contact No.</th>
                                <th>出勤ｼｭｯｷﾝ</th>
                                <th>カード</th>
                                <th>出勤時刻</th>
                                <th>退勤時刻</th>
                                <th>Break Time</th>
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
               dataType:"json",
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

    </script>

@endpush
