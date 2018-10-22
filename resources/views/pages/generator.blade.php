@extends('layouts.app')

@section('content')
    <section class="content">
        <div class="row">
            <div class="col-md-6">
                    <div id="alert" style="display: none">
                            <div class="alert alert-success" role="alert">
                                <strong>Success:</strong><span id="message"></span>
                            </div>
                        </div>
                <div class="box box-info">
                    <div class="box-header with-border">
                        <h3 class="box-title">Company Shift</h3>
                    </div>
                   
                    {!! Form::open(array('route' => 'generator.store','class'=>'form-horizontal')) !!}
                    <div class="box-body row">
                        <div class="col-md-4 form-group" style="text-align: right;">
                            <label for="company"> Section </label>
                        </div>
                        <div class="col-md-7 form-group" style="">
                            <select class="form-control" name="company" id="companies" style="float: left" required>
                                <option value="">--Select Section--</option>
                                @foreach ($companies as $company)
                                    <option name="{{$company->name}}"
                                            value="{{$company->id}}">{{ $company->name }}</option>
                                @endforeach
                            </select>
                            <div id="sections" style="margin-top: 7px;"></div>
                            <div class="col-md-1"></div>
                        </div>
                    </div>
                    <div id="shift" style="margin-bottom: 10px">

                    </div>

                    <div class="row">
                        <div class="col-md-4 form-group" style="text-align: right;">
                            {{ Form::label('start_date','Start Date')}}
                        </div>
                        <div class="col-md-7 form-group">
                            {{ Form::date('start_date', \Carbon\Carbon::now(), array('class' => 'form-control', 'required'=>''))}}
                        </div>
                        <div class="col-md-1"></div>
                    </div>
                    <br>

                    <div class="row">
                        <div class="col-md-4 form-group" style="text-align: right;">
                            {{ Form::label('end_date','End Date')}}
                        </div>
                        <div class="col-md-7 form-group">
                            {{ Form::date('end_date', \Carbon\Carbon::now(), array('class' => 'form-control', 'required'=>''))}}
                        </div>
                        <div class="col-md-1"></div>
                    </div>
                    <br>

                    <div class="row">
                        <div class="col-md-4"></div>
                        <div class="col-md-7" style="text-align: right">
                            {{ Form::submit('Generate', array('class' => 'btn btn-success btn-md'))}}
                            <a href="{{ route('generator') }}" class="btn btn-danger"
                               style="margin-left: 5px">Cancel</a>
                        </div>
                        <div class="col-md-1"></div>
                    </div>
                    {!! Form::close() !!}
                </div>
            </div>

            <div class="col-md-5" id="shiftAdd" style="display: none">
                <div class="box box-info">
                    <div class="box-header with-border">
                        <h3 class="box-title">Add Shift</h3>
                    </div>
                    <div class='form-horizontal'>
                        <div class="box-body">
                            <form id="addShiftForm"></form>
                            <div class="row" style="text-align: center; margin-top: 5px;">
                                <div class="col-md-4">
                                    <label for="company_name"> Company Name </label>
                                </div>
                                <div class="col-md-8 ">
                                    <span style="float:left;" id="company_name"></span>
                                </div>
                                <input type="hidden" id="company_id" name="company_name">
                            </div>
                            <br/>
                            <div class="row" style="text-align: center">
                                <div class="col-md-4">
                                    Shift Time Table
                                </div>
                                <!--Dynamic Field Start -->
                                <div class="col-md-8">
                                    <div class="table-responsive">
                                        <table id="dynamic_field">
                                            <tr>
                                                <td style="padding-right:10px;"><input type="time" name="start_shift[]"
                                                                                       placeholder="Shift Time"
                                                                                       class="form-control name_list"/>
                                                </td>
                                                <td style="padding-right:10px;"><input type="time" name="end_shift[]"
                                                                                       placeholder="Shift Time"
                                                                                       class="form-control name_list"/>
                                                </td>
                                                <td><i name="add" id="add" class="fa fa-plus"
                                                       style=" font-size:28px; color:green;"></i></td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <!-- Dynamic Field end -->
                            <div class="row">
                                <div class="col-md-7"></div>
                                <div class="col-md-5" style="text-align: right">
                                    <button style="margin-top: 15px" id="submitshift" class="btn btn-primary">
                                        Save
                                    </button>
                                    <button id="clear" style="margin-top: 15px" type="reset" class="btn btn-danger">
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
    </section>

