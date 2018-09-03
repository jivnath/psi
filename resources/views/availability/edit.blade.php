@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ "Please fill out the form below." }}</div>

                <div class="card-body " style="padding: 20px;">
                    <form class="form-group" action="{{ route('availability.update', $availability->id ) }}" method="POST" >
                        <input type="hidden" name="_method" value="PUT">
                        <input type="hidden" name="_token" value="{{ csrf_token() }}">

                        <div class="row" style="text-align: right; margin-top: 5px; margin-bottom: 20px;">
                            <div class="col-md-4">
                                <label for="psi_num"> <h5> PSI_S No: </h5> </label>
                            </div>
                            <div class="col-md-1"></div>
                            <div class="col-md-7" style="text-align: left;">
                                <h5>{{$availability->psi_number}}</h5>
                            </div>
                        </div>

                        <div class="row" style="text-align: right; margin-top: 5px; margin-bottom: 20px;">
                            <div class="col-md-4">
                                <label for="psi_num"> <h5> Employee Name: </h5> </label>
                            </div>
                            <div class="col-md-1"></div>
                            <div class="col-md-7" style="text-align: left;">
                                <h5>{{$availability->employee->name}}</h5>
                            </div>
                        </div>


                        <div style="border-radius: 25px ; border: 1px solid black; padding: 20px;">

                            <div class="row">
                                <div class="col-md-6 offset-3" style="text-align: center;">
                                    <label> <h4> Weekdays </h4> </label>
                                </div>                                
                            </div>

                            @foreach($weekdays->chunk(2) as $weekdays)
                                <div class="row form-group" style="text-align: center; margin-top: 5px;">
                                    @foreach ($weekdays as $weekday)
                                        @if($k < 6)
                                            <div class="col-md-1"></div>
                                            <div class="col-md-2">
                                                <label for="{{ $weekday }}"> <h5> {{ ucfirst($weekday) }} </h5> </label>
                                            </div>
                                            <div class="col-md-3">
                                                    <input style="width: 75%"type="time" class="form-control days" name="{{ $weekday }}" value="{{$availability->$weekday}}">
                                            </div>
                                            @php
                                                $k++
                                            @endphp
                                            
                                        @else
                                            <div class="col-md-1"></div>
                                            <div class="col-md-2">
                                                <label for="sat"> <h5> Sat </h5> </label>
                                            </div>
                                            <div class="col-md-3">
                                                <input type="time" style="width: 75%" class="form-control days" name="{{ $weekday }}" value="{{$availability->sat}}">

                                            </div>
                                            <div class="col-md-2"></div>
                                            <div class="col-md-2">
                                                <button style="margin-top: 15px" type="submit" class="btn btn-primary">
                                                    Edit
                                                </button>
                                            </div>
                                            <div class="col-md-2"></div>
                                        @endif
                                    @endforeach                                    
                                </div>
                            @endforeach
                        </div>
                    </form>   
                </div>
            </div>
        </div>
    </div>
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



