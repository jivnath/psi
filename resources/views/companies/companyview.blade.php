@extends('layouts.app')

@section('content')
<?php
$last_p='';
?>
<section class="content">
    <div class="row">
        	<div class='col-md-12'>
        	 <div class="box box-info">
                    <div class="box-header with-border">
                  		<h3 class="box-title">Company Details</h3>
                	</div>
                	<div class="box-body">
                            <table class="table table-bordered">
                                <tr>
                                 	<th>SN</th>
                                    <th>Company Name</th>
                                    <th>Sections Hierachy</th>

                                </tr>
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




        											@foreach($section as $index2=>$subsection)
        											<div class="table-responsive">
        											<table class='table table-sm table-bordered'>
        											<thead>
            											<tr><th class="table_th_fix">Name</th><td>{{$index}}</td>
            											<td class="table_th_fix">{{$index1}}</td>
            											@if($index2)
            											<td class="table_th_fix">{{$index2}}</td>
            											@endif
            											</tr>
            											@foreach($subsection as $index3)
            											@foreach($index3 as $index4)
                											<tr><th class="table_th_fix">Contact</th><td class="table_th_fix">{{$index4['contact_p']}}</td>
                											<td class="table_th_fix">{{$index4['contact_c1']}}</td>

                											<td class="table_th_fix">{{$index4['contact_c2']}}</td>
                											</tr>
                											<tr><th class="table_th_fix">Address</th><td class="table_th_fix">{{$index4['address_p']}}</td>
                											<td class="table_th_fix">{{$index4['address_c1']}}</td>

                											<td class="table_th_fix">{{$index4['address_c2']}}</td>
                											</tr>
            											@endforeach
            											@endforeach
            											<thead>
													</table>
													</div>
													<br>
        											@endforeach


									 @endif

    									@endforeach

    									</td>

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

</script>
@endpush