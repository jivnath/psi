@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ "Please fill out the form below." }}</div>

                <div class="card-body " style="padding: 10px;">
                    <form  action="{{ route('company.update', $company->id) }}" method="POST" >
                        <input type="hidden" name="_method" value="PUT">
                        <input type="hidden" name="_token" value="{{ csrf_token() }}">
                        
                        <div class="row" style="text-align: center; margin-top: 5px;">
                            <div class="col-md-5">
                                <label for="company_name"> Company Name </label>
                            </div>
                            <div class="col-md-7">
                                <input type="text" name="company_name" value="{{ $company->name }}" class="form-control">
                            </div>
                        </div>
                        <div class="row" style="text-align: center; margin-top: 5px;">
                            <div class="col-md-5">
                                <label for="master_company"> Master Company </label>
                            </div>
                            <div class="col-md-7">
                                <select class="form-control" name="master_company">
                                    @foreach($master as $master)
                                        <option value="{{ $master->id }}"> {{ $master->name }}  </option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="row" style="text-align: center; margin-top: 5px;">
                            <div class="col-md-5">
                                <label for="status"> Status </label>
                            </div>
                            <div class="col-md-7">
                                <select class="form-control" name="status">
                                    <option value="1"> Active  </option>
                                    <option value="2"> Stopped  </option>
                                </select>
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
                     <div>
                        <table class="table-hover" cellpadding="6px" width="100%" style="text-align: center; margin-top:20px;">
                            <tr>
                                <th>Company Name</th>
                                <th>Master Company</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                            @foreach($companies as $company)
                                <tr>
                                    <td> {{ $company->name }} </td>
                                    <td> {{ $company->master_company }} </td>
                                    <td> {{ $company->status }} </td>
                                    <td><a href="{{ route('company.edit', $company->id) }}" class="btn btn-link btn-sm" > Edit</a> </td>
                                </tr>
                            @endforeach
                        </table>
                     </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection