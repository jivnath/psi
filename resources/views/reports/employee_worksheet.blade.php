@extends('layouts.app')
@section('content')
    {{--<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">--}}

    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/css/bootstrap-datepicker.css" rel="stylesheet">
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
                                <input class="date form-control" name="from" type="text">
                            </div>
                            <div class="col-md-1" style="text-align: right">
                                <label for="from">To</label>
                            </div>
                            <div class="col-md-2">
                                <input class="date form-control" name="to" type="text">
                            </div>

                        </div>
                    </div>
                    <div class="box-body">
                        <div class='wrapper'>
                            <table></table>
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
    </script>
@endpush
