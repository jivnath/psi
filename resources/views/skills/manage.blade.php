@extends('layouts.app')
@section('content')
    <div class="row">
        <div class="col-md-6">
            <div class="box">
                <div class="box-header"><h3>Skills Master</h3></div>
                <div class="box-body">
                    <div class="form-group">
                        <label for="skill"><h5><b>Skills</b></h5></label>
                        <input type="text" class="form-control input-shorter" placeholder="Add New Skill" id="skill"
                               required>
                        <span id="add" style="margin-top: 10px" class="btn btn-success">Add</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            @if(count($skills)>0)
                <div>
                    <h5><b>All Skills</b></h5>
                    <div id="allSkills">
                        <table class="table table-striped">
                            <thead>
                            <tr>
                                <th> Skills</th>
                                <th> No. of Employee</th>
                                <th> Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($skills as $skill)
                                <tr id="skill{{$skill->id}}">
                                    <td>{{$skill->skill_name}}</td>
                                    <td>5</td>
                                    <td><span id="remove" class="btn btn-link" name="{{$skill->id}}">Delete</span></td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                        {{--@foreach($skills as $skill)--}}
                        {{--<span id="skill{{$skill->id}}">{{$skill->skill_name}} <i class="fa fa-trash"--}}
                        {{--id="remove"--}}
                        {{--style="font-size:16px;color:red"--}}
                        {{--name="{{$skill->id}}"></i><br></span>--}}
                        {{--@endforeach--}}
                    </div>
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
@endsection

@push('scripts')
    <script>
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });

        $("#add").click(function () {
            var skill = $("#skill").val();
            $.ajax({
                type: "POST",
                url: "{{route('skills.master.add')}}",
                data: {'skill': skill},
                dataType: "json",
                success: function (data) {
                    $("#noSkills").hide();
                    // var html = '<span id="skill' + data.id + '">' + data.skill_name + ' &nbsp;<i class="fa fa-trash" style="font-size:16px;color:red" id="remove" name="' + data.id + '"></i><br></span>'
                    let newRow = '<tr id="skill' + data.id + '">' +
                        '<td>' + data.skill_name + '</td>' +
                        '<td>5</td>' +
                        '<td><span id="remove" class="btn btn-link" name="' + data.id + '">Delete</span></td></tr>';
                    $("table tbody").append(newRow);
                    $("#skill").val('');
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
                    console.log(text);
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
    </script>
@endpush