@extends('layouts.app') 
@section('content')
<div class="row">
    <div class="col-md-6">
        <div id="alert" style="display: none">
            <div class="alert alert-success" role="alert">
                <strong>Success:</strong><span id="message"></span>
            </div>
        </div>
        <div class="box">
            <div class="box-header">
                <h3>Skills Master</h3>
            </div>
            <div class="box-body">
                <div class="form-group" id="box">
                    <label for="skill"><h5><b>Skills</b></h5></label>
                    <input type="text" class="form-control input-shorter" placeholder="Enter Skill" id="skill" required>
                    <span id="add" style="margin-top: 10px" class="btn btn-success add">Add</span>
                </div>
            </div>
        </div>
    </div>

    <div class="col-md-6">
        <div class="box box-info">
            <div class="box-header">
                <h5><b>All Skills</b></h5>
            </div>
            <div class="box-body">
                @if(count($skills)>0)
                <div id="allSkills">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th> Skills</th>
                                <th> No. of Employee</th>
                                <th> Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($skills as $skill)
                            <tr id="skill{{$skill->skill_id}}">
                                <td id="skillname{{$skill->skill_id}}">{{$skill->name}}</td>
                                <td>{{$skill->count}}</td>
                                <td><span id="remove" class="btn btn-link" name="{{$skill->skill_id}}">Delete</span>
                                    <span id="rename" data-name="{{$skill->name}}" class="btn btn-link" name="{{$skill->skill_id}}">Rename</span>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
                <p style="display:none;" id="noSkills">No Skills Available</p>
                @else
                <div id="skillDiv" style="margin-top:25px;display: none">
                    <h5><b>All Skills</b></h5>
                    <div id="allSkills">
                    </div>
                </div>
                <p id="noSkills">No Skills Available</p>
                @endif
            </div>
        </div>
    </div>
</div>
@endsection
 @push('scripts')
<script>
    $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });

        $(document).on('click', '.add', function() {
            var skill = $("#skill").val();
            console.log(skill);
            $.ajax({
                type: "POST",
                url: "{{route('skills.master.add')}}",
                data: {'skill': skill},
                dataType: "json",
                success: function (data) {
                    if (data == 0) {
                        alert('Skill ' + skill + ' already exists!!!');                      
                    }
                    else {
                        $("#noSkills").hide();
                        // var html = '<span id="skill' + data.id + '">' + data.skill_name + ' &nbsp;<i class="fa fa-trash" style="font-size:16px;color:red" id="remove" name="' + data.id + '"></i><br></span>'
                        let newRow = '<tr id="skill' + data.id + '">' +
                            '<td id="skillname'+data.id+'">' + data.skill_name + '</td>' +
                            '<td>5</td>' +
                            '<td><span id="remove" class="btn btn-link" name="' + data.id + '">Delete</span>' +
                            '<span id="rename" data-name="'+skill+'" class="btn btn-link" name="' + data.id + '">Rename</span></td>' +
                            '</tr>';
                        $("table tbody").append(newRow);
                        $("#skill").val('');

                         $("#alert").show()
                        $("#message").text('Skill Added!');
                        $(function(){
                        $('html, body').animate({
                        scrollTop: $("#alert").offset().top
                        }, 500);
                        setTimeout(function() {
                            $("#alert").hide(500);
                        }, 4000);
                    });
                    }
                }
            });
        });
        $(document).on('click', '#remove', function () {
            var id = $(this).attr('name');
            console.log(id);
            $.ajax({
                type: "POST",
                dataType: 'json',
                url: "{{route('skills.master.remove')}}",
                data: {'id': id},
                success: function (data, status) {
                    // $('#skill'+id).hide();
                    $('#skill' + id).remove();
                    var text = $("#allSkills").html();
                    $(this).hide();
                    $("#add").addClass('add');
                    $("#add").removeClass('rename');
                    $("#add").text('Add');
                    $("#skill").val('');
                   

                    // console.log(text);
                    // if(text=='')
                    // {
                    //     $("#skillDiv").hide();
                    //     $("#noSkills").show();
                    // }
                },
                error: function (request, status, error) {

                }
            });
        });
        $(document).on('click', '#rename', function () {
            var id = $(this).attr('name');
            var skill = $(this).attr('data-name');
            $("#add").removeClass('add');
            $("#add").addClass('rename');
            $("#add").text('Rename');
            $("#add").attr('data-id', id);
            $("#skill").val(skill);
            $("#cancel").remove();
            var button = '<span id="cancel" style="margin-top:10px" class="btn btn-danger">Cancel</span>';
            $("#box").append(button);
        });

        $(document).on('click', '#cancel', function(){
            $(this).hide();
            $("#add").addClass('add');
            $("#add").removeClass('rename');
            $("#add").text('Add');
            $("#skill").val('');
        });

        $(document).on('click', '.rename', function() {
            var id = $(this).attr('data-id');
            var skill = $('#skill').val();
            $.ajax({
                type: "POST",
                dataType: "json",
                url: "{{route('skills.master.rename')}}",
                data: {'id': id, 'skill':skill},
                success: function (data, status) {
                    $('#skillname'+id).text(skill);
                    $("#add").removeClass('rename');
                    $("#add").addClass('add');
                    $("#add").text('Add');
                    $('#skill').val('');
                    alert(skill);
                    
                }
            });
        });
</script>

@endpush