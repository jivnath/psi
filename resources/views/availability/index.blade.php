@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ 'Employee Availability' }}</div>

                <div class="card-body " style="padding: 20px;">
                    <div class="row" style="text-align: left; margin-top: 5px; margin-bottom: 100px;">
                        <div class="col-md-5">
                            <label for="company_name"> <h5> PSI-S NO.  </h5> </label>
                        </div>
                        <div class="col-md-7">
                            <label> <h5> {{ $availability->psi_number }} </h5> </label>
                        </div>
                    </div>

                    @if($availability)
                        <div style="border-radius: 25px ; border: 1px solid black; padding: 20px;">

                            <div class="row">
                                <div class="col-md-6 offset-3" style="text-align: center;">
                                    <label> <h4> Weekdays </h4> </label>
                                </div>
                                
                            </div>
                            <div class="row" style="text-align: center; margin-top: 5px;">
                                <div class="col-md-1"></div>
                                <div class="col-md-2">
                                    <label for="sunday"> <h5> Sun </h5> </label>
                                </div>
                                <div class="col-md-2">
                                    <fieldset>
                                        @php
                                            echo App\Http\Controllers\EmployeeAvailabilityController::enhanceTime($availability->sun);
                                        @endphp
                                    </fieldset>
                                </div>
                                <div class="col-md-2"></div>
                                <div class="col-md-2">
                                    <label for="monday"> <h5> Mon </h5> </label>
                                </div>
                                <div class="col-md-2">
                                   <fieldset>
                                        @php
                                            echo App\Http\Controllers\EmployeeAvailabilityController::enhanceTime($availability->mon);
                                        @endphp
                                   </fieldset>
                                </div>
                                <div class="col-md-1"></div>
                            </div>

                            <div class="row" style="text-align: center; margin-top: 5px;">
                                <div class="col-md-1"></div>
                                <div class="col-md-2">
                                    <label for="tuesday"> <h5> Tue </h5> </label>
                                </div>
                                <div class="col-md-2">
                                    <fieldset>
                                        @php
                                            echo App\Http\Controllers\EmployeeAvailabilityController::enhanceTime($availability->tues);
                                        @endphp
                                   </fieldset>
                                </div>
                                <div class="col-md-2"></div>
                                <div class="col-md-2">
                                    <label for="wednesday"> <h5> Wed </h5> </label>
                                </div>
                                <div class="col-md-2">
                                    <fieldset>
                                        @php
                                            echo App\Http\Controllers\EmployeeAvailabilityController::enhanceTime($availability->wednes);
                                        @endphp
                                   </fieldset>
                                </div>
                                <div class="col-md-1"></div>
                            </div>

                            <div class="row" style="text-align: center; margin-top: 5px;">
                                <div class="col-md-1"></div>
                                <div class="col-md-2">
                                    <label for="thursday"> <h5> Thu </h5> </label>
                                </div>
                                <div class="col-md-2">
                                    <fieldset>
                                        @php
                                            echo App\Http\Controllers\EmployeeAvailabilityController::enhanceTime($availability->thurs);
                                        @endphp
                                   </fieldset>
                                </div>
                                <div class="col-md-2"></div>
                                <div class="col-md-2">
                                    <label for="friday"> <h5> Fri </h5> </label>
                                </div>
                                <div class="col-md-2">
                                    <fieldset>
                                        @php
                                            echo App\Http\Controllers\EmployeeAvailabilityController::enhanceTime($availability->fir);
                                        @endphp
                                   </fieldset>
                                </div>
                                <div class="col-md-1"></div>
                            </div>

                            <div class="row" style="text-align: center; margin-top: 5px;">
                                <div class="col-md-1"></div>
                                <div class="col-md-2">
                                    <label for="saturday"> <h5> Sat </h5> </label>
                                </div>
                                <div class="col-md-2">
                                    <fieldset>
                                        @php
                                            echo App\Http\Controllers\EmployeeAvailabilityController::enhanceTime($availability->satur);
                                        @endphp
                                   </fieldset>
                                </div>
                                <div class="col-md-2"></div>
                                <div class="col-md-2"></div>
                                <div class="col-md-2"></div>
                                <div class="col-md-1"></div>
                            </div>
                        </div>
                    @else
                        <h2> Sorry No data available </h2>
                    @endif
                       
                </div>
            </div>
        </div>
    </div>
</div>
@endsection