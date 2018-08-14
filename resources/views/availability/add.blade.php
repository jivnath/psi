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
                                <input type="text" name="psi_num" placeholder="Enter PSI_s Number">
                            </div>
                        </div>


                        <div style="border-radius: 25px ; border: 1px solid black; padding: 20px;">

                            <div class="row">
                                <div class="col-md-6 offset-3" style="text-align: center;">
                                    <label> <h4> Weekdays </h4> </label>
                                </div>                                
                            </div>

                            @foreach($weekdays->chunk(2) as $weekdays)
                                <div class="row" style="text-align: center; margin-top: 5px;">
                                    @foreach ($weekdays as $weekday)
                                        @if($k < 6)
                                            <div class="col-md-1"></div>
                                            <div class="col-md-2">
                                                <label for="{{ $weekday }}"> <h5> {{ ucfirst($weekday) }} </h5> </label>
                                            </div>
                                            <div class="col-md-2">
                                                <select class="form-control" name="{{ $weekday }}">
                                                    @for ($i = 1; $i <= 24; $i++)
                                                        @if($i < 10)
                                                            <option value="{{ '0'.$i }}"> {{ '0'.$i }} </option>
                                                        @else
                                                            <option value="{{ $i }}"> {{ $i }} </option>
                                                        @endif
                                                    @endfor
                                                </select>
                                            </div>
                                            <div class="col-md-1"></div>
                                            @php
                                                $k++
                                            @endphp
                                            
                                        @else
                                            <div class="col-md-1"></div>
                                            <div class="col-md-2">
                                                <label for="sat"> <h5> Sat </h5> </label>
                                            </div>
                                            <div class="col-md-2">
                                                <select class="form-control" name="sat">
                                                    @for ($i = 1; $i <= 24; $i++)
                                                        @if($i < 10)
                                                            <option value="{{ '0'.$i }}"> {{ '0'.$i }} </option>
                                                        @else
                                                            <option value="{{ $i }}"> {{ $i }} </option>
                                                        @endif
                                                    @endfor
                                                </select>
                                            </div>
                                            <div class="col-md-2"></div>
                                            <div class="col-md-2">
                                                <button style="margin-top: 15px" type="submit" class="btn btn-primary">
                                                    Save
                                                </button>
                                            </div>
                                            <div class="col-md-2"></div>
                                            <div class="col-md-1"></div>
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