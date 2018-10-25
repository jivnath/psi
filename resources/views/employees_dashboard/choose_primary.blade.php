@extends('layouts.app')
@section('content')
    @php
        $companies = \Session::get('companies');
    @endphp
    <div class="container" style="margin-top: 50px">
        <div class="row">
            <div class="col-md-8 offset-2">
                <div class="box">
                    <div class="box-header"><h4>Choose Your Primary Sub-section</h4></div>
                    <div class="box-body">
                        <table class="table table-striped">
                            <thead>
                            <tr>
                                <th> # </th>
                                <th> Sub-section </th>
                                <th> Action </th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($companies as $index => $company)
                                <tr>
                                    <td> {{ $index+1 }} </td>
                                    <td> {{ $company->name }} </td>
                                    <td>
                                        <a class="btn btn-sm btn-primary" href="{{route('selectPrimarySub',[$company->id])}}">Choose</a>
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection