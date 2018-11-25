@extends('layouts.app') 
@section('content')
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">
<style>
    thead input {
        padding: 3px;
        box-sizing: border-box;
    }
</style>
<section class="content">
    @include('layouts.duplicate_employees')
    <div class="row">
        <div class="col-md-12">
            <div class="box box-info">
                <div class="box-header with-border">

                    <h3 class="box-title">@lang('employee.EmployeesList')<a href="{{ route('employees.uploadForm') }}" class="btn btn-link" style="margin-left:10px">
                                <small>@lang('employee.UploadNew')</small>
                            </a></h3>
                    <div class="box-tools pull-right">
                        <div class="btn-group">
                            <button type="button" class="btn btn-box-tool dropdown-toggle" data-toggle="dropdown">
                                    <i class="fa fa-wrench"></i>
                                </button>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="#" class='dropdown-item' id='view_columns'>@lang('employee.CustomizeColumns')</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="box-body">
                    <div>
                        <table class="table table-condensed table-striped table-fixed" style="text-align: center" id='example'>
                            <thead>
                                <tr>
                                    @foreach($all_col as $column)
                                    <th class="sticky-top" style="word-wrap: break-word">{{(trans('employee.'.$column->field_name))}}</th>
                                    @endforeach
                                    <th class="sticky-top" style="word-wrap: break-word">@lang('employee.Skills')</th>

                                </tr>
                            </thead>
                            <thead>
                                <tr>
                                    @foreach($all_col as $count_key=>$column) @if ($column->field_name == 'sex')
                                    <td><select data-column="{{$count_key}}" class="search-input-select chosen-select" tabindex="{{$count_key+1}}">
                                                    <option value="">@lang('employee.All')</option>
                                                    <option value="男性">男性</option>
                                                    <option value="女性">女性</option>
                                                </select></td>
                                    @else
                                    <td><input type="text" data-column="{{$count_key}}" class="search-input-text" tabindex="{{$count_key+1}}"></td>
                                    @endif @endforeach

                                </tr>
                            </thead>
                            <tbody>
                                @if(count($cells) > 0) @foreach($cells as $index => $cell)
                                <tr>
                                    @foreach($all_col as $column) @if($column->field_name == 'psi_number') @php $psi_value=$cell->{$column->field_name} 
@endphp
                                    @endif @if($column->field_name != 'updated_at' && $column->field_name != 'psi_number'
                                    && $column->field_name != 'sex' && $column->field_name != 'status_residence' && $column->field_name
                                    != 'status' && $column->field_name != 'hourly_wage' && $column->field_name != 'status_residence'
                                    && $column->field_name != 'operating_status' && $column->field_name != 'viber_install')
                                    <td class="contenteditable" data-column="{{ $column->field_name }}" data-old="" contenteditable="true">

                                        {{ $cell->{$column->field_name} }}
                                    </td>
                                    @else
                                    <td>
                                        @if ($column->field_name == 'sex')
                                        <select name="sex" class="sex_class" data-psi_data="{{$psi_value}}">
                                                                @foreach($sex as $s)
                                                                    <option
                                                                        <?= ($cell->{$column->field_name} == $s->name) ? 'selected="selected"' : ''?> value="{{$s->name}}">{{ $s->name }}</option>
                                                                @endforeach
                                                            </select> @elseif ($column->field_name
                                        == 'status_residence')
                                        <select name="status_residence" class="status_residence" data-psi_data="{{$psi_value}}">
                                                                <option>@lang('employee.none')</option>
                                                                <option
                                                                    <?= ($cell->{$column->field_name} == '就労') ? 'selected="selected"' : ''?> value="就労">
                                                                    就労
                                                                </option>
                                                                <option
                                                                    <?= ($cell->{$column->field_name} == '家族滞在') ? 'selected="selected"' : ''?>  value="家族滞在">
                                                                    家族滞在
                                                                </option>
                                                                <option
                                                                    <?= ($cell->{$column->field_name} == '留学') ? 'selected="selected"' : ''?> value="留学">
                                                                    留学
                                                                </option>
                                                            </select> @elseif ($column->field_name
                                        == 'hourly_wage')
                                        <select name="hourly_wage" class="hourly_wage" data-psi_data="{{$psi_value}}">
                                                                <option>@lang('employee.none')</option>
                                                                <option
                                                                    <?= ($cell->{$column->field_name} == '通常の雇用主') ? 'selected="selected"' : ''?> value="通常の雇用主">
                                                                    通常の雇用主
                                                                </option>
                                                                <option
                                                                    <?= ($cell->{$column->field_name} == 'セミ雇用者') ? 'selected="selected"' : ''?> value="セミ雇用者">
                                                                    セミ雇用者
                                                                </option>
                                                                <option
                                                                    <?= ($cell->{$column->field_name} == 'アルバイト') ? 'selected="selected"' : ''?>value="アルバイト">
                                                                    アルバイト
                                                                </option>
                                                            </select> @elseif($column->field_name
                                        == 'operating_status')
                                        <select name="operating_status" class="operating_status" data-psi_data="{{$psi_value}}">
                                                                <option>@lang('employee.none')</option>

                                                                <option
                                                                    <?= ($cell->{$column->field_name} == '働くこと') ? 'selected="selected"' : ''?> value="働くこと">
                                                                    働くこと
                                                                </option>
                                                                <option
                                                                    <?= ($cell->{$column->field_name} == '低頻度の仕事') ? 'selected="selected"' : ''?> value="低頻度の仕事">
                                                                    低頻度の仕事
                                                                </option>
                                                                <option
                                                                    <?= ($cell->{$column->field_name} == 'やめて') ? 'selected="selected"' : ''?> value="やめて">
                                                                    やめて
                                                                </option>
                                                            </select> @elseif($column->field_name
                                        == 'status')
                                        <select name="status" class="status" data-psi_data="{{$psi_value}}">

                                                                <option
                                                                    <?= ($cell->{$column->field_name} == 1) ? 'selected="selected"' : ''?> value="1">
                                                                    @lang('employee.Available')
                                                                </option>
                                                                <option
                                                                    <?= ($cell->{$column->field_name} == 0) ? 'selected="selected"' : ''?> value="0">
                                                                    @lang('employee.NotAvailable')
                                                                </option>

                                                            </select> @elseif($column->field_name
                                        == 'viber_install')
                                        <select name="viber_install" class="viber_install" data-psi_data="{{$psi_value}}">

                                                                <option
                                                                    <?= ($cell->{$column->field_name} == 1) ? 'selected="selected"' : ''?> value="1">
                                                                    @lang('employee.Yes')
                                                                </option>
                                                                <option
                                                                    <?= ($cell->{$column->field_name} == 0) ? 'selected="selected"' : ''?> value="0">
                                                                    @lang('employee.No')
                                                                </option>
                                                            </select> @else {{ $cell->{$column->field_name}
                                        }} @endif
                                    </td>
                                    @endif @endforeach
                                    <td><span id="{{$psi_value}}" class="employee_skills btn btn-primary" data-toggle="modal"
                                            data-target="#myModal">@lang('employee.ChooseSkill')</span></td>

                                </tr>
                                @endforeach @else
                                <tr>
                                    <td colspan="6">@lang('employee.Nosheetsareuploaded')</td>
                                </tr>
                                @endif
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<div class="modal fade" id="myModal">
    <div class="modal-dialog">
        <div class="modal-content">

            <!-- Modal Header -->
            <form action="{{route('skill.store')}}" method="POST" class="form-horizontal" enctype="multipart/form-data">
                @csrf
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
            {{-- <input type="text" name="psi_num" value="{{old('psi_num')}}"> --}}
               
                
            </div>

            <!-- Modal footer -->
            <div class="modal-footer">
                    <button type="submit" class="btn btn-success">@lang('employee.Save')</button>
                <button type="button" class="btn btn-danger" data-dismiss="modal">@lang('employee.Close')</button>
            </div>
        </form>

        </div>
    </div>
