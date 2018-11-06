@extends('layouts.app')

@section('content')
    <div class="row">
        <div class="col-md-10 offset-1">
            <div class="box" style="min-height: 200px">
                <div class="box-header">
                    <a href="{{route('availability.edit')}}" class="btn btn-link pull-right">@lang('employee.Edit')</a>
                    <a href="{{route('availability.add')}}" class="btn btn-link pull-right">@lang('employee.Add')</a>
                    <h4>@lang('employee.EmployeeAvailability')</h4>
                </div>

                <div class="box-body">
                    <div class="row">
                        <div class="col-md-2">
                            <span>@lang('employee.PSISNumber')</span>
                        </div>
                        <div class="col-md-10" style="text-align: left">
                            <input type="text" class="form-control" placeholder="@lang('employee.EnterPSISnumber')" id="psi_number" style="width:50%;">
                        </div>
                    </div>
                    <div id="errorId" class="row" style="margin-top:10px; margin-bottom: 10px;display: none">
                        <div class="col-md-2"></div>
                        <div class="col-md-10" style="text-align: left">
                            <span id="message">@lang('employee.NoEmployeeFound')</span>
                        </div>
                    </div>
                    <div id="allData" style="display: none">
                        <div class="row" style="margin-top:10px; margin-bottom: 10px">
                            <div class="col-md-2">
                                <span>@lang('employee.EmployeeName')</span>
                            </div>
                            <div class="col-md-10" style="text-align: left">
                                <span id="name"></span>
                            </div>
                        </div>
                        <table class="table table-striped">
                            <thead>
                            <th>@lang('employee.Weekdays')</th>
                            <th>@lang('employee.Sunday')</th>
                            <th>@lang('employee.Monday')</th>
                            <th>@lang('employee.Tuesday')</th>
                            <th>@lang('employee.Wednesday')</th>
                            <th>@lang('employee.Thursday')</th>
                            <th>@lang('employee.Friday')</th>
                            <th>@lang('employee.Saturday')</th>
                            </thead>
                            <tbody>
                            <tr>
                                <td><b>@lang('employee.AvailableTime')</b></td>
                                <td id="sun"></td>
                                <td id="mon"></td>
                                <td id="tue"></td>
                                <td id="wed"></td>
                                <td id="thu"></td>
                                <td id="fri"></td>
                                <td id="sat"></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@push('scripts')
    <script>
        $('#psi_number').change(function () {
            var psi = $('#psi_number').val();
            if (psi != '') {
                $.ajax({
                    type: "GET",
                    dataType: "json",
                    data: {'psi': psi},
                    url: '{{route("showAvailability")}}',
                    success: function (data) {
                        if (data == 0) {
                            $('#errorId').show();
                            $('#message').html('<span>{{trans('employee.InvalidPSISnumber')}}</span>');
                            $('#allData').hide();
                        }
                        else if (data == 1) {
                            $('#errorId').show();
                            $('#message').html('<span>{{trans('employee.Noavailabilitydatafound.')}}</span>');
                            $('#allData').hide();
                        }
                        else {
                            console.log(data.sun);
                            $('#errorId').hide();
                            $('#allData').show();
                            if(data.sun==null)
                                $('#sun').text('--');
                            else
                                $('#sun').text(data.sun);
                            if(data.mon==null)
                                $('#mon').text('--');
                            else
                                $('#mon').text(data.mon);
                            if(data.tue==null)
                                $('#tue').text('--');
                            else
                                $('#tue').text(data.tue);
                            if(data.wed==null)
                                $('#wed').text('--');
                            else
                                $('#wed').text(data.wed);
                            if(data.thu==null)
                                $('#thu').text('--');
                            else
                                $('#thu').text(data.thu);
                            if(data.fri==null)
                                $('#fri').text('--');
                            else
                                $('#fri').text(data.fri);
                            if(data.sat==null)
                                $('#sat').text('--');
                            else
                                $('#sat').text(data.sat);
                            $('#name').text(data.name);
                        }
                    }
                });
            }
            else {
                $('#allData').hide();
            }
        });
    </script>
@endpush