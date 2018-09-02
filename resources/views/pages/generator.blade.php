@extends('layouts.app')

@section('content')
    <div class="container">
    <center><h3>Company Shift</h3></center>        
        {!! Form::open(array('route' => 'generator.store')) !!}
        	<div class="row">
	            <div class="col-md-4" style="text-align: right;">
	                <label for="company"> Company </label>
	            </div>
	            <div class="col-md-4" style="">
	            	<select class="form-control" name="company" id="companies" style="float: left" required>
	            		<option value="">--Select Company--</option>
	            		@foreach ($companies as $company)
	            			<option value="{{$company->id}}">{{ $company->name }}</option>
	            		@endforeach
	            	</select>
	            	<div id="sections" style="margin-top: 7px;"></div> 	
	            </div>
	            <div class="col-md-4"></div>
            </div>
		    <div id="shift">

			</div>
        <br>

            <div class="row">
	            <div class="col-md-4" style="text-align: right;">
	                {{ Form::label('start_date','Start Date')}}
	            </div>
	            <div class="col-md-4">
	            	{{ Form::date('start_date', \Carbon\Carbon::now(), array('class' => 'form-control', 'required'=>''))}}            	
	            </div>
	            <div class="col-md-4"></div>
            </div>
            <br>

            <div class="row">
	            <div class="col-md-4" style="text-align: right;">
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
	            </div>
	            <div class="col-md-4" style="text-align: right">
                    {{ Form::submit('Generate', array('class' => 'btn btn-success btn-md'))}}
                    <a href="{{ route('generator') }}" class="btn btn-danger" style="margin-left: 5px">Cancel</a>
                </div>
	            <div class="col-md-4"></div>
            </div>
           {!! Form::close() !!}
        </div>
@endsection
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script type="text/javascript">
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
	    			$("#shift").html('');
	    		}
	    	});
	    });
    });

    $(document).on('change', '.sections', function(){
        var sectionId = $(this).attr("value");
        var sectionName = $(this).attr("id");
        if(this.checked) {
            $.ajax({
                method: "get",
                url: "{{ route('generator.shift') }}",
                data: {id:sectionId},
				dataType:'json',
				async:true,
                success: function (sections) {
                    let i;
                    if(sections.length >0)
                    {
                        var forSection = '<div id="' + sectionName + '1' + '"><div class="row" style="text-align:right">' +
                            '<div class="col-md-4"><label>' + sectionName + '\'s Shift</label></div>' +
                            '<div class="col-md-4" style="text-align: left"><ul>' +
                            '<div id="'+sectionName+'allShifts"> </div>' +
                            '</ul> ' +
                            '<a href = {{ route("shift.add") }}>Add New Shift</a> </div>' +
                            '<div class="col-md-4"></div>' +
                            '</div><br>' +
                            '</div>';
                        $("#shift").append(forSection);


                        for (i = 0; i < sections.length; i++)
                        {
                            var html = '<li>' + sections[i].start_time + ' - ' + sections[i].end_time + '</li>';
                            $("#"+sectionName+"allShifts").append(html);
                        }
                    }
                    else
                    {
                     var forSec = '<div class="row" style="text-align:right">' +
                         '<div class="col-md-4"><label>' + sectionName + '\'s Shift</label></div>' +
                         '<div class="col-md-4" style="text-align: left">' +
                         'No Shift For This Company<br>' +
                         '<a href = {{ route("shift.add") }}>Add New Shift</a> </div>' +
                         '<div class="col-md-4"></div>' +
                         '</div><br>' +
                         '</div>';
                    $("#shift").append(forSec);
                    }
                }
            });
        }
        else
        {
            $("#"+sectionName+'1').remove();
        }
    });

</script>