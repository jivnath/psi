@extends('layouts.app')
@section('content')
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">

    <div class="container">
        <h2 class="row justify-content-center">@lang('employee.CompanyShiftTimeTable') </h2>
        <div class="row">
            <div class="col-md-7">
                <div id="alert" style="display: none">
                    <div class="alert alert-success" role="alert">
                        <strong>@lang('employee.Success'):</strong><span id="message"></span>
                    </div>
                </div>
                <div class="box">
                    <div class="box-header">
                        <h4>@lang('employee.AddShifts')</h4>
                    </div>
                    <div class="box-body " style="padding: 10px;">
                        <form action="{{ route('shift.store') }}" method="POST">
                            <input type="hidden" name="_method" value="POST">
                            <input type="hidden" name="_token" value="{{ csrf_token() }}">

                            <div class="row" style="text-align: center; margin-top: 5px;">
                                <div class="col-md-5">
                                    <label for="shiftName"> @lang('employee.SubsectionName') </label>
                                </div>
                                <div class="col-md-7 ">
                                    <select class="form-control" name="company_name" required>
                                        <option value="">--@lang('employee.SelectSubsection')--</option>
                                        @foreach($data['companies'] as $company )
                                            <option value="{{ $company->id }}"> {{ $company->name }} </option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <br/>
                            <div class="row" style="text-align: center">
                                <div class="col-md-5">
                                    @lang('employee.ShiftTimeTable')
                                </div>
                                <!--Dynamic Field Start -->
                                <div class="col-md-7">
                                    <div class="table-responsive">
                                        <table id="dynamic_field" style="width: 100%">
                                            <tr class="form-group">
                                                <td style="padding: 10px"><input type="time" name="start_shift[]"
                                                                                 placeholder="Shift Time"
                                                                                 class="form-control name_list"
                                                    /></td>
                                                <td style="padding: 10px"><input type="time" name="end_shift[]"
                                                                                 placeholder="Shift Time"
                                                                                 class="form-control name_list"
                                                    /></td>
                                                <td><i name="add" id="add" class="fa fa-plus"
                                                       style=" font-size:28px; color:green;"></i></td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <!-- Dynamic Field end -->
                            <div class="row">
                                <div class="col-md-7"></div>
                                <div class="col-md-5" style="text-align: right">
                                    <button style="margin-top: 15px" type="submit" class="btn btn-primary">
                                        @lang('employee.Save')
                                    </button>
                                    <button style="margin-top: 15px" type="reset" class="btn btn-danger">
                                        @lang('employee.Clear')
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

            <br/>
            <!--Table List Start -->
            <div class="col-md-5">
                <div class="box">
                    <div class="box-header">
                        <h4>@lang('employee.Shifts')</h4>
                    </div>
                    <div class="box-body">
                        <table id="shiftTable" class="table table-striped">
                            <thead>
                            <tr>
                                <th>@lang('employee.SubsectionName')</th>
                                <th>@lang('employee.StartEndTime')</th>
                                <th>@lang('employee.Action')</th>
                            </tr>
                            </thead>
                            <tbody>
                            @if(count($data['shifts'])>0) @foreach($data['shifts'] as $shift)
                                <tr>
                                    @php $c = App\Http\Controllers\ShiftMasterController::findCompany($shift->company_id);
                                    @endphp
                                    <td> {{ $c }} </td>
                                    <td>
                                        {{ substr($shift->start_time, 0, -3).' - '.substr($shift->end_time, 0, -3) }}
                                    </td>
                                    <td><a href="{{ route('shift.edit', $shift->id) }}" class="btn btn-link btn-sm">
                                            @lang('employee.Edit')</a></td>
                                </tr>
                            @endforeach @else
                                <h3>@lang('employee.NoShiftAvailable')</h3>
                            @endif
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
@push('scripts')
    {{--<script src="//ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>--}}
    {{--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>--}}
    <script src='https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js'></script>
    <script src='https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js'></script>
    <script>
        $(document).ready(function () {
            $('#shiftTable').DataTable({"pageLength": 5});

            var postURL = "<?php echo url('addmore'); ?>";
            var i = 1;
            $('#add').click(function () {
                i++;
                $('#dynamic_field').append('<tr id="row' + i + '" class="dynamic-added"><td><input type="time" name="start_shift[]" placeholder="Enter your Name" class="form-control name_list" /></td><td><input type="time" name="end_shift[]" placeholder="Enter your Name" class="form-control name_list" /></td><td><button type="button" name="remove" id="' + i + '" class="btn btn-danger btn_remove">X</button></td></tr>');
            });


            $(document).on('click', '.btn_remove', function () {
                var button_id = $(this).attr("id");
                $('#row' + button_id + '').remove();
            });


            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });


            $('#submit').click(function () {
                $.ajax({
                    url: postURL,
                    method: "POST",
                    data: $('#add_name').serialize(),
                    type: 'json',
                    success: function (data) {
                        if (data.error) {
                            printErrorMsg(data.error);
                        } else {
                            i = 1;
                            $('.dynamic-added').remove();
                            $('#add_name')[0].reset();
                            $(".print-success-msg").find("ul").html('');
                            $(".print-success-msg").css('display', 'block');
                            $(".print-error-msg").css('display', 'none');
                            $(".print-success-msg").find("ul").append('<li>Record Inserted Successfully.</li>');

                            $("#alert").show()
                            $("#message").html('<span>{{trans('employee.Saved')}}</span>');
                            $(function () {
                                $('html, body').animate({
                                    scrollTop: $("#alert").offset().top
                                }, 500);
                                setTimeout(function () {
                                    $("#alert").hide(500);
                                }, 4000);
                            });
                        }
                    }
                });
            });


            function printErrorMsg(msg) {
                $(".print-error-msg").find("ul").html('');
                $(".print-error-msg").css('display', 'block');
                $(".print-success-msg").css('display', 'none');
                $.each(msg, function (key, value) {
                    $(".print-error-msg").find("ul").append('<li>' + value + '</li>');
                });
            }
        });

    </script>
@endpush