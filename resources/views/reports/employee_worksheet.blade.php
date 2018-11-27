@extends('layouts.app')
@section('content')
    {{--<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">--}}

    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/css/bootstrap-datepicker.css"
          rel="stylesheet">
    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="box box-info">
                    <div class="box-header with-border">
                        <h3 class="box-title">@lang('employee.EmployeeWorksheet')</h3>
                        <hr>
                        <div class="row">
                            <div class="col-md-1" style="text-align: right">
                                <label for="from">@lang('employee.From')</label>
                            </div>
                            <div class="col-md-2">
                                {{ Form::date('start_date', \Carbon\Carbon::now(), array('class' => 'form-control','id'=>'from', 'required'=>''))}}

                                {{--<input class="date form-control" id="from" name="from" type="text" required>--}}
                            </div>
                            <div class="col-md-1" style="text-align: right">
                                <label for="from">@lang('employee.To')</label>
                            </div>
                            <div class="col-md-2">
                                {{ Form::date('start_date', \Carbon\Carbon::now(), array('class' => 'form-control','id'=>'to', 'required'=>''))}}
                                {{--<input class="date form-control" id="to" name="to" type="text" required>--}}
                            </div>
                            <div class="col-md-1">
                                <span class="btn btn-primary" id="submit">@lang('employee.Submit')</span>
                            </div>

                        </div>
                    </div>
                    <div class="box-body">
                        <div id="loadingDiv" style="display: none"><h5><b>@lang('employee.LoadingPleaseWait')</b></h5></div>
                        <div class='wrapper' id="allTable" style="display: none">
                            <table class="table table-striped table-condensed">
                                <thead>
                                    <th>@lang('employee.PSISNumber')</th>
                                    <th>@lang('employee.Name')</th>
                                    <th>@lang('employee.TotalWorkdays')</th>
                                    <th>@lang('employee.TotalWorkedHours')</th>
                                </thead>

                                <tbody id="tbody">

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
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/js/bootstrap-datepicker.js"></script>

    <script type="text/javascript">
        $('.date').datepicker({
            format: 'mm-dd-yyyy'
        });

        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });

        $('#submit').click(function () {
            var from = $('#from').val();
            var to = $('#to').val();
            $.ajax({
                type: "GET",
                url: "{{route('getWorksheetData')}}",
                data: {'from': from, 'to': to},
                dataType: "json",
                async: true,
                beforeSend: function(){
                    $("#loadingDiv").show();
                    $("#tbody").html('');
                    $("#allTable").hide();
                },
                success: function (data) {
                    $("#loadingDiv").hide();
                    let i;
                    if(data.length > 0)
                    {
                        for (i = 0; i < data.length; i++) {
                            var html = '<tr>' +
                                '<td>' + data[i].staff_no + '</td>' +
                                '<td>' + data[i].name + '</td>' +
                                '<td>' + data[i].totalWorkdays + '</td>' +
                                '<td>' + data[i].totalWorked + '</td>'
                            '</tr>';
                        }
                    }
                    else
                    {
                        var html = '<tr><td colspan="4">{{trans("employee.NoDataAvailable")}}</td></tr>';

                    }
                    $("#tbody").append(html);
                    $("#allTable").show();
                }
            });
        });
    </script>
@endpush
