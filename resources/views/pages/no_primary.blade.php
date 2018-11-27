@extends('layouts.app')
@section('content')
    @php
        $companies = \Session::get('user_companies');
    @endphp
    <div class="container" style="margin-top: 50px">
        <div class="row">
            <div class="col-md-8 offset-2">
                <div class="box">
                    <div class="box-header"><h4>Choose Your Primary Section</h4></div>
                    <div class="box-body">
                        <table class="table table-striped table-condensed">
                            <thead>
                            <tr>
                                <th> Role </th>
                                <th> Section </th>
                                <th> Team Manager </th>
                                <th> Action </th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($companies as $company)
                                <tr>
                                    <td> {{ Auth::user()->roles()->pluck('name')->implode('') }} </td>
                                    <td> {{ $company->name }} </td>
                                    <td> No </td>
                                    <td>
                                        <a class="btn btn-sm btn-primary" href="{{route('selectPrimary',[$company->id])}}">Manage</a>
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