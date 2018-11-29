@extends('layouts.app')

@section('content')
    <div class="row justify-content-center">
        <div class="col-md-1"></div>
        <div class="col-md-7">
            <div class="box" style="min-height: 300px">
                <div class="box-header"><h4>@lang('employee.EmployeeAvailabilityAdd')</h4></div>

                <div class="box-body " style="padding: 20px;">
                    <form action="{{ route('availability.store') }}" method="POST">
                        <input type="hidden" name="_method" value="POST">
                        <input type="hidden" name="_token" value="{{ csrf_token() }}">

                        <div class="form-group row" style="text-align: center; margin-top: 5px;">
                            <div class="col-md-4 col-form-label">
                                <label for="psi_num">@lang('employee.psi_number')</label>
                            </div>
                            <div class="col-md-8" style="text-align: center;">
                                <input style=" width: 70%" type="text" class="form-control" id="psi_num" name="psi_num"
                                       placeholder="@lang('employee.EnterPSISnumber')">
                            </div>
                        </div>

                        <div id="message" class="row" style="margin-top: 5px; display: none">
                            <div class="col-md-4"></div>
                            <div class="col-md-8" style="text-align: left;">
                                <span>@lang('employee.InvalidPSISnumber')</span>
                            </div>
                        </div>
                        <div id="dynamicDiv" style="display: none">
                            <div class="form-group row"
                                 style="text-align: center; margin-top: 5px;">
                                <div class="col-md-4 col-form-label">
                                    <label for="name"> @lang('employee.EmployeeName') </label>
                                </div>
                                <div class="col-md-8" style="text-align: left;">
                                    <span id="name"></span>
                                </div>
                            </div>
                            @foreach ($weekdays as $weekday)
                                <div class="form-group row" style="text-align: center;">
                                    @if($k < 7)
                                        <div class="col-md-4 col-form-label">
                                            <label for="{{ $weekday }}">{{ ucfirst($weekday) }}</label>
                                        </div>
                                        <div class="col-md-8">
                                            <input style="width: 70%" type="time" class="form-control" id="{{$weekday}}"
                                                   name="{{ $weekday }}">
                                            @if($k==6)
                                                <br>
                                                <button type="submit" class="btn btn-primary">@lang('employee.Add')</button>
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

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script type="text/javascript">
    $(function () {
        $("#psi_num").change(function () {
            var psi = $('#psi_num').val();
            if(psi != '')
            {
                $.ajax({
                    type: 'GET',
                    url: "{{ route('leader') }}",
                    data: {'selected': psi},
                    success: function (data) {
                        if (data != '') {
                            console.log(data);
                            $("#dynamicDiv").show();
                            $("#name").text(data);
                            $('#message').hide();
                        }
                        else {
                            $("#dynamicDiv").hide();
                            $("#message").show();
                        }
                    }
                });
            }
            else {
                $("#dynamicDiv").hide();
                $("#message").hide();
            }
        });
    });


</script>