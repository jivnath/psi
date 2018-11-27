@extends('layouts.app') 
@section('content')
<div class="container" style="margin-top: 5px;">
    <div class="row justify-content-center">
        @php $c = App\Http\Controllers\ShiftMasterController::findCompany($shiftData->company_id); 
@endphp
        <div class="col-md-8">
            <div class="box box-info">
                <div class="box-header" style="padding-top:2px;padding-bottom: 2px;">
                    <h4>@lang('employee.ShiftEdit')</h4>
                </div>
                <div class="box-body " style="padding-top:2px;padding-bottom: 2px;">
                    <form action="{{ route('shift.update', [$shiftData['id']]) }}" method="POST">
                        <input type="hidden" name="_method" value="PUT">
                        <input type="hidden" name="_token" value="{{ csrf_token() }}">

                        <div class="row" style="text-align: center; margin-top: 5px;">
                            <div class="col-md-5">
                                <label for="shiftName"> @lang('employee.SubSection') </label>
                            </div>
                            <div class="col-md-7" style="text-align: left">{{$c}} </div>
                        </div>

                        <div class="row" style="text-align: center; margin-top: 5px;">
                            <div class="col-md-5">
                                <label for="startTime"> @lang('employee.StartTime') </label>
                            </div>
                            <div class="col-md-7">
                                <input type="time" value="{{ $shiftData['start_time'] }}" name="startTime" class="form-control">
                            </div>
                        </div>

                        <div class="row" style="text-align: center; margin-top: 5px;">
                            <div class="col-md-5">
                                <label for="endTime"> @lang('employee.EndTime') </label>
                            </div>
                            <div class="col-md-7">
                                <input type="time" value="{{ $shiftData['end_time'] }}" name="endTime" class="form-control">
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-5"></div>
                            <div class="col-md-7">
                                <button style="margin-top: 15px" type="submit" class="btn btn-primary">
                                @lang('employee.Save')
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