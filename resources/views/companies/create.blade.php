@extends('layouts.app')

@section('content')
<div class="container" xmlns="http://www.w3.org/1999/html">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ "Please fill out the form below." }}</div>

                <div class="card-body " style="padding: 10px;">
                    <form name="companyForm" action="{{ route('company.store') }}" method="POST" >
                        <input type="hidden" name="_method" value="POST">
                        <input type="hidden" name="_token" value="{{ csrf_token() }}">

                        <div class="row" style="text-align: center; margin-top: 5px;">
                            <div class="col-md-5">
                                <label for="company_type"> Company Type </label>
                            </div>
                            {{--<div class="col-md-7">--}}
                                {{--<select class="form-control" name="company_type" id="companytype">--}}
                                    {{--<option value="0">Master Company</option>--}}
                                    {{--<option value="1" selected="selected">Sub Company</option>--}}
                                {{--</select>--}}
                            {{--</div>--}}
                        </div>

                        <div class="row" style="text-align: center; margin-top: 5px;">
                            <div class="col-md-5">
                                <label for="company_name" id="companyorsub"> Sub-Company Name </label>
                            </div>
                            <div class="col-md-7">
                                <input type="text" name="company_name" class="form-control" required>
                            </div>
                        </div>

                        <div class="row" id="dropdown" style="text-align: center; margin-top: 5px;">
                            <div class="col-md-5">
                                <label for="company"> Company Name </label>
                            </div>
                            <div class="col-md-7">
                                <select name="company" class="form-control" id="master_company">
                                    <option value="">--Select Master Company-- </option>
                                    @foreach($companies as $company)
                                        <option value="{{$company->id}}">{{$company->name}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>

                        <div class="row" style="text-align: center; margin-top: 5px;">
                            <div class="col-md-5">
                                <label for="contact_num"> Contact NO. </label>
                            </div>
                            <div class="col-md-7">
                                <input type="text" name="contact_num" class="form-control">
                            </div>
                        </div>

                        <div class="row" style="text-align: center; margin-top: 5px;">
                            <div class="col-md-5">
                                <label for="address"> Address </label>
                            </div>
                            <div class="col-md-7">
                                <input type="text" name="address" class="form-control" required>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-8"></div>
                            <div class="col-md-4">
                                <button style="margin-top: 15px;" type="submit" class="btn btn-primary">
                                    Save
                                </button>

                                <button  type="reset" style="margin-top: 15px; margin-left: 5px; " class="btn btn-danger">
                                    Clear
                                </button>
                            </div>
                        </div>           
                    </form>
<br />
                    <div>
                        <table class="table table-striped">
                            <tr>
                                <th>Company Name</th>
                                <th>Sections</th>
                                <th>Address</th>
                                <th>Action</th>
                            </tr>
                            @foreach($companies as $company)
                                <tr>
                                    <td> {{ $company->name }} </td>
                                    @php
                                        $c = App\Http\Controllers\CompanyController::sections($company->id);
                                    @endphp
                                    <td>
                                    @if(count($c)>0)
                                        @foreach($c as $c)
                                            {{ $c }}<br />
                                        @endforeach
                                    @else
                                         --   
                                    @endif
                                    </td>                                      
                                    <td> {{ $company->address }} </td>
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
        $("#companytype").change(function () {
            var master_company_val = $(this).val();
            console.log(master_company_val);

            if(master_company_val==0)
            {
                $("#dropdown").hide(500);
                $("#companyorsub").text('Company Name');
            }
            else
            {
                $("#dropdown").show("fast");
                $("#companyorsub").text('Sub-Company Name');
            }
            $("#master_company").prop('selectedIndex',0);
        });
    });
</script>