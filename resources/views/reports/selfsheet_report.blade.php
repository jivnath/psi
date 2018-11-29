@extends('layouts.app')
@section('content')
    {{--<link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">--}}

    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="box box-info">
                    <div class="box-body">
                        <div class="row">
                            <div class="col-md-3"><h3>@lang('employee.SelfSheetReport')</h3></div>
                            <div class="col-md-2 subsectionDiv" style="text-align: right">
                                <label for="subsection">@lang('employee.SubSection')</label>
                            </div>
                            <div class="col-md-2 subsectionDiv">
                                <select class="form-control" name="section" id="section">
                                    <option value="0">@lang('employee.None')</option>
                                    @foreach($subSection as $sub)
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

                            <div class="col-md-1 submit" style="display: none">
                                <span class="btn btn-primary" id="submit">@lang('employee.Submit')</span>
                            </div>
                        </div>
                        <hr>

                        <div id="loadingDiv" style="display: none"><h5><b>@lang('employee.LoadingPleaseWait')</b></h5></div>
                        <div id="error" style="display: none"><b>@lang('employee.NoShiftAvailable')</b></div>
                        <div id="tableDiv" style="display:none; margin-top: 25px;">
                            <table style="" id="selfsheet" class="table table-striped">
                                <thead>
                                <th>#</th>
                                <th>@lang('employee.psi_number')</th>
                                <th>@lang('employee.EmployeeName')</th>
                                <th>@lang('employee.Shifts')</th>
                                <th>@lang('employee.Responsible')</th>
                                <th>@lang('employee.Confirmationthedaybefore')</th>
                                <th>@lang('employee.Responsible')</th>
                                <th>@lang('employee.Confirm3hoursago')</th>
                                <th>@lang('employee.Arrivaltimeiflate')</th>
                                <th>@lang('employee.Reasonforlate')</th>
                                <th>@lang('employee.CallMedium')</th>
                                <th>@lang('employee.Flag')</th>
                                <th>@lang('employee.Deletedat')</th>

                                </thead>
                                <tbody id="body">

                                </tbody>
                            </table>
                        </div>
                        </div>
                    </div>
                </div>


            {{--<div class='col-md-12'>--}}
                {{--<div id='selfsheet_report' class='' style="width: 100%;overflow: scroll;position: absolute;"></div>--}}
            {{--</div>--}}

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
        $(document).ready(function () {
            $('#tableDiv').css({
                'width': window.innerWidth - 90,
                'overflow-x': 'scroll',
                'height': 'auto'
            });
        });
        $("#section").change(function(){
            $("#error").hide();
            var id = $(this).val();
            if(id != 0) {
                $.ajax({
                    type: "GET",
                    url: "{{route('getShiftsForSubsection')}}",
                    data: {'id': id},
                    dataType: "json",
                    success: function (data) {
                        if(data==''){
                            $("#tableDiv").hide();
                            $(".dateDiv").hide();
                            $("#error").show();
                        }
                        else{
                            $("#error").hide();
                            $(".dateDiv").show();
                            $(".submit").show();
                        }
                    }
                });
            }
            else {
                $("#tableDiv").hide();
                $(".dateDiv").hide();
                $(".submit").hide();
            }
        });
        $("#submit").click(function(){
            $("#body").html('');
            var id = $("#section").val();
            var date = $("#date").val();
            $.ajax({
                type:"GET",
                url:"{{route('getSelfSheetReport')}}",
                data:{'id':id, 'date':date},
                beforeSend:function(){
                    $("#loadingDiv").show();
                },
                success:function(data,status){
                    $("#loadingDiv").hide();
                    $("#tableDiv").show();
                    $("#body").append(data);
                }
            });
        });


    </script>
@endpush
