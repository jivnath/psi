@extends('layouts.app') @section('content')
<style>
div.dataTables_wrapper {
	margin: 0 auto;
}
</style>
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">

<section class="content">
	<div class="row">
		<div class="col-md-12">
			<div class="box box-info">
				<div class="box-header with-border">
					<h3 class="box-title">Employee Details</h3>
				</div>
				<div class="box-body">
					<div class='wrapper'>
						<table class="table display nowrap" id='employee_details'
							style="width: 100%">
							<thead class="thead-dark">
								<tr>
									@foreach($columns as $columns_index)
									<th class="sticky" style="word-wrap: break-word">{{$columns_index}}</th>
									@endforeach
									<th class="sticky" style="word-wrap: break-word">Skill</th>

								</tr>
							</thead>
							<tbody>
							@foreach($employee_data as $index => $cell)
							  <tr>
    							 @foreach($columns as $column)
										<td>{{ $cell->{$column} }}</td>
                                 @endforeach
                                 <td>
                                 @foreach($cell->employeeSkill as $skill_index)
									<span class="label label-success">{{$skill_index->skill}}</span>
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
	</div>
</section>
@endsection @push('scripts')
<script
	src='https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js'></script>
<script
	src='https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js'></script>
<script>
$(document).ready(function() {

    $('#employee_details').DataTable({ "scrollX": true, "scrollCollapse": true, scrollY:'50vh'});
    $('.wrapper').css('width',(window.innerWidth-80));
});
    var stickyOffset = $('.sticky').offset().top;

    $(window).scroll(function(){
        var sticky = $('.sticky'),
            scroll = $(window).scrollTop();

        if (scroll > stickyOffset) sticky.addClass('sticky-top');
        else sticky.removeClass('sticky-top');
    });
    </script>
@endpush
