@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ 'Employee Availability' }}</div>

                <div class="card-body " style="padding: 20px;">
                    @if($availability)
                        <div class="row" style="text-align: left; margin-top: 5px; margin-bottom: 20px;">
                            <div class="col-md-5">
                                <label for="company_name"> <h5> PSI-S NO.  </h5> </label>
                            </div>
                            <div class="col-md-7">
                                <label> <h5> {{ $availability->psi_number }} </h5> </label>
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
                                            <fieldset>
                                                @php
                                                    echo App\Http\Controllers\EmployeeAvailabilityController::enhanceTime($availability->$weekday);
                                                @endphp
                                            </fieldset>
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