@endsection
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script type="text/javascript">
    $(function () {
        $("#companies").change(function () {
            $("#shiftAdd").hide();
            var selected = $('#companies').val();
            var name = $('option:selected', this).attr('name');
            if (selected != '') {
                $.ajax({
                    type: 'GET',
                    url: "{{ route('section') }}",
                    dataType: 'json',
                    data: {'selected': selected},
                    success: function (data) {
                        $("#sections").html(data.output);
                        $("#shift").html('');

                        if (data.section.length == 0) {
                            var forSection = '<div class="row" style="text-align:right">' +
                                '<div class="col-md-4"><label>' + name + '\'s Shift</label></div>' +
                                '<div class="col-md-8" style="text-align: left"><ul style="list-style: none">' +
                                '<div id="' + selected + 'allShifts"> </div>' +
                                '</ul> ' +
                                '<span id="' + selected + '" name="' + name + '" class="btn btn-sm btn-info">Add New Shift</span> </div>' +
                                '</div><br>';
                            $("#shift").append(forSection);

                            for (i = 0; i < data.shift.length; i++) {
                                var html = '<li>' + data.shift[i].start_time + ' - ' + data.shift[i].end_time + '</li>';
                                $("#" + selected + "allShifts").append(html);
                            }
                        }


                    }
                });
            }
            else {
                $("#sections").html('');
                $("#shift").html('');
            }
        });
    });

    $(document).on('change', '.sections', function () {
        $("#shiftAdd").hide();
        var sectionId = $(this).attr("value");
        var sectionName = $(this).attr("id");
        if (this.checked) {
            $.ajax({
                method: "get",
                url: "{{ route('generator.shift') }}",
                data: {id: sectionId},
                dataType: 'json',
                async: true,
                success: function (shifts) {
                    let i;
                    if (shifts.length > 0) {
                        var forSection = '<div id="' + sectionId + 'sec' + '"><div class="row" style="text-align:right">' +
                            '<div class="col-md-4"><label>' + sectionName + '\'s Shift</label></div>' +
                            '<div class="col-md-8" style="text-align: left"><ul style="list-style: none">' +
                            '<div id="' + sectionId + 'allShifts"> </div>' +
                            '</ul> ' +
                            '<span id="' + sectionId + '" name="' + sectionName + '" class="btn btn-sm btn-info">Add New Shift</span> </div>' +
                            '</div><br>' +
                            '</div>';
                        $("#shift").append(forSection);


                        for (i = 0; i < shifts.length; i++) {
                            var html = '<li>' + shifts[i].start_time + ' - ' + shifts[i].end_time + '</li>';
                            $("#" + sectionId + "allShifts").append(html);
                        }
                    }
                    else {
                        var forSec = '<div id="' + sectionId + 'sec' + '"<div class="row" style="text-align:center">' +
                            '<div class="col-md-4"><label>' + sectionName + '\'s Shift</label></div>' +
                            '<div class="col-md-8" style="text-align: left"><ul style="list-style: none">' +
                            '<div id="' + sectionId + 'allShifts">No Shift For This Company<br> </div>' +
                            '</ul> ' +
                            '<span id="' + sectionId + '" name="' + sectionName + '" class="btn btn-sm btn-info">Add New Shift</span></div>' +
                            '</div>' +
                            '</div>';
                        $("#shift").append(forSec);
                    }
                }
            });
        }
        else {
            $("#" + sectionId + "sec").remove();

        }
    });

    // shift add part starts
    $(document).on('click', '.btn-info', function () {

        var id = $(this).attr('id');
        var name = $(this).attr('name');
        $("#company_name").text(name);
        $("#company_id").val(id);
        $("#shiftAdd").show();
        var i = 1;
        $('#add').click(function () {
            i++;
            $('#dynamic_field').append('<tr id="row' + i + '" class="dynamic-added"><td><input type="time" name="start_shift[]" placeholder="Enter your Name" class="form-control name_list" /></td><td><input type="time" name="end_shift[]" placeholder="Enter your Name" class="form-control name_list" /></td><td><button type="button" name="remove" id="' + i + '" class="btn btn-danger btn_remove">X</button></td></tr>');
        });

        $(document).on('click', '.btn_remove', function () {
            var button_id = $(this).attr("id");
            $('#row' + button_id + '').remove();
        });


        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });


        $('#submit').click(function () {
            $.ajax({
                url: ('/addmore'),
                method: "POST",
                data: $('#add_name').serialize(),
                type: 'json',
                success: function (data) {
                    if (data.error) {
                        printErrorMsg(data.error);
                    } else {
                        i = 1;
                        $('.dynamic-added').remove();
                        $('#add_name')[0].reset();
                        $(".print-success-msg").find("ul").html('');
                        $(".print-success-msg").css('display', 'block');
                        $(".print-error-msg").css('display', 'none');
                        $(".print-success-msg").find("ul").append('<li>Record Inserted Successfully.</li>');
                        
                    }
                }
            });
        });

        //for ajax save shifts
        $("#submitshift").click(function () {
            var start_shifts = $("input[name='start_shift[]']")
                .map(function () {
                    return $(this).val();
                }).get();
            var end_shifts = $("input[name='end_shift[]']")
                .map(function () {
                    return $(this).val();
                }).get();
            var companyId = $("#company_id").val();
            $.ajax({
                type: 'POST',
                url: "{{route('ajax.add.shifts')}}",
                data: {
                    start_shifts: start_shifts,
                    end_shifts: end_shifts,
                    id: companyId,
                    "_token": "{{ csrf_token() }}"
                },
                dataType: 'json',
                async: true,
                success: function (shifts) {

                    $("#shiftAdd").hide();
                    $("input[name~='start_shift[]']").val('');
                    $("input[name~='end_shift[]']").val('');
                    $("#" + companyId + "allShifts").html('');

                    for (i = 0; i < shifts.length; i++) {
                        var html = '<li>' + shifts[i].start_time + ' - ' + shifts[i].end_time + '</li>';
                        $("#" + companyId + "allShifts").append(html);
                    }
                    
                    $("#alert").show()
                        $("#message").text('New Shift Added');
                        $(function(){
                        $('html, body').animate({
                        scrollTop: $("#alert").offset().top
                        }, 500);
                        setTimeout(function() {
                            $("#alert").hide(500);
                        }, 4000);
                    });
                }
            });
        });


        function printErrorMsg(msg) {
            $(".print-error-msg").find("ul").html('');
            $(".print-error-msg").css('display', 'block');
            $(".print-success-msg").css('display', 'none');
            $.each(msg, function (key, value) {
                $(".print-error-msg").find("ul").append('<li>' + value + '</li>');
            });
        }

        $("#clear").click(function(){
            $("input[name~='start_shift[]']").val('');
            $("input[name~='end_shift[]']").val('');
        });
    });

</script>