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
        {{--@include('layouts.duplicate_employees')--}}
        <div class="row">
            <div class="col-md-12">
                <div class="box box-info">
                    <div class="box-header with-border" style="padding-top:2px;padding-bottom: 2px">

                        <h3 class="box-title"> @lang('employee.hotelEmployeesList')<a
                                    href="{{ route('hotels.upload') }}" class="btn btn-link"
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
                                <tr>
                                    @foreach($data as $datum)
                                        <th class="" style="word-wrap: break-word">{{(trans('employee.'.$datum))}}</th>
                                    @endforeach
                                </tr>
                                </thead>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

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
                    <form name="customize_form" class='form-horizontal' action="{{ route('customize_hotel_columns') }}"
                          method="POST">
                        <input type="hidden" name="_method" value="POST">
                        <input type="hidden" name="_token" value="{{ csrf_token() }}">
                        <input type="hidden" name="type"
                               value="employee"> @foreach($all_columns->chunk(3) as $index=>$customize_columns_index)
                            <div class="form-row">
                                @foreach($customize_columns_index as $field)
                                    @if($field->field_name!='employee_number')
                                        <div class="col-md-4 mb-3">
                                            <div class="custom-control custom-checkbox">
                                                <input type="checkbox" class="custom-control-input"
                                                       id="customCheck{{$field->id}}" name='customized[]' value='{{$field->field_name}}' {{($field->status=='y')?'checked':''}}>
                                                <label class="custom-control-label"
                                                       for="customCheck{{$field->id}}">{{trans('employee.'.$field->field_name)}}</label>
                                            </div>
                                        </div>
                                    @else
                                        <div class="col-md-4 mb-3">
                                            <div class="custom-control custom-checkbox">
                                                <input type="checkbox" class="custom-control-input"
                                                       id="customCheck{{$field->id}}" name='customized[]' value='{{$field->field_name}}' checked onclick="return false;">
                                                <label class="custom-control-label"
                                                       for="customCheck{{$field->id}}">{{trans('employee.'.$field->field_name)}}</label>
                                            </div>
                                        </div>
                                    @endif
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

        $(document).ready(function () {
            $(".example2-grid-error").html("");
            var column = '{{json_encode($data)}}';
            column = column.replace(/&quot;/g, '"');
            column = column.replace(/&#039;/g, '"');
            var columns = JSON.parse(column);

            var col = [];
            let i;
            for (i = 0; i < columns.length; i++) {
                if (columns[i] != 'operational_status' && columns[i] != 'employee_number' && columns[i] != 'gender' && columns[i] != 'viber_install' && columns[i] != 'hourly_employee' && columns[i] != 'for_work')
                    col.push({'data': columns[i], 'class': 'hotels contenteditable ' + columns[i]});
                else
                    col.push({'data': columns[i]});

            }
            var locale = $("#locale").val();
            if (locale == 'en') {
                var dataTable = $('#example2').DataTable({
                    "processing": true,
                    "serverSide": true,
                    "pagingType": "full_numbers",
                    "serverSide": true,
                    "ajax": {
                        "url": "<?= route('getHotelEmployeeAjax') ?>",
                        "dataType": "json",
                        "type": "POST",
                        "data": {"_token": "<?= csrf_token() ?>"}
                    },
                    "columns": col,
                });
            }
            else {
                var dataTable = $('#example2').DataTable({
                    "processing": true,
                    "language": {
                        "url": "//cdn.datatables.net/plug-ins/9dcbecd42ad/i18n/Japanese.json"
                    },
                    "serverSide": true,
                    "pagingType": "full_numbers",
                    "serverSide": true,
                    "ajax": {
                        "url": "<?= route('getHotelEmployeeAjax') ?>",
                        "dataType": "json",
                        "type": "POST",
                        "data": {"_token": "<?= csrf_token() ?>"}
                    },
                    "columns": col,
                });
            }
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

        $(document).on('change', '.gender', function () {
            var sex = $(this).val();
            var no = $(this).attr('data-psi_data');
            $.ajax({
                type: "POST",
                url: "{{route('updateHotelGender')}}",
                data: {'sex': sex, 'no': no, "_token": "{{ csrf_token() }}"},
                dataType: "json",
                async: true,
                success: function (data) {

                }
            });
        });

        $(document).on('change', '.viber_install', function () {
            var viber = $(this).val();
            var no = $(this).attr('data-psi_data');
            $.ajax({
                type: "POST",
                url: "{{route('updateHotelViberInstall')}}",
                data: {'viber': viber, 'no': no, "_token": "{{ csrf_token() }}"},
                dataType: "json",
                async: true,
                success: function (data) {

                }
            });
        });

        $(document).on('change', '.for_work', function () {
            var work = $(this).val();
            var no = $(this).attr('data-psi_data');
            $.ajax({
                type: "POST",
                url: "{{route('updateHotelForWork')}}",
                data: {'work': work, 'no': no, "_token": "{{ csrf_token() }}"},
                dataType: "json",
                async: true,
                success: function (data) {

                }
            });
        });

        $(document).on('change', '.operational_status', function () {
            var status = $(this).val();
            var no = $(this).attr('data-psi_data');
            $.ajax({
                type: "POST",
                url: "{{route('updateHotelOperationalStatus')}}",
                data: {'status': status, 'no': no, "_token": "{{ csrf_token() }}"},
                dataType: "json",
                async: true,
                success: function (data) {

                }
            });
        });

        $(document).on('change', '.hourly_employee', function () {
            var hourly = $(this).val();
            var no = $(this).attr('data-psi_data');
            $.ajax({
                type: "POST",
                url: "{{route('updateHotelHourlyEmployee')}}",
                data: {'hourly': hourly, 'no': no, "_token": "{{ csrf_token() }}"},
                dataType: "json",
                async: true,
                success: function (data) {

                }
            });
        });
    </script>
@endpush