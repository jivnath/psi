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
                    <th scope="col">Master Company</th>
                    <th scope="col">No of Sub-Companies</th>
                    <th scope="col">Created At</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
            <?php
            foreach ($results as $index =>$shift){

            }
            ?>
                @if(count($results) > 0)
                    @foreach($results as $index => $shift)
                        <tr>
                            <th scope="row">{{$index + 1}}</th>
                            <td>{{ $shift->master_company_name }}</td>
                            <td>{{ $shift->total_subcompany }}</td>
                            <td>{{ Carbon\Carbon::parse( $shift->created_at)->format('d-m-Y i:s A') }}</td>
                            <td><a href="{{ route('shift.show',['id' => $shift->master_id]) }}">View</a></td>
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
