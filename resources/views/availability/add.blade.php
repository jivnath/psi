@extends('layouts.app')

@section('content')
    <div class="row justify-content-center">
        <div class="col-md-1"></div>
        <div class="col-md-7">
            <div class="box">
                <div class="box-header"><h4>{{ "Employee Availability | Add" }}</h4></div>

                <div class="box-body " style="padding: 20px;">
                    <form  action="{{ route('availability.store') }}" method="POST" >
                        <input type="hidden" name="_method" value="POST">
                        <input type="hidden" name="_token" value="{{ csrf_token() }}">

                        <div class="form-group row" style="text-align: center; margin-top: 5px;">
                            <div class="col-md-4 col-form-label">
                                <label for="psi_num"> <h5> PSI_S No: </h5> </label>
                            </div>
                            <div class="col-md-8" style="text-align: center;">
                                <input style=" width: 70%" type="text" class="form-control" id="psi_num" name="psi_num" placeholder="Enter PSI_s Number">
                            </div>
                        </div>

                        <div class="form-group row" id="hidden"style="text-align: center; margin-top: 5px; display: none;">
                            <div class="col-md-4 col-form-label">
                                <label for="name"> <h5> Employee Name: </h5> </label>
                            </div>
                            <div class="col-md-8" style="text-align: left;">
                                <h5 id="name"></h5>
                            </div>
                        </div>
                        @foreach ($weekdays as $weekday)
                            <div class="form-group row" style="text-align: center;">
                                @if($k < 7)
                                    <div class="col-md-4 col-form-label">
                                        <label for="{{ $weekday }}"> <h5> {{ ucfirst($weekday) }} </h5> </label>
                                    </div>
                                    <div class="col-md-8">
                                        <input style="width: 70%" type="time" class="form-control" id="{{$weekday}}" name="{{ $weekday }}">
                                        @if($k==6)
                                            <br>
                                            <button type="submit" class="btn btn-primary">Add</button>
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