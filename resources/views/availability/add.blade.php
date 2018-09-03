@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ "Please fill out the form below." }}</div>

                <div class="card-body " style="padding: 20px;">
                    <form  action="{{ route('availability.store') }}" method="POST" >
                        <input type="hidden" name="_method" value="POST">
                        <input type="hidden" name="_token" value="{{ csrf_token() }}">

                        <div class="row" style="text-align: center; margin-top: 5px; margin-bottom: 20px;">
                            <div class="col-md-5">
                                <label for="psi_num"> <h5> PSI_S No: </h5> </label>
                            </div>
                            <div class="col-md-7" style="text-align: left;">
                                <input style=" width: 70%" type="text" class="form-control" id="psi_num" name="psi_num" placeholder="Enter PSI_s Number">
                            </div>
                        </div>

                        <div class="row" id="hidden"style="text-align: center; margin-top: 5px; margin-bottom: 20px; display: none;">
                            <div class="col-md-5">
                                <label for="name"> <h5> Employee Name: </h5> </label>
                            </div>
                            <div class="col-md-7" style="text-align: left;">
                                <h5 id="name"></h5>
                            </div>
                        </div>

                        <br>

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
                                                <input style="width: 70%" type="time" class="form-control days" id="{{$weekday}}" name="{{ $weekday }}">
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
                                                <input style="width: 70%" type="time" class="form-control days" id="{{$weekday}}" name="{{ $weekday }}">
                                            </div>
                                            <div class="col-md-2"></div>
                                            <div class="col-md-2">
                                                <button style="margin-top: 15px" type="submit" class="btn btn-primary">
                                                    Save
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
    $(function() {
        $("#psi_num").change(function() {
            var psi = $('#psi_num').val();
            $.ajax({
                type:'GET',
                url:"{{ route('leader') }}",
                data:{ 'selected':psi	},
                success:function(data){
                    if(data != '')
                    {
                        $("#hidden").show("fast");
                        $("#name").text(data);
                    }
                    else
                    {
                        $("#hidden").hide(500);
                    }

                }
            })
        });
    });


</script>