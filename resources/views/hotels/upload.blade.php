@extends('layouts.app')

@section('content')
    <div class="row justify-content-center">
        <form method="POST" action="{{ route('hotels.uploadExcel') }}" enctype="multipart/form-data">
            @csrf
            <div class="form-group">
                <label for="excelFile">@lang('employee.SelectExcelFile')</label>
                <input type="file" name="excelFile" class="form-control {{ $errors->has('excelFile') ? ' is-invalid' : '' }}" id="excelFile">
                @if ($errors->has('excelFile'))
                    <div class="invalid-feedback" role="alert">
                        <strong>{{ $errors->first('excelFile') }}</strong>
                    </div>
                @endif
            </div>

            <div class="form-group">
                <button class="btn btn-primary" type="submit">@lang('employee.Upload')</button>
            </div>
        </form>
    </div>
@endsection
