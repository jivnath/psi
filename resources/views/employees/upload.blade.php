@extends('layouts.app')

@section('content')
    <div class="row justify-content-center">
        <form method="POST" action="{{ route('employees.upload') }}" enctype="multipart/form-data">
            @csrf
            {{--<div class="form-group">--}}
                {{--<label for="excelFile">Select Company</label>--}}
                {{--<select class="form-control" name="company_id">--}}
                    {{--@foreach($companies as $id => $name)--}}
                        {{--<option value ="{{ $id }}">{{ $name }}</option>--}}
                    {{--@endforeach--}}
                {{--</select>--}}
                {{--@if ($errors->has('company_id'))--}}
                    {{--<div class="invalid-feedback" role="alert">--}}
                        {{--<strong>{{ $errors->first('company_id') }}</strong>--}}
                    {{--</div>--}}
                {{--@endif--}}
            {{--</div>--}}
            <div class="form-group">
                <label for="excelFile">Select Excel File</label>
                <input type="file" name="excelFile" class="form-control {{ $errors->has('excelFile') ? ' is-invalid' : '' }}" id="excelFile">
                @if ($errors->has('excelFile'))
                    <div class="invalid-feedback" role="alert">
                        <strong>{{ $errors->first('excelFile') }}</strong>
                    </div>
                @endif
            </div>

            <div class="form-group">
                <button class="btn btn-primary" type="submit">Upload</button>
            </div>
        </form>
    </div>  
@endsection
