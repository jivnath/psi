@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
        	<div class="mo-col-10 offset-1">
        		<table class="table table-striped table-bordered table-hover">
        			<thead>
        				<th>Time</th>
        				<th>Company</th>
        				<th>Type</th>
        				@foreach($cts as $c)
        					<td>{{ date('m-d', strtotime( $c->date )) }}</td>
        				@endforeach
        		
        			</thead>
        			<tbody>
        				<tr>
        					<td>1</td>
        					<td>2</td>
        					<td>3</td>
        					<td>4</td>
        					<td>5</td>
        					
        				</tr>
        			</tbody>
        		</table>
        		
        	</div>        	
        </div>        
    </div>

@endsection
