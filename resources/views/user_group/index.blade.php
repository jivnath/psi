@extends('layouts.app')

@section('content')
    <div class="col-md-10 offset-1">
        <div class="row">
            <div class="col-md-7">
                <div class="box">
                    <div class="box-header">
                        <h3>User Groups</h3><span style="float: right" id="add_group" class="btn btn-small btn-link">Add Group</span>
                    </div>
                    <div class="box-body">
                        @if($user_group)
                            <table class="table table-hover" id="group_table" style="text-align: center">
                                <thead>
                                <tr>
                                    {{--<th>#</th>--}}
                                    <th>Group Name</th>
                                    <th>No. of Members</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                    @foreach($user_group as $index => $group)
                                        <tr>
                                            {{--<td>{{ $index + 1 }}</td>--}}
                                            <td id="{{$group->id}}td">{{ $group->group_name }}</td>
                                            <td> 2 </td>
                                            <td>
                                                <span id="{{$group->id}}" name="{{$group->group_name}}" class="btn btn-small btn-link rename"><small>Rename</small></span>
                                            </td>
                                        </tr>
                                    @endforeach
                                    <tr id="moreGroup"></tr>
                                </tbody>
                            </table>
                        @endif
                    </div>
                </div>
            </div>
            <div class="box col-sm-5 form-group" id="add_form" style="display: none">
                <div class="box-header"><h4 id="header"> Add Group </h4></div>
                <div class="box-body">
                    <label for="group_name">Group Name</label>
                    <input type="text" class="form-control" id="group_name" placeholder="Enter Group Name">
                    <span style="margin-top: 5px; float: right;" id="submit" class="btn btn-sm btn-primary">Add</span>
                </div>
            </div>
        </div>
    </div>
@endsection

@push('scripts')
    {{--<script src='https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js'></script>--}}
    {{--<script src='https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js'></script>--}}
    <script type="text/javascript">

        // $(document).ready(function() {
        //     $('#group_table').DataTable();
        // });
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });

        $(document).on("click", ".update", function(){
            var name = $("#group_name").val();
            var id = $(this).attr('name');

            $.ajax({
                type:"POST",
                url:"{{route('group.rename')}}",
                data:{'id':id, 'name':name},
                async:true,
                success:function(data){
                    $("#"+id+"td").text(name);
                    $("#add_form").hide();
                }
            });
        });

        $(document).on("click", ".add", function(){
            var name = $("#group_name").val();

            $.ajax({
                type:"POST",
                url:"{{route('group.add')}}",
                data:{'name':name},
                dataType:'json',
                async:true,
                success:function(data){
                    var newrow = '<td id="'+data+'td'+'">'+name+'</td>' +
                        '<td>2</td>' +
                        '<td>' +
                        '<span id="'+data+'" name="'+name+'" class="btn btn-small btn-link rename"><small>Rename</small></span>' +
                        '</td>';
                    $("#group_table").append(newrow);
                    $("#add_form").hide();
                }
            });
        });

        $(function () {
            $("#add_group").click(function () {
                $("#add_form").show();
                $("#header").text('Add Group');
                $("#submit").removeClass('update');
                $("#submit").addClass('add');
                $("#submit").text('Add');
                $("#submit").removeAttr('name');
                $("#group_name").attr("placeholder", "Enter Group Name");
                $("#group_name").removeAttr("value");
                $("#group_name").val('');
            });
            $(document).on("click", ".rename", function() {
                var id = $(this).attr("id");
                var name = $(this).attr("name");
                $("#add_form").show();
                $("#header").text('Rename Group');
                $("#submit").removeClass('add');
                $("#submit").addClass('update');
                $("#submit").text('Rename');
                $("#submit").attr("name", id);
                // $("#group_name").attr("value", name);
                $("#group_name").val(name);
                $("#group_name").removeAttr("placeholder");
            });
        });
    </script>
@endpush
