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
                <div class="row" id="filterDiv">
                    <div class="col-md-1 sections" style="text-align: right">
                        <label for="section">@lang('employee.Section')</label>
                    </div>
                    <div class="col-md-2 sections">
                        <select id="section" class="form-control">
                            <option value="0">@lang('employee.none')</option>
                            @foreach($sections as $section)
                                <option value="{{$section->id}}">{{$section->name}}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="col-md-1 date" style="display: none; text-align: right">
                        <label for="date">@lang('employee.Date')</label>
                    </div>
                    <div class="col-md-2 date" style="display: none">
                        {{ Form::date('date', \Carbon\Carbon::now(), array('class' => 'form-control','id'=>'date'))}}
                    </div>
                    <div class="col-md-1 submit" style="display: none">
                        <span class="btn btn-primary" id="submit">@lang('employee.Submit')</span>
                    </div>
                </div>
                <hr>
                <div id="loadingDiv" style="display: none"><h5><b>@lang('employee.LoadingPleaseWait')</b></h5></div>
                <div id="table" style="display: none">
                    <table class="table table-bordered" id='tn_table'>
                        <thead>
                        <tr>
                            <th>@lang('employee.SubSection')</th>
                            <th>@lang('employee.Time')</th>
                            <th>@lang('employee.Total')</th>
                            <th>@lang('employee.Necessary')</th>
                        </tr>
                        </thead>
                        <tbody id="table_body">

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    </div>
    @push('scripts')
        <script src='https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js'></script>
        <script src='https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js'></script>
        <script>
            $("#section").change(function () {
                var section = $(this).val();
                if (section != 0) {
                    $('.date').show();
                    $('.submit').show();
                }
                else {
                    $('.date').hide();
                    $('.submit').hide();
                }
            });
            $("#submit").click(function () {
                var section = $('#section').val();
                var date = $('#date').val();
                $("#table_body").html('');
                // alert(date);
                if (section != 0) {
                    $.ajax({
                        type: "GET",
                        url: "{{route('getTotalNecessaryReportData')}}",
                        data: {'section': section, 'date': date},
                        beforeSend:function(){
                            $("#loadingDiv").show();
                        },
                        success: function (data) {
                            $("#table_body").append(data);
                            $("#table").show();
                            $("#loadingDiv").hide();
                        }
                    });
                }
            });
        </script>


    @endpush
@endsection