@extends('layouts.app')

@section('content')
    <div class="container">
    <center><h3>Company Shift</h3></center>        
        {!! Form::open(array('route' => 'generator.store')) !!}
        	<div class="row">
	            <div class="col-md-4" style="text-align: center;">               
	                <label for="company"> Company </label>
	            </div>
	            <div class="col-md-4" style="">
	            	<select class="form-control" name="company" id="companies" style="float: left" required>
	            		<option value="">--Select Company--</option>
	            		@foreach ($companies as $company)
	            			<option value="{{$company->id}}">{{ $company->name }}</option>
	            		@endforeach
	            	</select>
	            	<br>
	            	<div id="sections" style="margin-top: 7px;"></div> 	
	            </div>
	            <div class="col-md-4"></div>
            </div>
            <br>
            <div class="row" style="display: none">
            	<div class="col-md-4" style="text-align: center;">
            		<label for="shift"> Shifts </label>
            	</div>
            	<div class="col-md-5" style="">
            		@for($i = 1; $i < 25; $i++)
            			<input type="checkbox" name="shift[]" value="{{ $i }}">
            			
            				@if(strlen($i)==1) 
            				{{'0'.$i }}
            				@else 
            				{{$i}}
            			@endif
            			
            		@if($i==12)
            		<br />
            		@endif	
            		@endfor
            	</div>
            	<div class="col-md-3"></div>
            	
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
<script type="text/javascript">
    var globalSection;
	$(function() {
	    $("#companies").change(function() {
	    	var selected = $('#companies').val();
	    	$.ajax({
	    		type:'GET',
	    		url:"{{ route('section') }}",
                dataType:'json',
	    		data:{ 'selected':selected	},
	    		success:function(data){
	    			$("#sections").html(data.output);

	    			$(function(){

                        var i;
                        for (i = 0; i < data.section.length; ++i) {
                            console.log(data.section[i]);
                            $("#"+data.section[i]).change(function () {
								alert(data.section[i]);
								console.log(data.section[i]);
                            });
                        }
					});
	    		}
	    	});
	    });
    });

</script>