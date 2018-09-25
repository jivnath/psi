@extends('layouts.app')

@section('content')
    <div class="row justify-content-center">
        <div class="col-md-10">
            <div class="box">
                <div class="box-header"><h4>{{ 'Employee Availability' }}</h4></div>

                <div class="box-body">
                    <div class="row">
                        <div class="col-md-2">
                            <span>PSIS No:</span>
                        </div>
                        <div class="col-md-10" style="text-align: left">
                            <span>{{$availability->psi_number}}</span>
                        </div>

                    </div>
                    <div class="row" style="margin-top:10px; margin-bottom: 10px">
                        <div class="col-md-2">
                            <span>Employee Name:</span>
                        </div>
                        <div class="col-md-10" style="text-align: left">
                            <span>{{$availability->employee->name}}</span>
                        </div>

                    </div>

                    @if($availability)
                        <table class="table table-striped">
                            <thead>
                            <th>Weekdays</th>
                            <th>Sunday</th>
                            <th>Monday</th>
                            <th>Tuesday</th>
                            <th>Wednesday</th>
                            <th>Thursday</th>
                            <th>Friday</th>
                            <th>Saturday</th>
                            </thead>
                            <tbody>
                            <tr>
                                <td><b>Available Time</b></td>
                                <td>{{$availability->sunday}}</td>
                                <td>{{$availability->monday}}</td>
                                <td>{{$availability->tuesday}}</td>
                                <td>{{$availability->wednesday}}</td>
                                <td>{{$availability->thursday}}</td>
                                <td>{{$availability->friday}}</td>
                                <td>{{$availability->saturday}}</td>
                            </tr>
                            </tbody>
                        </table>
                    @else
                        <h2> Sorry, No data available </h2>
                    @endif                       
                </div>
            </div>
        </div>
    </div>
@endsection