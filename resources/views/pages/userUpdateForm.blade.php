@extends('layouts.app')
@section('content')
    <style>
        .child-row {
            margin-left: 17px;
        }
    </style>
    <section class="content">
        <div class="row">
            <div class='col-md-12'>
                <div class="box box-info">
                    <div class="box-header with-border">
                        <h3 class="box-title">Update User</h3>
                    </div>

                    <form id="form" name="customize_form" action="{{route('storePermissionToUser')}}" class="form-horizontal" method="POST">
                        @csrf
                        <div class='box-body'>
                            <div class="row">
                                <div class="col-md-1">
                                    <label style="margin-left:50px;margin-top:5px">User</label>
                                </div>
                                <div class="col-md-11">
                                    <select id="userDropdown" name="userUpdate" class="form-control" style="width:40%">
                                        <option value="0">--Select User--</option>
                                        @foreach($user as $users)
                                            <option value="{{$users->id}}">{{$users->name}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                        </div>

                        <div class='box-body' style="display: none" id="allPermissions">
                            @foreach($permission_relation as $k=>$i)
                                <div class="form-row">
                                    <div class="col-md-12">
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input"
                                                   id="customCheck{{str_replace('/','',$k)}}" name="customized[]"
                                                   value="{{str_replace('/','',$k)}}"
                                                   onclick="toggleSectionCheck('{{str_replace('/','',$k)}}')">
                                            <label class="custom-control-label"
                                                   for="customCheck{{str_replace('/','',$k)}}">{{$k}}</label>
                                        </div>
                                        {{--{{dd(str_replace('/','',$k))}}--}}
                                    </div>

                                </div>
                                <br>
                                <div class="form-row child-row">
                                    @foreach($i as $item)
                                        {{--{{dd($item['id'])}}--}}
                                        <div class="col-md-3 mb-3">
                                            <div class="custom-control custom-checkbox">
                                                <input type="checkbox" class="custom-control-input"
                                                       id="customCheck{{$item['id']}}" name="customized[]"
                                                       value="{{$item['id']}}"
                                                       data-child="{{str_replace('/','',$k)}}"> <label
                                                        class="custom-control-label"
                                                        for="customCheck{{$item['id']}}">{{$item['perm_name']?$item['perm_name']:$item['perm_desc']}}</label>
                                            </div>
                                        </div>
                                    @endforeach
                                </div>
                            @endforeach
                            <div class="row">
                                <div class="col-md-10"></div>
                                <div class="col-md-2" style="text-align: left">
                                    <input id="submit" type="submit" class="btn btn-primary" value="Save">
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        </div>
    </section>
@endsection
@push('scripts')
    <script>
        // $(document).ready(function () {
        //     var tds = document.querySelectorAll("td.contenteditable");
        //     tds.forEach(function (el, index) {
        //         employee.inlineEditable(el, function (response) {
        //         });
        //     });
        // });

    </script>
    <script type="text/javascript">
        function toggleSectionCheck(item) {
            var check = $("#customCheck" + item).is(':checked');
            var checkboxes = $(document).find('input[data-child=' + item + ']');
            checkboxes.prop('checked', check);
        }

    </script>

    <script>
        $('#userDropdown').change(function () {
            var user_id = $(this).val();
            console.log(user_id);
            if (user_id != '0') {
                $.ajax({
                    type: "GET",
                    dataType: "json",
                    url: "{{route('getUserPermission')}}",
                    data: {'user_id': user_id},
                    success: function (data) {
                        if (data != 0) {
                            let i;
                            for (i = 0; i <= data.length; i++) {
                                $("#customCheck" + data[i]).prop('checked', true);
                            }
                            $("#allPermissions").show();
                        }
                        else {
                            $("#allPermissions").hide();
                        }

                    }
                });
            }
            else {
                $('#allPermissions').hide();
            }
        });
    </script>
@endpush