@extends('layouts.app')

@section('content')
    <div class="page-header">
        <h1>Company Shift <a href="{{ route('generator') }}" class="btn btn-link" style="margin-left:10px"><small>Generate New</small></a></h1>
    </div>
    <div class="table-responsive">
        <table class="table table-bordered table-responsive-md table-striped">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Company</th>
                    <th scope="col">No of Sub-Companies</th>
                    <th scope="col">Created At</th>
                    <th scope="col">Updated At</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                @if(count($shifts) > 0)
                    @foreach($shifts as $index => $shift)
                        <tr>
                            <th scope="row">{{$index + 1}}</th>
                            @php
                                $c = App\Http\Controllers\PagesController::masterCompany($shift->companyTimeTable->comp->master_id);
                            @endphp
                            <td>{{ $c }}</td>
                            
                            <td>{{ $c }}</td>
                            <td>{{ Carbon\Carbon::parse($shift->first()->created_at)->format('d-m-Y i:s A') }}</td>
                            <td>{{ Carbon\Carbon::parse($shift->first()->updated_at)->format('d-m-Y i:s A') }}</td>
                            <td><a href="{{ route('shift.show',['id' => $shift->companyTimeTable->comp->master_id]) }}">View</a></td>
                        </tr>
                    @endforeach
                @else 
                    <tr>
                        <td colspan="6">No employees are uploaded</td>
                    </tr>
                @endif
            </tbody>
        </table>
        @foreach($s as $ss)
        {{$ss->companyTimeTable->comp->master_id}}
        @endforeach
    </div>
@endsection
