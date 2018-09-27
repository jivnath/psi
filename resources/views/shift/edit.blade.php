@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="box box-info">
                <div class="box-header"><h4>{{ "Shift | Edit" }}</h4></div>

                <div class="box-body " style="padding: 10px;">
                    <form  action="{{ route('shift.update', $shiftData->id) }}" method="POST" >
                        <input type="hidden" name="_method" value="PUT">
                        <input type="hidden" name="_token" value="{{ csrf_token() }}">
                        
                        <div class="row" style="text-align: center; margin-top: 5px;">
                            <div class="col-md-5">
                                <label for="shiftName"> Company </label>
                            </div>
                            <div class="col-md-7">
                                <span> {{ dd($shiftData->company->name) }} </span>
                            </div>
                        </div>

                        <div class="row" style="text-align: center; margin-top: 5px;">
                            <div class="col-md-5">
                                <label for="startTime"> Start Time </label>
                            </div>
                            <div class="col-md-7">
                                <input type="time" value="{{ $shiftData->start_time }}" name="startTime" class="form-control">
                            </div>
                        </div>

                        <div class="row" style="text-align: center; margin-top: 5px;">
                            <div class="col-md-5">
                                <label for="endTime"> End Time </label>
                            </div>
                            <div class="col-md-7">
                                <input type="time" value="{{ $shiftData->end_time }}" name="endTime" class="form-control">
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-5"></div>
                            <div class="col-md-7">
                                <button style="margin-top: 15px" type="submit" class="btn btn-primary">
                                    Save
                                </button>
                            </div>
                        </div>           
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection