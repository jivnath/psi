@extends('layouts.app')
@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="box">
                <div class="box-header">
                    <h3>Employee Skills</h3>
                </div>

                <div class="box-body">
                    <form action="{{ route('skill.store') }}" class="form-group" method="POST">
                        @csrf
                        <label><b>PSI Number</b></label>
                        <input type="text" name="psi_num" id="psi_num" placeholder="PSIS_No"
                               class="form-control" style="width: 50%;" required><span class="loading"></span>

                        <div style="display: none" id="nameDiv">
                            <p id="name_label"><b>Name</b></p>
                            <p id="employee_name" style="text-align: left"></p>
                        </div>
                        <div id="skillsDiv" style="display: none">
                            <label><b> All Skills </b></label>
                            <div id="allSkills">
                            </div>
                            <input type="submit" class="btn btn-primary" value="Save" style="margin-top: 20px">
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
    $(function () {
        $("#psi_num").change(function () {
            var selected = $('#psi_num').val();
            if (selected != null) {
                $.ajax({
                    type: 'GET',
                    url: "{{ route('leader') }}",
                    data: {'selected': selected},
                    success: function (data) {
                        $("#nameDiv").show();
                        if (data != '') {
                            $("#employee_name").text(data);
                            $.ajax({
                                type: 'GET',
                                url: "{{ route('skill.all') }}",
                                data: {'selected': selected},
                                dataType: 'json',
                                beforeSend: function () {

                                    $(".loading").text('Loading...');
                                },
                                success: function (data) {
                                    $(".loading").text('');
                                    let i;
                                    $("#allSkills").html('');
                                    for (i = 0; i < data.masterSkills.length; i++) {
                                        console.log(data.masterSkills);
                                        var check = $.inArray(data.masterSkills[i].id, data.employeeSkills);
                                        if (check >= 0) {
                                            var html = '<input type="checkbox" name="employeeSkills[]" value="' + data.masterSkills[i].id + '" checked>' + data.masterSkills[i].skill_name + '<br>';
                                            $("#allSkills").append(html);
                                        }
                                        else {
                                            var html = '<input type="checkbox" name="employeeSkills[]" value="' + data.masterSkills[i].id + '">' + data.masterSkills[i].skill_name + '<br>';
                                            $("#allSkills").append(html);
                                        }

                                    }
                                    $("#skillsDiv").show();
                                }
                            });

                        }
                        else {
                            $("#allSkills").text('');
                            $("#employee_name").text('');
                            $("#name_label").text('');
                            $("#skillsDiv").hide();
                        }
                    }
                });
            }
        });
    });
</script>