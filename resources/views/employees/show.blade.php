@extends('layouts.app')
@section('content')
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">
    <style>
        thead input {
            padding: 3px;
            box-sizing: border-box;
        }
        thead th{
            color: white;
        }
        #example2 th{
            background-color: #0d6aad;
        }
    </style>
    <section class="content">
        @include('layouts.duplicate_employees')
        <div class="row">
            <div class="col-md-12">
                <div class="box box-info">
                    <div class="box-header with-border" style="padding-top:2px;padding-bottom: 2px">

                        <h3 class="box-title">@lang('employee.EmployeesList')<a
                                    href="{{ route('employees.uploadForm') }}" class="btn btn-link"
                                    style="margin-left:10px">
                                <small>@lang('employee.UploadNew')</small>
                            </a></h3>
                        <div class="box-tools pull-right">
                            <div class="btn-group">
                                <button type="button" class="btn btn-box-tool dropdown-toggle" data-toggle="dropdown">
                                    <i class="fa fa-wrench"></i>
                                </button>
                                <ul class="dropdown-menu" role="menu">
                                    <li><a href="#" class='dropdown-item'
                                           id='view_columns'>@lang('employee.CustomizeColumns')</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="box-body" style="padding-top:2px ">
                        <div>

                            <table class="display responsive nowrap table table-striped table-fixed table-condensed"
                                   style="text-align: center" id='example2'>
                                <thead>
                                <tr class="firstHead">
                                    @if($data['a'] > 0)
                                        <th class="sticky" style="word-wrap: break-word; border-right:2px solid black; border-bottom:1px solid black" colspan="{{$data['a']}}">@lang('employee.basicInfo')</th>
                                    @endif
                                    @if($data['b'] > 0)
                                        <th class="sticky" style="word-wrap: break-word; border-right:2px solid black; border-bottom:1px solid black" colspan="{{$data['b']}}">@lang('employee.contacts')</th>
                                    @endif
                                    @if($data['c'] > 0)
                                        <th class="sticky" style="word-wrap: break-word; border-right:2px solid black; border-bottom:1px solid black" colspan="{{$data['c']}}">@lang('employee.residence')</th>
                                    @endif
                                    @if($data['d'] > 0)
                                        <th class="sticky" style="word-wrap: break-word; border-right:2px solid black; border-bottom:1px solid black" colspan="{{$data['d']}}">@lang('employee.work')</th>
                                    @endif
                                    @if($data['e'] > 0)
                                        <th class="sticky" style="word-wrap: break-word; border-right:2px solid black; border-bottom:1px solid black" colspan="{{$data['e']}}">@lang('employee.school')</th>
                                    @endif
                                    @if($data['f'] > 0)
                                        <th class="sticky" style="word-wrap: break-word; border-right:2px solid black; border-bottom:1px solid black" colspan="{{$data['f']}}">@lang('employee.bank')</th>
                                    @endif
                                    @if($data['g'] > 0)
                                        <th class="sticky" style="word-wrap: break-word; border-bottom:1px solid black" colspan="{{$data['g']}}">@lang('employee.others')</th>
                                    @endif
                                    <th style="word-wrap: break-word; border-bottom:1px solid black"></th>
                                </tr>
                                <tr class="secondHead">
                                    @foreach($data['data'] as $column)
                                        <th class=""
                                            style="word-wrap: break-word; border-top:1px solid black; border-right:1px solid black; border-bottom:1px solid black">{{(trans('employee.'.$column))}}</th>
                                    @endforeach
                                    <th class="" style="word-wrap: break-word; border-top:1px solid black; border-bottom:1px solid black">@lang('employee.Skills')</th>

                                </tr>
                                </thead>
                                <thead>
                                <tr>
                                    @foreach($data['data'] as $count_key=>$column) @if ($column == 'sex')
                                        <td style="padding: 1px; border-bottom:2px solid black"><select style="width:70%" data-column="{{$count_key}}"
                                                                          class="search-input-select chosen-select"
                                                                          tabindex="{{$count_key+1}}">
                                                <option value="">@lang('employee.All')</option>
                                                <option value="男性">男性</option>
                                                <option value="女性">女性</option>
                                            </select></td>
                                    @else
                                        <td style="padding: 1px; border-bottom:2px solid black"><input style="width:70%" type="text"
                                                                         data-column="{{$count_key}}"
                                                                         class="search-input-text"
                                                                         tabindex="{{$count_key+1}}"></td>
                                    @endif @endforeach
                                    <td style="padding: 1px; border-bottom:2px solid black"></td>
                                </tr>
                                </thead>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <div class="modal" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">@lang('employee.Skills')</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>

                <!-- Modal body -->

                <div class="modal-body">
                    <div id="formDiv">

                    </div>
                    <div id="allSkills" style="margin-top:20px">

                    </div>
                </div>

                <!-- Modal footer -->
                <div class="modal-footer">
                    <span id="submit" class="btn btn-success">@lang('employee.Save')</span>
                    <button type="button" class="btn btn-danger" data-dismiss="modal">@lang('employee.Close')</button>
                </div>
            </div>
        </div>
    </div>

    <div class="modal" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle"
         aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLongTitle">@lang('employee.CustomizeYourColumns')</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form name="customize_form" class='form-horizontal' action="{{ route('customize.field') }}"
                          method="POST">
                        <input type="hidden" name="_method" value="POST">
                        <input type="hidden" name="_token" value="{{ csrf_token() }}">
                        <input type="hidden" name="modified_by" value="{{ \Session::get('user_id') }}">
                        <input type="hidden" name="type" value="employee">
                        <h5><u>@lang('employee.basicInfo')</u></h5>
                        @foreach($data['basicInfo']->chunk(3) as $index=>$customize_columns_index)
                            <div class="form-row">
                                @foreach($customize_columns_index as $field)
                                    @if($field->field_name!='psi_number')
                                        <div class="col-md-4 mb-3">
                                            <div class="custom-control custom-checkbox">
                                                <input type="checkbox" class="custom-control-input"
                                                       id="customCheck{{$field->id}}" name='customized[]'
                                                       value='{{$field->id.'~~'.$field->status}}' {{($field->status=='y')?'checked':''}}>
                                                <label class="custom-control-label"
                                                       for="customCheck{{$field->id}}">{{trans('employee.'.$field->field_name)}}</label>
                                            </div>
                                        </div>
                                    @else
                                        <div class="col-md-4 mb-3">
                                            <div class="custom-control custom-checkbox">
                                                <input type="checkbox" class="custom-control-input"
                                                       id="customCheck{{$field->id}}" name='customized[]'
                                                       value='{{$field->id.'~~'.$field->status}}' checked onclick="return false;">
                                                <label class="custom-control-label"
                                                       for="customCheck{{$field->id}}">{{trans('employee.'.$field->field_name)}}</label>
                                            </div>
                                        </div>
                                    @endif
                                @endforeach
                            </div>
                        @endforeach
                        <h5><u>@lang('employee.contacts')</u></h5>
                        @foreach($data['contacts']->chunk(3) as $index=>$customize_columns_index)
                            <div class="form-row">
                                @foreach($customize_columns_index as $field)
                                    <div class="col-md-4 mb-3">
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input"
                                                   id="customCheck{{$field->id}}" name='customized[]'
                                                   value='{{$field->id.'~~'.$field->status}}' {{($field->status=='y')?'checked':''}}>
                                            <label class="custom-control-label"
                                                   for="customCheck{{$field->id}}">{{trans('employee.'.$field->field_name)}}</label>
                                        </div>
                                    </div>
                                @endforeach
                            </div>
                        @endforeach
                        <h5><u>@lang('employee.residence')</u></h5>
                        @foreach($data['residence']->chunk(3) as $index=>$customize_columns_index)
                            <div class="form-row">
                                @foreach($customize_columns_index as $field)
                                    <div class="col-md-4 mb-3">
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input"
                                                   id="customCheck{{$field->id}}" name='customized[]'
                                                   value='{{$field->id.'~~'.$field->status}}' {{($field->status=='y')?'checked':''}}>
                                            <label class="custom-control-label"
                                                   for="customCheck{{$field->id}}">{{trans('employee.'.$field->field_name)}}</label>
                                        </div>
                                    </div>
                                @endforeach
                            </div>
                        @endforeach
                        <h5><u>@lang('employee.work')</u></h5>
                        @foreach($data['work']->chunk(3) as $index=>$customize_columns_index)
                            <div class="form-row">
                                @foreach($customize_columns_index as $field)
                                    <div class="col-md-4 mb-3">
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input"
                                                   id="customCheck{{$field->id}}" name='customized[]'
                                                   value='{{$field->id.'~~'.$field->status}}' {{($field->status=='y')?'checked':''}}>
                                            <label class="custom-control-label"
                                                   for="customCheck{{$field->id}}">{{trans('employee.'.$field->field_name)}}</label>
                                        </div>
                                    </div>
                                @endforeach
                            </div>
                        @endforeach
                        <h5><u>@lang('employee.school')</u></h5>
                        @foreach($data['school']->chunk(3) as $index=>$customize_columns_index)
                            <div class="form-row">
                                @foreach($customize_columns_index as $field)
                                    <div class="col-md-4 mb-3">
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input"
                                                   id="customCheck{{$field->id}}" name='customized[]'
                                                   value='{{$field->id.'~~'.$field->status}}' {{($field->status=='y')?'checked':''}}>
                                            <label class="custom-control-label"
                                                   for="customCheck{{$field->id}}">{{trans('employee.'.$field->field_name)}}</label>
                                        </div>
                                    </div>
                                @endforeach
                            </div>
                        @endforeach
                        <h5><u>@lang('employee.bank')</u></h5>
                        @foreach($data['bank']->chunk(3) as $index=>$customize_columns_index)
                            <div class="form-row">
                                @foreach($customize_columns_index as $field)
                                    <div class="col-md-4 mb-3">
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input"
                                                   id="customCheck{{$field->id}}" name='customized[]'
                                                   value='{{$field->id.'~~'.$field->status}}' {{($field->status=='y')?'checked':''}}>
                                            <label class="custom-control-label"
                                                   for="customCheck{{$field->id}}">{{trans('employee.'.$field->field_name)}}</label>
                                        </div>
                                    </div>
                                @endforeach
                            </div>
                        @endforeach
                        <h5><u>@lang('employee.others')</u></h5>
                        @foreach($data['other']->chunk(3) as $index=>$customize_columns_index)
                            <div class="form-row">
                                @foreach($customize_columns_index as $field)
                                    <div class="col-md-4 mb-3">
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input"
                                                   id="customCheck{{$field->id}}" name='customized[]'
                                                   value='{{$field->id.'~~'.$field->status}}' {{($field->status=='y')?'checked':''}}>
                                            <label class="custom-control-label"
                                                   for="customCheck{{$field->id}}">{{trans('employee.'.$field->field_name)}}</label>
                                        </div>
                                    </div>
                                @endforeach
                            </div>
                        @endforeach
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">@lang('employee.Close')
                            </button>
                            <button type="submit" class="btn btn-primary">@lang('employee.SaveChanges')</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
