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

                        <div class="row" style="text-align: center; margin-top: 5px; margin-bottom: 100px;">
                            <div class="col-md-5">
                                <label for="company_name"> <h5> Company Name </h5> </label>
                            </div>
                            <div class="col-md-7">
                                <select class="form-control" name="company">
                                    @foreach($companies as $company)
                                        <option value="{{ $company->id }}"> {{ $company->name }}  </option>
                                    @endforeach
                                </select>
                            </div>
                        </div>


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
                                    <select class="form-control" name="sun">
                                        @include('availability.dropdown')
                                    </select>
                                </div>
                                <div class="col-md-2"></div>
                                <div class="col-md-2">
                                    <label for="monday"> <h5> Mon </h5> </label>
                                </div>
                                <div class="col-md-2">
                                   <select class="form-control" name="mon">
                                        @include('availability.dropdown')
                                    </select>
                                </div>
                                <div class="col-md-1"></div>
                            </div>

                            <div class="row" style="text-align: center; margin-top: 5px;">
                                <div class="col-md-1"></div>
                                <div class="col-md-2">
                                    <label for="tuesday"> <h5> Tue </h5> </label>
                                </div>
                                <div class="col-md-2">
                                    <select class="form-control" name="tue">
                                        @include('availability.dropdown')
                                    </select>
                                </div>
                                <div class="col-md-2"></div>
                                <div class="col-md-2">
                                    <label for="wednesday"> <h5> Wed </h5> </label>
                                </div>
                                <div class="col-md-2">
                                    <select class="form-control" name="wed">
                                        @include('availability.dropdown')
                                    </select>
                                </div>
                                <div class="col-md-1"></div>
                            </div>

                            <div class="row" style="text-align: center; margin-top: 5px;">
                                <div class="col-md-1"></div>
                                <div class="col-md-2">
                                    <label for="thursday"> <h5> Thu </h5> </label>
                                </div>
                                <div class="col-md-2">
                                    <select class="form-control" name="thu">
                                        @include('availability.dropdown')
                                    </select>
                                </div>
                                <div class="col-md-2"></div>
                                <div class="col-md-2">
                                    <label for="friday"> <h5> Fri </h5> </label>
                                </div>
                                <div class="col-md-2">
                                    <select class="form-control" name="fri">
                                        @include('availability.dropdown')
                                    </select>
                                </div>
                                <div class="col-md-1"></div>
                            </div>

                            <div class="row" style="text-align: center; margin-top: 5px;">
                                <div class="col-md-1"></div>
                                <div class="col-md-2">
                                    <label for="saturday"> <h5> Sat </h5> </label>
                                </div>
                                <div class="col-md-2">
                                    <select class="form-control" name="sat">
                                        @include('availability.dropdown')
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
                            </div>
                        </div>
                    </form>   
                </div>
            </div>
        </div>
    </div>
</div>
@endsection