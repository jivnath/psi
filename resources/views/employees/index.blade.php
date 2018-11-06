@extends('layouts.app')

@section('content')
    <div class="page-header">
        <h1>@lang('employee.MasterDataEmployee')<a href="{{ route('employees.uploadForm') }}" class="btn btn-link" style="margin-left:10px"><small>@lang('employee.UploadNew')</small></a></h1>
    </div>
    <div class="table-responsive">
        <table class="table table-bordered table-responsive-md table-striped">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">@lang('employee.Company')</th>
                    <th scope="col">@lang('employee.NoofEmployee')</th>
                    <th scope="col">@lang('employee.CreatedAt')</th>
                    <th scope="col">@lang('employee.UpdatedAt')</th>
                    <th scope="col">@lang('employee.Action')</th>
                </tr>
            </thead>
            <tbody>
{{--            {{dd($employees)}}--}}
                @if(count($employees) > 0)
                    @foreach($employees as $index => $employee)
                        <tr>
                            <th scope="row">{{$index + 1}}</th>
                            <td>{{ $employee->company->name }}</td>
                            <td>{{ $employee->total }}</td>
                            <td>{{ Carbon\Carbon::parse($employee->first()->created_at)->format('d-m-Y i:s A') }}</td>
                            <td>{{ Carbon\Carbon::parse($employee->first()->updated_at)->format('d-m-Y i:s A') }}</td>
                            <td><a href="{{ route('employees.show',['companyId' => $employee->company->id]) }}">@lang('employee.View')</a></td>
                        </tr>
                    @endforeach
                @else 
                    <tr>
                        <td colspan="6">@lang('employee.Noemployeesareuploaded')</td>
                    </tr>
                @endif
            </tbody>
        </table>
    </div>
@endsection
