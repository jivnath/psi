@extends('layouts.app')

@section('content')
    <div class="container">
    <center><h3>Company Shift</h3></center>
        {!! Form::open(array('route' => 'generator.store')) !!}
        	<div class="row">
	            <div class="col-md-4" style="text-align: center;">               
	                <label for="company">Company Name</label>
	            </div>
	            <div class="col-md-4">
	            	<select onChange="getMessage()" class="form-control" name="company" id="companies" style="float: left">
	            			<option value="">-- Select Company --</option>
	            		@foreach ($companies as $company)
	            			<option value="{{$company->id}}">{{ $company->name }}</option>
	            		@endforeach
	            	</select>
	            	<br>
	            	<div id="sections" style="padding: 10px;">
		            </div> 	
	            </div>
	            <div class="col-md-4"></div>
            </div>
            <br>
            <div class="row">
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
         function getMessage(){
         	company=$('#companies').val();
            $.ajax({
               type:'POST',
               url:'/getmsg',
               data:'_token = <?php echo csrf_token() ?>,sections='.company,
               dataType: "text",
               success:function(data){
               		console.log(data);
                  $("#sections").html(data.msg);
               }
            });
         }
      </script>
</script>