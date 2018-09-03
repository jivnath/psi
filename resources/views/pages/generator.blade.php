@extends('layouts.app')

@section('content')
    <div class="container">
        <div name="generator">
            <div class="row">
                <div class="col-md-6">
                    <center><h3>Company Shift</h3></center>
                    {!! Form::open(array('route' => 'generator.store')) !!}
                        <div class="row">
                            <div class="col-md-4 form-group" style="text-align: right;">
                                <label for="company"> Company </label>
                            </div>
                            <div class="col-md-8 form-group" style="">
                                <select class="form-control" name="company" id="companies" style="float: left" required>
                                    <option value="">--Select Company--</option>
                                    @foreach ($companies as $company)
                                        <option value="{{$company->id}}">{{ $company->name }}</option>
                                    @endforeach
                                </select>
                                <div id="sections" style="margin-top: 7px;"></div>
                            </div>
                        </div>
                        <div id="shift">

                        </div>
                    <br>

                        <div class="row">
                            <div class="col-md-4 form-group" style="text-align: right;">
                                {{ Form::label('start_date','Start Date')}}
                            </div>
                            <div class="col-md-8 form-group">
                                {{ Form::date('start_date', \Carbon\Carbon::now(), array('class' => 'form-control', 'required'=>''))}}
                            </div>
                        </div>
                        <br>

                        <div class="row">
                            <div class="col-md-4 form-group" style="text-align: right;">
                                {{ Form::label('end_date','End Date')}}
                            </div>
                            <div class="col-md-8 form-group">
                                {{ Form::date('end_date', \Carbon\Carbon::now(), array('class' => 'form-control', 'required'=>''))}}
                            </div>
                        </div>
                        <br>

                        <div class="row">
                            <div class="col-md-4"></div>
                            <div class="col-md-8" style="text-align: right">
                                {{ Form::submit('Generate', array('class' => 'btn btn-success btn-md'))}}
                                <a href="{{ route('generator') }}" class="btn btn-danger" style="margin-left: 5px">Cancel</a>
                            </div>
                        </div>
                   {!! Form::close() !!}
                </div><div class="col-md-1"></div>
                <div class="col-md-5" id="shiftAdd" style="display: none">
                    <center><h4>Add Shift</h4></center>
                    <div class="card">
                        <div class="card-body " style="padding: 10px;">
                            <form  action="{{ route('shift.store') }}" method="POST" >
                                <input type="hidden" name="_method" value="POST">
                                <input type="hidden" name="_token" value="{{ csrf_token() }}">

                                <div class="row" style="text-align: center; margin-top: 5px;">
                                    <div class="col-md-4">
                                        <label for="shiftName"> Company Name </label>
                                    </div>
                                    <div class="col-md-8 ">
                                        <select class="form-control" name="company_name" required>
                                            <option value="">--Select Company--</option>
                                            @foreach($allCompanies as $acompany )
                                                <option value="{{ $acompany->id }}"> {{ $acompany->name }} </option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div><br />
                                <div class="row" style="text-align: center">
                                    <div class="col-md-4">
                                        Shift Time Table
                                    </div>
                                    <!--Dynamic Field Start -->
                                    <div class="col-md-8">
                                        <div class="table-responsive">
                                            <table id="dynamic_field">
                                                <tr>
                                                    <td style="padding-right:10px;"><input type="time" name="start_shift[]" placeholder="Shift Time" class="form-control name_list" /></td>
                                                    <td style="padding-right:10px;"><input type="time" name="end_shift[]" placeholder="Shift Time" class="form-control name_list"/></td>
                                                    <td><i name="add" id="add" class="fa fa-plus" style=" font-size:28px; color:green;"></i></td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <!-- Dynamic Field end -->
                                <div class="row">
                                    <div class="col-md-7"></div>
                                    <div class="col-md-5" style="text-align: right">
                                        <button style="margin-top: 15px" type="submit" class="btn btn-primary">
                                            Save
                                        </button>
                                        <button style="margin-top: 15px" type="reset" class="btn btn-danger">
                                            Clear
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
	    $("#companies").change(function() {
	    	var selected = $('#companies').val();
	    	if(selected != '') {
                $.ajax({
                    type: 'GET',
                    url: "{{ route('section') }}",
                    dataType: 'json',
                    data: {'selected': selected},
                    success: function (data) {
                        $("#sections").html(data.output);
                        $("#shift").html('');
                    }
                });
            }
            else
            {
                $("#sections").html('');
                $("#shift").html('');
            }
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
                        var forSection = '<div id="' + sectionId + '1' + '"><div class="row" style="text-align:right">' +
                            '<div class="col-md-6"><label>' + sectionName + '\'s Shift</label></div>' +
                            '<div class="col-md-6" style="text-align: left"><ul style="list-style: none">' +
                            '<div id="'+sectionName+'allShifts"> </div>' +
                            '</ul> ' +
                            '<span class="btn btn-sm btn-info">Add New Shift</span> </div>' +
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
                         '<div class="col-md-6"><label>' + sectionName + '\'s Shift</label></div>' +
                         '<div class="col-md-6" style="text-align: left">' +
                         'No Shift For This Company<br>' +
                         '<span class="btn btn-sm btn-info">Add New Shift</span> </div>' +
                         '</div><br>' +
                         '</div>';
                    $("#shift").append(forSec);
                    }
                }
            });
        }
        else
        {
            $("#"+sectionId+'1').remove();
        }
    });

    // shift add part starts
    $(document).on('click', '.btn-info', function(){

        $("#shiftAdd").show("fast");
        var postURL = "<?php echo url('addmore'); ?>";
        var i=1;
        $('#add').click(function(){
            i++;
            $('#dynamic_field').append('<tr id="row'+i+'" class="dynamic-added"><td><input type="time" name="start_shift[]" placeholder="Enter your Name" class="form-control name_list" /></td><td><input type="time" name="end_shift[]" placeholder="Enter your Name" class="form-control name_list" /></td><td><button type="button" name="remove" id="'+i+'" class="btn btn-danger btn_remove">X</button></td></tr>');
        });


        $(document).on('click', '.btn_remove', function(){
            var button_id = $(this).attr("id");
            $('#row'+button_id+'').remove();
        });


        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });


        $('#submit').click(function(){
            $.ajax({
                url:('/addmore'),
                method:"POST",
                data:$('#add_name').serialize(),
                type:'json',
                success:function(data)
                {
                    if(data.error){
                        printErrorMsg(data.error);
                    }else{
                        i=1;
                        $('.dynamic-added').remove();
                        $('#add_name')[0].reset();
                        $(".print-success-msg").find("ul").html('');
                        $(".print-success-msg").css('display','block');
                        $(".print-error-msg").css('display','none');
                        $(".print-success-msg").find("ul").append('<li>Record Inserted Successfully.</li>');
                    }
                }
            });
        });


        function printErrorMsg (msg) {
            $(".print-error-msg").find("ul").html('');
            $(".print-error-msg").css('display','block');
            $(".print-success-msg").css('display','none');
            $.each( msg, function( key, value ) {
                $(".print-error-msg").find("ul").append('<li>'+value+'</li>');
            });
        }
    });

</script>