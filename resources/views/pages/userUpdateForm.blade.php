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
                        <h3 class="box-title">@lang('employee.UpdateUser')</h3>
                    </div>

                    <form id="form" name="customize_form" action="{{route('storePermissionToUser')}}"
                          class="form-horizontal" method="POST">
                        @csrf
                        <div class='box-body'>
                            <div class="row">
                                <div class="col-md-1">
                                    <label style="margin-left:5px;margin-top:5px">@lang('employee.User')</label>
                                </div>
                                <div class="col-md-11">
                                    <select id="userDropdown" name="userUpdate" class="form-control" style="width:40%">
                                        <option value="0">@lang('employee.SelectUser')</option>
                                        @foreach($user as $users)
                                            <option value="{{$users->id}}">{{$users->name}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                        </div>

                        <div class='box-body' style="display: none" id="allPermissions">
                            @foreach($a as $key=>$as)
                                {{--{{dd($as)}}--}}
                                @php $keys = $key; @endphp
                                @if($key != '' && $key != 'api' && $key != '_debugbar' && $key != 'employee' && $key != 'dashboard')
                                    <div class="form-row">
                                        <div class="col-md-12">

                                            <div class="custom-control custom-checkbox">
                                                <input type="checkbox" class="custom-control-input"
                                                       id="customCheck{{$keys}}" name="customized[]" value="{{$keys}}"
                                                       onclick="toggleSectionCheck('{{$keys}}')">
                                                <label class="custom-control-label"
                                                       for="customCheck{{$keys}}"><b>{{ trans('nav.'.$keys)}}</b></label>
                                                <i style="display: none" onclick="showChild('{{$keys}}')"
                                                   class="fa fa-eye-slash eyeclose{{$keys}}"></i>
                                                <i style="display: none" onclick="showChild('{{$keys}}', this)"
                                                   class="fa fa-eye eyeopen{{$keys}}"></i>
                                            </div>
                                        </div>

                                    </div>
                                    <br>
                                    @foreach($as as $key => $ass)
                                        @php $k = $key; @endphp
                                        @if(gettype($ass)=='object')
                                            <div class="col-md-3 mb-3 object" style="display:none;">
                                                <div class="custom-control custom-checkbox">
                                                    <input type="checkbox" class="custom-control-input"
                                                           id="customCheck{{$ass['id']}}" name="customized[]"
                                                           value="{{$ass['id']}}"
                                                           data-child="{{$keys}}"> <label
                                                            class="custom-control-label"
                                                            for="customCheck{{$ass['id']}}">{{$ass['perm_name']?$ass['perm_name']:$ass['perm_desc']}}</label>
                                                </div>
                                            </div>
                                        @else
                                            <div class="col-md-3 mb-3 array{{$keys}}" style="display: none">
                                                <script type="text/javascript">
                                                    var item = '{{$keys}}';
                                                    // alert('hey');
                                                    $(".eyeopen" + item).show();
                                                </script>
                                                <div class="custom-control custom-checkbox">
                                                    <input type="checkbox" class="custom-control-input"
                                                           data-check="{{$keys}}" id="customCheck{{$key}}"
                                                           onchange="check('{{$keys}}', this)" name="customized[]"
                                                           value="{{$key}}"
                                                           data-child="{{$keys}}"> <label
                                                            class="custom-control-label"
                                                            for="customCheck{{$key}}">{{ trans('nav.'.$key)}}</label>
                                                </div>
                                            </div>
                                            @foreach($ass as $key => $asss)
                                                <div class="col-md-3 mb-3 object" style="display: none; margin: 2px;">
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox" class="custom-control-input"
                                                               id="customCheck{{$asss['id']}}"
                                                               name="customized[]" data-children="{{$k}}"
                                                               value="{{$asss['id']}}"
                                                               data-child="{{$keys}}"> <label
                                                                class="custom-control-label"
                                                                for="customCheck{{$asss['id']}}">{{$asss['perm_name']?$asss['perm_name']:$asss['perm_desc']}}</label>
                                                    </div>
                                                </div>
                                            @endforeach
                                        @endif
                                    @endforeach
                                @endif
                            @endforeach
                            <div class="row">
                                <div class="col-md-10"></div>
                                <div class="col-md-2" style="text-align: left">
                                    <input type="submit" class="btn btn-primary" value="@lang('employee.Save')">
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

        function showChild(item, aru){
            // alert(item);
            if($(aru).hasClass('eyeopen' + item)){
                $(".eyeopen"+ item).hide();
                $(".array"+item).show();
                $(".eyeclose"+ item).show();
            }
            else{
                $(".array"+item).hide();
                $(".eyeclose"+ item).hide();
                $(".eyeopen"+ item).show();

            }
        }

        function check(item, aru) {
            var key = $(aru).val();
            var check = $(aru).is(':checked');
            var checkboxes = $(document).find('input[data-children=' + key + ']');
            checkboxes.prop('checked', check);

            var a = $("input[data-check =" + item + "]");
            // console.log(a);
            if (a.length == a.filter(":checked").length) {
                $("#customCheck" + item).prop('checked', true);
            } else {
                $("#customCheck" + item).prop('checked', false);
            }
        }

    </script>

    <script>
        $('#userDropdown').change(function () {
            var user_id = $(this).val();
            $("input[id^=customCheck]").prop('checked', false);
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