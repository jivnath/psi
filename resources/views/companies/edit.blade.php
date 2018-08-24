{{--@extends('layouts.app')--}}

{{--@section('content')--}}
{{--<div class="container">--}}
    {{--<div class="row justify-content-center">--}}
        {{--<div class="col-md-8">--}}
            {{--<div class="card">--}}
                {{--<div class="card-header">{{ "Please fill out the form below." }}</div>--}}

                {{--<div class="card-body " style="padding: 10px;">--}}
                    {{--<div class="row" style="text-align: center; margin-top: 5px;">--}}
                            {{--<div class="col-md-5">--}}
                                {{--<label for="company_name"> Company Name </label>--}}
                            {{--</div>--}}
                            {{--<div class="col-md-7">--}}
                                {{--<input type="text" name="company_name" value="{{ $company->name }}" class="form-control">--}}
                            {{--</div>--}}
                        {{--</div>--}}

                        {{--<div class="row" style="text-align: center; margin-top: 5px;">--}}
                            {{--<div class="col-md-5">--}}
                                {{--<label for="address"> Edit Sub Company </label>--}}
                            {{--</div>--}}
                            {{--<div class="col-md-7">--}}
                                {{--<select class="form-control" name="sub_companies">--}}
                                    {{--<option value="" >--Select Sub Company--</option>--}}
                                    {{--@if($subcompanies)--}}
                                        {{--@foreach($subcompanies as $sub)--}}
                                           {{--<option>--}}
                                               {{--<a href="{{ route('company.edit', $sub->id) }}" >{{ $sub->name }}</a>--}}
                                           {{--</option>--}}
                                        {{--@endforeach--}}
                                    {{--@endif--}}

                                {{--</select>--}}
                            {{--</div>--}}
                        {{--</div>--}}

                        {{--<div class="row" style="text-align: center; margin-top: 5px;">--}}
                            {{--<div class="col-md-5">--}}
                                {{--<label for="address"> Address </label>--}}
                            {{--</div>--}}
                            {{--<div class="col-md-7">--}}
                                {{--<input type="text" name="address" value="{{ $company->address }}" class="form-control">                                    --}}
                            {{--</div>--}}
                        {{--</div>--}}
                    {{--<br />--}}
                {{--</div>--}}
            {{--</div>--}}
        {{--</div>--}}
    {{--</div>--}}
{{--</div>--}}
{{--@endsection--}}

    {{$companies[0]}}

