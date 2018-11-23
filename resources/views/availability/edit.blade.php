@extends('layouts.app')

@section('content')
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="box">
                <div class="box-header"><h4>@lang('employee.EmployeeAvailabilityEdit')</h4></div>

                <div class="box-body " style="padding: 20px;">
                    <form class="form-group">
                        <div class="form-group row" style="text-align: center; margin-top: 5px; margin-bottom: 25px;">
                            <div class="col-md-3" style="text-align: right">
                                <label for="psi_num"><h5>@lang('employee.PSISNumber') </h5></label>
                            </div>
                            <div class="col-md-9" style="text-align: left;">
                                <input type="text" id="psi_number" style="width:65%" class="form-control"
                                       placeholder="@lang('employee.PSISNumber')">
                            </div>
                        </div>
                        <div class="form-group row" style="text-align: center; margin-top: 5px; margin-bottom: 25px;">
                            <div class="col-md-3"></div>
                            <div class="col-md-9" style="text-align: left;">
                                <div style="display: none" id="ifNo"><h5>@lang('employee.NoEmployeeFound')</h5></div>
                            </div>
                        </div>

                        <div id="hiddenDiv" style="display: none">
                            <div id="nameDiv" class="form-group row" style="margin-bottom: 20px;">
                                <div class="col-md-3" style="text-align: right">
                                    <label for="employee"><h5>@lang('employee.EmployeeName') </h5></label>
                                </div>
                                <div class="col-md-9" style="text-align: left;">
                                    <h5 id="employee_name">{{$availability->employee->name}}</h5>
                                </div>
                            </div>

                            @foreach ($weekdays as $weekday)
                                <div class="form-group row" style="text-align: center;">
                                    @if($k < 7)
                                        <div class="col-md-3 col-form-label" style="text-align: right">
                                            <label for="{{ $weekday }}"><h5> {{ ucfirst($weekday) }} </h5></label>
                                        </div>
                                        <div class="col-md-9">
                                            <input style="width: 65%" id="{{$weekday}}" type="time"
                                                   value="{{$availability->$weekday}}" class="form-control"
                                                   id="{{$weekday}}" name="{{ $weekday }}">
                                            @if($k==6)
                                                <br>
                                                <span id="update" class="btn btn-primary">@lang('employee.Update')</span>
                                            @endif
                                        </div>

                                    @endif
                                    @php
                                        $k++;
                                    @endphp
                                </div>
                            @endforeach
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-md-4"></div>
    </div>

@endsection
@push('scripts')
    <script type="text/javascript">
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        {{--$(document).on('change', '.days', function(){--}}
        {{--var time = $(this).val();--}}
        {{--var psi = $('#psi_num').val();--}}
        {{--var day = $(this).attr("id");--}}

        {{--$.ajax({--}}
        {{--url:"{{ route('availability.ajaxupdate') }}",--}}
        {{--type:"POST",--}}
        {{--data:{time:time, psi:psi, day:day},--}}
        {{--success:function(data){--}}

        {{--console.log(time);--}}
        {{--}--}}
        {{--});--}}
        {{--});--}}

        $("#psi_number").change(function () {
            var psi = $("#psi_number").val();
            if (psi != '') {

                $.ajax({
                    type: "GET",
                    dataType: "json",
                    url: "{{route('getAvailability')}}",
                    data: {'psi': psi},
                    success: function (data) {
                        if (data == 0) {
                            $("#hiddenDiv").hide();
                            alert('PSI number invalid!!!');

                        }
                        else if (data == 1) {
                            $("#hiddenDiv").hide();
                            alert('No Availability available');
                        }

                        else {
                            $("#sunday").val(data.sun);
                            $("#monday").val(data.mon);
                            $("#tuesday").val(data.tue);
                            $("#wednesday").val(data.wed);
                            $("#thursday").val(data.thu);
                            $("#friday").val(data.fri);
                            $("#saturday").val(data.sat);
                            $("#employee_name").val(data.name);
                            // $('#nameDiv').show();
                            $("#hiddenDiv").show();
                        }

                    }
                });
            }
            else {
                $("#hiddenDiv").hide();
            }

        });

        $("#update").click(function () {
            var psi = $("#psi_number").val();
            var sun = $("#sunday").val();
            var mon = $("#monday").val();
            var tue = $("#tuesday").val();
            var wed = $("#wednesday").val();
            var thu = $("#thursday").val();
            var fri = $("#friday").val();
            var sat = $("#saturday").val();

            $.ajax({
                type: 'POST',
                dataType: 'json',
                async: true,
                data: {
                    'sun': sun,
                    'mon': mon,
                    'tue': tue,
                    'wed': wed,
                    'thu': thu,
                    'fri': fri,
                    'sat': sat,
                    'psi': psi
                },
                url: "{{route('updateAvailability')}}",
                success: function (data) {
                    window.location.replace("{{route('availability.index')}}");
                }
            });
        });
    </script>
@endpush



