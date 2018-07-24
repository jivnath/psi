@extends('layouts.app')

@section('content')
    <div class="page-header">
        <h1>Employee <a href="{{ route('employees.uploadForm') }}" class="btn btn-link" style="margin-left:10px"><small>Upload New</small></a></h1>
    </div>
    <div class="table-responsive">
        <table class="table table-bordered table-responsive-md table-striped">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Company</th>
                    <th scope="col">Total</th>
                    <th scope="col">Created At</th>
                    <th scope="col">Updated At</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                @if(count($employees) > 0)
                    @foreach($employees as $index => $employee)
                        <tr>
                            <th scope="row">{{$index + 1}}</th>
                            <td>{{ $employee->company->name }}</td>
                            <td>{{ $employee->total }}</td>
                            <td>{{ Carbon\Carbon::parse($employee->first()->created_at)->format('d-m-Y i:s A') }}</td>
                            <td>{{ Carbon\Carbon::parse($employee->first()->updated_at)->format('d-m-Y i:s A') }}</td>
                            <td><a href="{{ route('employees.show',['companyId' => $employee->company->id]) }}">View</a></td>
                        </tr>
                    @endforeach
                @else 
                    <tr>
                        <td colspan="6">No employees are uploaded</td>
                    </tr>
                @endif
            </tbody>
        </table>
    </div>
@endsection