@push('scripts')
    <script src='https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js'></script>
    <script src='https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js'></script>
    <script>
        $(document).ready(function () {
            $('.box-body div').css({
                'width': window.innerWidth - 90,
                'overflow': 'scroll',
                'height': window.innerHeight / 1.3
            });
        });

        $('#view_columns').click(function () {
            $('#exampleModalLong').modal('show');
        });
        $(document).on('change', '.sex_class', function () {
            var sex = $(this).val();
            var psi = $(this).attr('data-psi_data');
            $.ajax({
                type: "POST",
                url: "{{route('updateEmployeeGender')}}",
                data: {'sex': sex, 'psi': psi, "_token": "{{ csrf_token() }}"},
                dataType: "json",
                async: true,
                success: function (data) {

                }
            });
        });

        $(document).on('change', '.status_residence', function () {
            var status = $(this).val();
            var psi = $(this).attr('data-psi_data');
            $.ajax({
                type: "POST",
                url: "{{route('updateEmployeeStatusResidence')}}",
                data: {'status': status, 'psi': psi, "_token": "{{ csrf_token() }}"},
                dataType: "json",
                async: true,
                success: function (data) {

                }
            });
        });

        $(document).on('change', '.hourly_wage', function () {
            var wage = $(this).val();
            var psi = $(this).attr('data-psi_data');
            // alert(wage);
            $.ajax({
                type: "POST",
                url: "{{route('updateEmployeeHourlyWage')}}",
                data: {'wage': wage, 'psi': psi, "_token": "{{ csrf_token() }}"},
                dataType: "json",
                async: true,
                success: function (data) {

                }
            });
        });

        $(document).on('change', '.operating_status', function () {
            var status = $(this).val();
            var psi = $(this).attr('data-psi_data');
            $.ajax({
                type: "POST",
                url: "{{route('updateEmployeeOperatingStatus')}}",
                data: {'status': status, 'psi': psi, "_token": "{{ csrf_token() }}"},
                dataType: "json",
                async: true,
                success: function (data) {

                }
            });
        });

        $(document).on('change', '.status', function () {
            var status = $(this).val();
            var psi = $(this).attr('data-psi_data');
            $.ajax({
                type: "POST",
                url: "{{route('updateEmployeeStatus')}}",
                data: {'status': status, 'psi': psi, "_token": "{{ csrf_token() }}"},
                dataType: "json",
                async: true,
                success: function (data) {

                }
            });
        });

        $(document).on('change', '.viber_install', function () {
            var viber = $(this).val();
            var psi = $(this).attr('data-psi_data');
            $.ajax({
                type: "POST",
                url: "{{route('updateEmployeeViberInstall')}}",
                data: {'viber': viber, 'psi': psi, "_token": "{{ csrf_token() }}"},
                dataType: "json",
                async: true,
                success: function (data) {

                }
            });
        });

        $(document).ready(function () {
            $(".example2-grid-error").html("");
            var column = '{{json_encode($data['data'])}}';
            column = column.replace(/&quot;/g, '"');
            column = column.replace(/&#039;/g, '"');

            var columns = JSON.parse(column);
            var col = [];
            let i;
            for (i = 0; i < columns.length; i++) {
                if (columns[i] != 'updated_at' && columns[i] != 'psi_number' && columns[i] != 'sex' && columns[i] != 'status_residence' && columns[i] != 'status' && columns[i] != 'hourly_wage' && columns[i] != 'status_residence'
                    && columns[i] != 'operating_status' && columns[i] != 'viber_install')
                    col.push({'data': columns[i], 'class': 'contenteditable ' + columns[i]});
                else
                    col.push({'data': columns[i]});

            }
            col.push({'data': 'skills'});
            var locale = $("#locale").val();
            if(locale == 'en') {
                var dataTable = $('#example2').DataTable({
                    "processing": true,
                    "serverSide": true,
                    "pagingType": "full_numbers",
                    "serverSide": true,
                    "ajax": {
                        "url": "<?= route('getEmployeeAjax') ?>",
                        "dataType": "json",
                        "type": "POST",
                        "data": {"_token": "<?= csrf_token() ?>"}
                    },
                    "columns": col,
                });
            }
            else {
                var dataTable = $('#example2').DataTable({
                    "language": {
                        "url": "//cdn.datatables.net/plug-ins/9dcbecd42ad/i18n/Japanese.json"
                    },
                    "processing": true,
                    "serverSide": true,
                    "pagingType": "full_numbers",
                    "serverSide": true,
                    "ajax": {
                        "url": "<?= route('getEmployeeAjax') ?>",
                        "dataType": "json",
                        "type": "POST",
                        "data": {"_token": "<?= csrf_token() ?>"}
                    },
                    "columns": col,
                });
            }
            $("#example_filter").css("display", "none");  // hiding global search box
            $('.search-input-select').on('change', function () {   // for select box
                var i = $(this).attr('data-column');
                var v = $(this).val();
                dataTable.columns(i).search(v).draw();
            });
        });

        $(document).on('click', '.employee_skills', function () {
            var selected = $(this).attr('id');
            $('#myModal').modal('show');
            $.ajax({
                type: 'GET',
                url: "{{ route('skill.all') }}",
                data: {'selected': selected},
                dataType: 'json',
                success: function (data) {
                    let i;
                    $("#allSkills").html('');
                    for (i = 0; i < data.masterSkills.length; i++) {
                        // console.log(data.masterSkills);
                        var check = $.inArray(data.masterSkills[i].id, data.employeeSkills);
                        if (check >= 0) {
                            var html = '<input type="checkbox" class="skill_checkboxes" name="employeeSkills[]" value="' + data.masterSkills[i].id + '" checked>' + data.masterSkills[i].skill_name + '<br>';
                            $("#allSkills").append(html);
                        }
                        else {
                            var html = '<input type="checkbox" class="skill_checkboxes" name="employeeSkills[]" value="' + data.masterSkills[i].id + '">' + data.masterSkills[i].skill_name + '<br>';
                            $("#allSkills").append(html);
                        }
                        var form = '<input type="hidden" class="form-control" id="hidden_psi" value=' + selected + ' name="psi_num" >';
                        $("#formDiv").html(form);
                    }
                }
            });
        });

        $(document).on('mouseover', 'td.contenteditable', function () {
            $('td.contenteditable').attr('contenteditable', 'true');
            $('td.contenteditable').attr('data-old', '');

            var tds = document.querySelectorAll("td.contenteditable");
            tds.forEach(function (el, index) {
                employee.inlineEditable(el, function (response) {
                    if (response.errors) {
                        $('#validation').text(response.message);
                        $('#validation').show();
                    }
                });
            })
        });

        $('#view_columns').click(function () {
            $('#exampleModalLong').modal('show');
        });

        $("#submit").click(function () {
            var skills = $('.skill_checkboxes:checked').map(function () {
                return this.value;
            }).get();
            var skill = $('.skill_checkboxes').val();
            var psi = $("#hidden_psi").val();
            $.ajax({
                type: "POST",
                url: "{{route('skill.store')}}",
                data: {'skill': skills, 'psi': psi, "_token": "{{ csrf_token() }}"},
                dataType: "json",
                async: true,
                success: function (data) {
                    $("#myModal").modal('hide');
                }
            });
        });

        $(document).ajaxComplete(function(){
            $(".firstHead th").css("font-size", "1.2em");
            $( "tr td:nth-child({{$data['a']}})" ).css( "border-right", "2px solid black" );
            $( "tr td:nth-child({{$data['a']}})" ).css( "border-right", "2px solid black" );
            $( ".secondHead th:nth-child({{$data['a']}})" ).css( "border-right", "2px solid black" );
            $( "tr td:nth-child({{$data['a'] + $data['b']}})" ).css( "border-right", "2px solid black" );
            $( ".secondHead th:nth-child({{$data['a'] + $data['b']}})" ).css( "border-right", "2px solid black" );
            $( "tr td:nth-child({{$data['a']+$data['b']+$data['c']}})" ).css( "border-right", "2px solid black" );
            $( ".secondHead th:nth-child({{$data['a']+$data['b']+$data['c']}})" ).css( "border-right", "2px solid black" );
            $( "tr td:nth-child({{$data['a']+$data['b']+$data['c']+$data['d']}})" ).css( "border-right", "2px solid black" );
            $( ".secondHead th:nth-child({{$data['a']+$data['b']+$data['c']+$data['d']}})" ).css( "border-right", "2px solid black" );
            $( "tr td:nth-child({{$data['a']+$data['b']+$data['c']+$data['d']+$data['e']}})" ).css( "border-right", "2px solid black" );
            $( ".secondHead th:nth-child({{$data['a']+$data['b']+$data['c']+$data['d']+$data['e']}})" ).css( "border-right", "2px solid black" );
            $( "tr td:nth-child({{$data['a']+$data['b']+$data['c']+$data['d']+$data['e']+$data['f']}})" ).css( "border-right", "2px solid black" );
            $( ".secondHead th:nth-child({{$data['a']+$data['b']+$data['c']+$data['d']+$data['e']+$data['f']}})" ).css( "border-right", "2px solid black" );
            $( "tr td:nth-child({{$data['a']+$data['b']+$data['c']+$data['d']+$data['e']+$data['f']+$data['g']}})" ).css( "border-right", "2px solid white" );
            $("th").css("background", "#0d6aad");
            $("tr td").css("border-right", "1px solid black");
            $("tr td:last-child").css("border-right", "none");
        });

    </script>
@endpush