</div>

<div class="modal" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle">@lang('employee.CustomizeYourColumns')</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
 <span aria-hidden="true">&times;</span>
 </button>
            </div>
            <div class="modal-body">
                <form name="customize_form" class='form-horizontal' action="{{ route('customize.field') }}" method="POST">
                    <input type="hidden" name="_method" value="POST">
                    <input type="hidden" name="_token" value="{{ csrf_token() }}">
                    <input type="hidden" name="modified_by" value="{{ \Session::get('user_id') }}">
                    <input type="hidden" name="type" value="employee"> @foreach($customize_columns->chunk(3) as $index=>$customize_columns_index)
                    <div class="form-row">
                        @foreach($customize_columns_index as $field)
                        <div class="col-md-4 mb-3">
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="customCheck{{$field->id}}" name='customized[]' value='{{$field->id.'
                                    ~~ '.$field->status}}' {{($field->status=='y')?'checked':''}}>
                                <label class="custom-control-label" for="customCheck{{$field->id}}">{{trans('employee.'.$field->field_name)}}</label>
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
                'height': window.innerHeight / 1.5
            });

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
        $(".sex_class").change(function () {
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

        $(".status_residence").change(function () {
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

        $(".hourly_wage").change(function () {
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

        $(".operating_status").change(function () {
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

        $(".status").change(function () {
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

        $(".viber_install").change(function () {
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
            // Setup - add a text input to each footer cell
            // Setup - add a text input to each footer cell


            // DataTable
            var locale = $("#locale").val();
            if(locale == 'ja')
            {
                 var table = $('#example').DataTable( {
                    "language": {
                        "url": "//cdn.datatables.net/plug-ins/9dcbecd42ad/i18n/Japanese.json"
                    }
                });
            }
            else
            {
                var table = $('#example').DataTable();
            }
            $("#example_filter").css("display", "none");  // hiding global search box

            $('.search-input-text').keypress(function (e) {   // for text boxes
                if (e.which == 13) {
                    var i = $(this).attr('data-column');  // getting column index
                    var v = $(this).val();  // getting search input value
                    //              if(v!='')
                    table.columns(i).search(v).draw();
                }
            });
            $('.search-input-select').on('change', function () {   // for select box
                var i = $(this).attr('data-column');
                var v = $(this).val();
                table.columns(i).search(v).draw();
            });
        });

        $(".employee_skills").click(function(){
            var selected = $(this).attr('id');
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
                            var html = '<input type="checkbox" name="employeeSkills[]" value="' + data.masterSkills[i].id + '" checked>' + data.masterSkills[i].skill_name + '<br>';
                            $("#allSkills").append(html);
                        }
                        else {
                            var html = '<input type="checkbox" name="employeeSkills[]" value="' + data.masterSkills[i].id + '">' + data.masterSkills[i].skill_name + '<br>';
                            $("#allSkills").append(html);
                        }
                        var form = '<input type="hidden" class="form-conrol" value=' +selected + ' name="psi_num" >';
                        $("#formDiv").html(form);
                    }

                }

            });
        });

        $('#view_columns').click(function () {
            $('#exampleModalLong').modal('show');
        });
       
</script>
@endpush