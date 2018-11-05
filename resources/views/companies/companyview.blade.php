@extends('layouts.app')

@section('content')
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">
<?php
$last_p='';
?>
<section class="content">
    <div class="row">
			
        	<div class='col-md-12'>
        	 <div class="box box-info">
                    <div class="box-header with-border">
                  		<h3 class="box-title">@lang('employee.CompanyDetails')</h3>
                	</div>
                	<div class="box-body">
                            <table class="table table-bordered" id='table'>
                            <thead>
                                <tr>
                                 	<th>@lang('employee.SymbolNumber')</th>
                                    <th>@lang('employee.CompanyName')</th>
                                    <th>@lang('employee.SectionsHierarchy')</th>

                                </tr>
                                </thead>
                                <tbody>
								@php
									$i=0

								@endphp

                                @foreach($companies as $index=>$companys)
								@php
									$i++
								@endphp


                                        <tr>
    									<th scope="row">{{$i}}</th>
    									<td>{{$index}}</td>
    									<td>

    									@foreach($companys as $index1=>$section)
										@if($index1)


													@if(count($section)>1)

        											<div class="table-responsive">
										<table class='table table-bordered'>
											<thead class="thead-light">
												<tr>
													<th class="table_th_fix">@lang('employee.Sections')</th>
													<th class="table_th_fix">@lang('employee.Subsections')</th>
												</tr>
												@php
												$increment_val=0
												@endphp
												@foreach($section as $index2=>$subsection)

        												<tr>
        												@if($increment_val==0)
        													<td class="table_th_fix"><a href='#'>{{$index1}}</a></td>

        												@endif
        													@if($index2)
        													<td class="table_th_fix"><a href='#'>{{$index2}}</a></td>
        													@endif


												</tr>
												@foreach($subsection as $index3)
												@foreach($index3 as $index4)
												<tr>
												@if($increment_val==0)
														<td class="table_th_fix" rowspan='{{count($section)+2}}'><i class="fas fa-mobile-alt"></i> {{$index4['contact_c1']}} | <i class="fas fa-location-arrow"></i> {{$index4['address_c1']}} @if($index4['manager']) | <i class="fas fa-user"></i> {{$index4['manager']}}@endif</td>
        										@endif

													<td class="table_th_fix"><i class="fas fa-mobile-alt"></i> {{$index4['contact_c2']}} | <i class="fas fa-location-arrow"></i> {{$index4['address_c2']}}</td>
												</tr>
												@endforeach
												@endforeach
												@php
    													$increment_val++
    											@endphp
												@endforeach


											<thead>

										</table>
									</div> <br>

        											@else
        											@foreach($section as $index2=>$subsection)
        											<div class="table-responsive">
										<table class='table table-bordered'>
											<thead class="thead-light">
												<tr>
													<th class="table_th_fix">@lang('employee.Sections')</th>
													<th class="table_th_fix">@lang('employee.Subsections')</th>
												</tr>
												<tr>

													<td class="table_th_fix"><a href='#'>{{$index1}}</a></td>
													@if($index2)
													<td class="table_th_fix"><a href='#'>{{$index2}}</a></td>
													@endif
												</tr>
												@foreach($subsection as $index3)
												@foreach($index3 as $index4)
												<tr>
													<td class="table_th_fix"><i class="fas fa-mobile-alt"></i> {{$index4['contact_c1']}} | <i class="fas fa-location-arrow"></i> {{$index4['address_c1']}} @if($index4['manager']) | <i class="fas fa-user"></i> {{$index4['manager']}}@endif</td>

													<td class="table_th_fix"><i class="fas fa-mobile-alt"></i> {{$index4['contact_c2']}} | <i class="fas fa-location-arrow"></i> {{$index4['address_c2']}}</td>
												</tr>

												@endforeach
												@endforeach


											<thead>

										</table>
									</div> <br>
        											@endforeach
        											@endif



									 @endif

    									@endforeach

    									</td>

                                        </tr>

                                @endforeach
</tbody>
                            </table>
                            </div>
                        </div>
        </div>
    </div>
    </section>

@endsection
@push('scripts')
<script src='https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js'></script>
<script src='https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js'></script>
<script type="text/javascript">
$(document).ready(function() {
    $('#table').DataTable({dom: "<'row'<'col-sm-3'l><'col-sm-3'f><'col-sm-6'p>>" +
        "<'row'<'col-sm-12'tr>>" +
        "<'row'<'col-sm-5'i><'col-sm-7'p>>",});
});
</script>
@endpush