@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="box">
                <div class="box-header">{{ 'Employee Availability' }}</div>

                <div class="box-body " style="padding: 20px;">
                    @if($availability)
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
                                <div class="row" style="text-align: center; margin-top: 5px;">
                                    @foreach($weekdays as $weekday)
                                        <div class="col-md-1"></div>
                                        <div class="col-md-2">
                                            <label for="{{$weekday}}"> <h5> {{ucfirst($weekday)}} </h5> </label>
                                        </div>
                                        <div class="col-md-2">
                                            {{$availability->$weekday}}
                                        </div>
                                        <div class="col-md-1"></div>
                                    @endforeach
                                </div>
                            @endforeach
                        </div>
                    @else
                        <h2> Sorry, No data available </h2>
                    @endif                       
                </div>
            </div>
        </div>
    </div>
</div>
@endsection