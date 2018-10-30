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
                        <h3 class="box-title">Employee Worksheet</h3>
                        <hr>
                        <div class="row">
                            <div class="col-md-1" style="text-align: right">
                                <label for="from">From</label>
                            </div>
                            <div class="col-md-2">
                                {{ Form::date('start_date', \Carbon\Carbon::now(), array('class' => 'form-control','id'=>'from', 'required'=>''))}}

                                {{--<input class="date form-control" id="from" name="from" type="text" required>--}}
                            </div>
                            {{--<div class="col-md-1" style="text-align: right">--}}
                                {{--<label for="from">To</label>--}}
                            {{--</div>--}}
                            {{--<div class="col-md-2">--}}
                                {{--{{ Form::date('start_date', \Carbon\Carbon::now(), array('class' => 'form-control','id'=>'to', 'required'=>''))}}--}}
                                {{--<input class="date form-control" id="to" name="to" type="text" required>--}}
                            {{--</div>--}}
                            <div class="col-md-1">
                                <span class="btn btn-primary" id="submit">Submit</span>
                            </div>

                        </div>
                    </div>
                    <div class="box-body">
                        <div class='wrapper' id="allTable" style="display: none">
                            <table class="table table-striped">
                                <thead>
                                    <th>PSIS No.</th>
                                    <th>Name</th>
                                    <th>Total Workdays</th>
                                    <th>Total Worked Hours</th>
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
                success: function (data) {
                    // console.log(data);
                    // alert('hey');
                    let i;
                    $("#tbody").html('');

                    for (i = 0; i < data.length; i++) {
                        var html = '<tr>' +
                            '<td>' + data[i].staff_no + '</td>' +
                            '<td>' + data[i].name + '</td>' +
                            '<td>' + data[i].totalWorkdays + '</td>' +
                            '<td>' + data[i].totalWorked + '</td>'
                        '</tr>';

                        $("#tbody").append(html);
                    }
                    $("#allTable").show();


                }
            });
        });
    </script>
@endpush
