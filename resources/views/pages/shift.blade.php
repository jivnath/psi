@extends('layouts.app') @section('content')
<section class="content">
	<div class="row">
		<div class="col-md-12">
			<div class="box box-info">
				<div class="box-header with-border">
					<h3 class="box-title">Company Shift <a href="{{ route('generator') }}"
						class="btn btn-link" style="margin-left: 10px"><small>Generate New</small></a></h3>
				</div>
				<div class="table-responsive">
					<table
						class="table table-bordered table-responsive-md table-striped table-condensed">
						<thead>
							<tr>
								<th scope="col">#</th>
								<th scope="col">Section</th>
								<th scope="col">From</th>
								<th scope="col">To</th>
								<th scope="col">Created At</th>
								<th scope="col">Action</th>
							</tr>
						</thead>
						<tbody>
            <?php
            foreach ($results as $index => $shift) {}
            ?>
                @if(count($results) > 0)
                    @foreach($results as $index => $shift)
                        <tr>
							<th scope="row">{{$index + 1}}</th>
							<td>{{ $shift->section_name }}</td>
							<td>{{ Carbon\Carbon::parse( $shift->schedule_from)->format('d-m-Y') }}</td>
							<td>{{ Carbon\Carbon::parse( $shift->schedule_to)->format('d-m-Y') }}</td>
							<td>{{ Carbon\Carbon::parse( $shift->created_at)->format('d-m-Y i:s A') }}</td>
							<td> <a href="{{ route('shift.show',['id' => $shift->master_id]) }}">View</a></td>
							</tr>
							@endforeach @else
							<tr>
								<td colspan="6">No Shifts are uploaded</td>
							</tr>
							@endif
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</section>
@endsection
