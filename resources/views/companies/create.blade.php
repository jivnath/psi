@extends('layouts.app')

@section('content')
<section class="content">
    <div class="row">
        <div class="col-md-7">
 			<div class="box box-info">
                    <div class="box-header with-border">
                      <h3 class="box-title">@lang('employee.Pleasefillouttheformbelow').</h3>
                    </div>
                    <form name="companyForm" class='form-horizontal' action="{{ route('company.store') }}" method="POST" >
                        <div class="box-body">
                        <input type="hidden" name="_method" value="POST">
                        <input type="hidden" name="_token" value="{{ csrf_token() }}">

                        <div class="row" style="text-align: center; margin-top: 5px;">
                            <div class="col-md-5">
                                <label for="company_type"> @lang('employee.CompanyType') </label>
                            </div>
                            <div class="col-md-7">
                                <select class="form-control" name="company_type" id="companytype">
                                    <option value="0">@lang('employee.MasterCompany')</option>
                                    <option value="1" selected="selected">Sub Company</option>
                                </select>
                            </div>
                        </div>
						<div class="row" id="dropdown" style="text-align: center; margin-top: 5px;">
                            <div class="col-md-5">
                                <label for="company">Master Company Name </label>
                            </div>
                            <div class="col-md-7">
                                <select name="company" class="form-control" id="master_company">
                                    <option value="">--@lang('employee.SelectMasterCompany')-- </option>
                                    @foreach($companies as $company)
                                        <option value="{{$company->id}}">{{$company->name}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>

                        <div class="row" style="text-align: center; margin-top: 5px;">
                            <div class="col-md-5">
                                <label for="company_name" id="companyorsub"> Sub-Company Name </label>
                            </div>
                            <div class="col-md-7">
                                <input type="text" name="company_name" class="form-control" required>
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
                        </div>
                    </form>
            </div>
        </div>
        	<div class='col-md-5'>
        	 <div class="box box-info">
                    <div class="box-header with-border">
                  		<h3 class="box-title">Company Entry</h3>
                	</div>
                	<div class="box-body">
                            <table class="table table-bordered table-hover table-condensed">
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
    </section>

@endsection
@push('scripts')
<script type="text/javascript">
    $(document).ready(function() {
        $("#companytype").change(function () {
            var master_company_val = $(this).val();

            if(master_company_val==0)
            {
                $("#dropdown").hide();
                $("#companyorsub").html('<span>{{trans('employee.CompanyName')}}</span>');
            }
            else
            {
                $("#dropdown").show();
                $("#companyorsub").html('<span>{{trans('employee.SubCompanyName')}}</span>');
            }
            $("#master_company").prop('selectedIndex',0);
        });
    });
</script>
@endpush