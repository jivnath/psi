@extends('layouts.app')
@section('content')
    <div class="col-md-10 offset-1">
        <div class="box">
            <div class="box-header"><h3>Skills Master</h3></div>
            <div class="box-body">
                <div class="form-group">
                    <label for="skill"><h5><b>Skills</b></h5></label>
                    <input type="text" class="form-control input-shorter" placeholder="Add New Skill" id="skill"
                           required>
                    <span id="add" style="margin-top: 10px" class="btn btn-success">Add</span>
                </div>
                <div style="margin-top:25px">
                    <h5><b>All Skills</b></h5>
                    <div id="allSkills">
                        @if(count($skills)>0)
                            @foreach($skills as $skill)
                                <span id="skill" +{{$skill->id}}>{{$skill->skill_name}} <i class="fa fa-trash"
                                                                                           id="remove"
                                                                                           style="font-size:16px;color:red"
                                                                                           name="{{$skill->id}}"></i></span>
                                <br>
                            @endforeach
                        @else
                            <p id="noSkills">No Skills Available</p>
                        @endif
                    </div>
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

        $("#add").click(function () {
            var skill = $("#skill").val();
            $.ajax({
                type: "POST",
                url: "{{route('skills.master.add')}}",
                data: {'skill': skill},
                dataType: "json",
                success: function (data) {
                    $("#noSkills").remove();
                    var html = '<span id="skill' + data.id + '">' + data.skill_name + ' &nbsp;<i class="fa fa-trash" style="font-size:16px;color:red" id="remove" name="' + data.id + '"></i></span><br>'
                    $("#allSkills").append(html);
                    $("#skill").val('');
                }
            });
        });
        $(document).on('click', '#remove', function () {
            var id = $(this).attr('name');
            $.ajax({
                type: "POST",
                url: "{{route('skills.master.remove')}}",
                data: {'id': id},
                dataType: "json",
                success: function (data) {
                    $('#skill'+id+'').remove();
                }
            });
        });
    </script>
@endpush