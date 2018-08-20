@extends('layouts.app')

@section('content')
    <div class="container">        
        {!! Form::open(array('route' => 'generator.store')) !!}
        	<div class="row">
	            <div class="col-md-4" style="text-align: center;">               
	                <label for="company"> Pick a Company </label>
	            </div>
	            <div class="col-md-4">
	            	<select onchange="changeSection()" class="form-control" name="company" id="companies" style="float: left">
	            		@foreach ($companies as $company)
	            			<option value="{{$company->id}}">{{ $company->name }}</option>
	            		@endforeach
	            	</select>
	            	<br>
	            	<div id="sections" style="padding: 10px;">
		            {{--	<input type="checkbox" name="section" value="section1">Section 1
		            	<input type="checkbox" name="section" value="section2">Section 2  --}}
		            </div> 	
	            </div>
	            <div class="col-md-4"></div>
            </div>
            <br>
            <div class="row">
            	<div class="col-md-4" style="text-align: center;">
            		<label for="shift"> Shifts </label>
            	</div>
            	<div class="col-md-4" style="">
            		@for($i = 1; $i < 25; $i++)
            			<input type="checkbox" name="shift[]" value="{{ $i }}">{{ $i }}
            		@endfor
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script>

	function changeSection(){
		var selected = this.$select.value;
		$.post('/section', {selected:selected}, function(data){
			$("#sections").innerhtml(#sections) = 'success';
               			console.log();
               });
		
		{{--$.ajax({
               type:'POST',
               url:'/section',
               data:{'selected = selected'},
               success:function(data){
               		$("#sections").innerhtml() = 'success';
               			{{--// foreach($data in data)
                			'<input type="checkbox" name="section" value="{{ $data['name'] }}" > {{ $data['name']}} ';--}}
               }
            });
    	}--}}

</script>