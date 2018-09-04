@extends('layouts.app')

@section('content')
    <div class="row justify-content-center">
        <div class="col-md-1"></div>
        <div class="col-md-7">
            <div class="box">
                <div class="box-header"><h3>{{ "Employee Availability" }}</h3></div>

                <div class="box-body " style="padding: 20px;">
                    <form class="form-group" action="{{ route('availability.update', $availability->id ) }}" method="POST" >
                        <input type="hidden" name="_method" value="PUT">
                        <input type="hidden" name="_token" value="{{ csrf_token() }}">

                        <div class="form-group row" style="text-align: center; margin-top: 5px; margin-bottom: 20px;">
                            <div class="col-md-4">
                                <label for="psi_num"> <h5> PSI_S No: </h5> </label>
                            </div>
                            <div class="col-md-8" style="text-align: left;">
                                <h5>{{$availability->psi_number}}</h5>
                            </div>
                        </div>

                        <div class="form-group row" style="text-align: center; margin-top: 5px; margin-bottom: 20px;">
                            <div class="col-md-4">
                                <label for="employee"> <h5> Employee Name: </h5> </label>
                            </div>
                            <div class="col-md-8" style="text-align: left;">
                                <h5>{{$availability->employee->name}}</h5>
                            </div>
                        </div>


                        @foreach ($weekdays as $weekday)
                            <div class="form-group row" style="text-align: center;">
                                @if($k < 7)
                                    <div class="col-md-4 col-form-label">
                                        <label for="{{ $weekday }}"> <h5> {{ ucfirst($weekday) }} </h5> </label>
                                    </div>
                                    <div class="col-md-8">
                                        <input style="width: 70%" type="time" value="{{$availability->$weekday}}" class="form-control" id="{{$weekday}}" name="{{ $weekday }}">
                                        @if($k==6)
                                            <br>
                                            <button type="submit" class="btn btn-primary">Update</button>
                                        @endif
                                    </div>

                                @endif
                                @php
                                    $k++;
                                @endphp
                            </div>
                        @endforeach
                    </form>
                </div>
            </div>
        </div>
        <div class="col-md-4"></div>
    </div>

@endsection
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script type="text/javascript">
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
    $(document).on('change', '.days', function(){
        var time = $(this).val();
        var psi = $('#psi_num').val();
        var day = $(this).attr("id");

        $.ajax({
            url:"{{ route('availability.ajaxupdate') }}",
            type:"POST",
            data:{time:time, psi:psi, day:day},
            success:function(data){

                console.log(time);
            }
        });
    });
</script>



