@extends('layouts.app')

@section('content')
    <div class="container">        
        {!! Form::open(array('route' => 'generator.work')) !!}
        	<div class="row">
	            <div class="col-md-4" style="text-align: center;">               
	                <label for="company"> Pick a Company </label>
	            </div>
	            <div class="col-md-4">
	            	<select class="form-control" name="company" style="float: left">
	            		@foreach ($companies as $company)
	            			<option value="$company->id">{{ $company->name }}</option>
	            		@endforeach
	            	</select>            	
	            </div>
	            <div class="col-md-4"></div>
            </div>
            <br>

            <div class="row">
	            <div class="col-md-4" style="text-align: center;">               
	                {{ Form::label('start_date','Start Date')}}
	            </div>
	            <div class="col-md-4">
	            	{{ Form::date('start_date', \Carbon\Carbon::now(), array('class' => 'form-control', 'required'=>''))}}            	
	            </div>
	            <div class="col-md-4"></div>
            </div>
            <br>

            <div class="row">
	            <div class="col-md-4" style="text-align: center;">               
	                {{ Form::label('end_date','End Date')}}
	            </div>
	            <div class="col-md-4">
	            	{{ Form::date('end_date', \Carbon\Carbon::now(), array('class' => 'form-control', 'required'=>''))}}            	
	            </div>
	            <div class="col-md-4"></div>
            </div>
            <br>

            <div class="row">
	            <div class="col-md-4" style="text-align: center;">               
	                {{ Form::submit('Generate', array('class' => 'btn btn-success btn-md', 'style' => 'float:right;'))}}
	            </div>
	            <div class="col-md-4">
	            	<a href="{{ route('generator') }}" class="btn btn-danger" style="float: left;">Cancel</a>
	            </div>
	            <div class="col-md-4"></div>
            </div>
           {!! Form::close() !!}
        </div>




@endsection