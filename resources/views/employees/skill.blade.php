@extends('layouts.app') 
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card">
                <div class="card-header">
                    <center> Please Fill up the Form</center>
                </div>

                <div class="card-body" style="align:center">
                    <form action="{{ route('skill.store') }}" method="POST">
                        @csrf
                        <div class="row" style="text-align: right">
                            <div class="col-md-4">
                                <label>PSI Number</label>
                            </div>
                            <div class="col-md-6">
                                <input type="text" name="psi_num" id="psi_num" placeholder="PSIS_No" class="form-control" required>
                            </div>
                            <div class="col-md-2"></div>
                        </div>

                        <div class="row" style="text-align: right; display: none" id="nameDiv">
                            <div class="col-md-4" id="name_label">Name</div>
                            <div class="col-md-6" id="employee_name" style="text-align: left"></div>
                            <div class="col-md-2"></div>
                        </div>
                        </br>

                        <div class="row" style="text-align: right">
                            <div class="col-md-4">
                                <label> Add Skill</label>
                            </div>
                            <div class="col-md-5">
                                <input type="text" id="skills" name="skill" placeholder="Enter skill" class="form-control" required>
                            </div>
                            <div class="col-md-1" style="margin: auto; text-align: left"><i  id="addmore" class="fa fa-plus" style="color: #1d643b;font-size:24px"></i> </div>
                            <div class="col-md-2"></div>
                        </div>
                        <br>

                        <div class="row" id="showSkills" style="text-align: right;display: none">
                            <div class="col-md-4"></div>
                            <div class="col-md-6" style="">
                                <div class="form-control" id="allSkills" style="text-align: left;height: 180px;overflow: auto" >
                                </div>
                            </div>
                            <div class="col-md-2"></div>
                        </div>


                    </form>
                </div>
            </div>
        </div>
    </div>


@endsection
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script type="text/javascript">
    $(function(){
        $("#addmore").click(function(){

            event.preventDefault();
            var skill = $("#skills").val();
            var psi_num = $("#psi_num").val();
            $('#allSkills').append('<span id="row' + skill + '" style="margin: 3px; background-color: #e9e9e9">' + skill + '<i id="'+skill+'" name="'+skill+'" class="fa fa-times-circle remove" style="color:#ff5d4d; margin-left: 2px"></i></span>');

            $.ajax({
                type:"POST",
                url:'{{ route('skill.addmore') }}',
                data:{'skill':skill, 'psi_num':psi_num, "_token": "{{ csrf_token() }}"},
                async:true,
                success:function(){
                    $("#skills").val('');
                }

            });
        });
    });

    $(function() {
        $("#psi_num").change(function() {
            var selected = $('#psi_num').val();
            if(selected != '') {
                $('#allSkills').text('');
                $.ajax({
                    type: 'GET',
                    url: "{{ route('leader') }}",
                    data: {'selected': selected},
                    success: function (data) {
                        $("#nameDiv").show('fast');
                        if (data != '') {
                            $("#employee_name").text(data);
                            $.ajax({
                                type: 'GET',
                                url: "{{ route('skill.all') }}",
                                data: {'selected': selected},
                                dataType: 'json',
                                success: function (data) {
                                    let i;
                                    for (i = 0; i < data.length; i++) {
                                        $('#allSkills').append('<span id="row' + i + '" style="margin: 3px; background-color: #e9e9e9">' + data[i] + '<i id="'+i+'" name="'+data[i]+'" class="fa fa-times-circle remove" style="color:#ff5d4d; margin-left: 2px"></i></span>');
                                        $('#showSkills').show('fast');
                                    }
                                }
                            });

                        }
                        else {
                            $("#employee_name").text("No Person Found");
                            $("#name_label").text('');
                            $("#showSkills").hide();
                            $("#allSkills").text('');
                        }
                    }
                });
            }
        });
    });
    $(document).on('click', '.remove', function(){
        var button_id = $(this).attr("id");
        var name = $(this).attr("name");
        var psi = $("#psi_num").val();
        if(confirm("Are you sure you want to delete this skill?")) {


            $.ajax({
                method:"get",
                url:"{{ route('delete.skill') }}",
                data:{skill:name, psi:psi},
                success:function(){
                    $('#row' + button_id + '').remove();
                }
            });
        }
    });
</script>