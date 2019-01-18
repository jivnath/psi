@extends('layouts.app') @section('content')
    <style>
        div.dataTables_wrapper {
            margin: 0 auto;
        }
    </style>
    <link rel="stylesheet"
          href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">

    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="box box-info">
                    <div class="box-header with-border">
                        <h3 class="box-title">@lang('employee.EmployeeDetails')</h3>
                        <div class="box-tools pull-right">
                            <div class="btn-group">
                                <button type="button" class="btn btn-box-tool dropdown-toggle"
                                        data-toggle="dropdown">
                                    <i class="fa fa-wrench"></i>
                                </button>
                                <ul class="dropdown-menu" role="menu">
                                    <li><a href="#" class='dropdown-item'
                                           id='view_columns'>@lang('employee.CustomizeColumns')</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="box-body">
                        <div class='wrapper'>
                            <table class="table display nowrap table-condensed" id='employee_details'
                                   style="width: 100%">
                                <thead class="thead-dark">
                                <tr>
                                    {{--{{dd($all_col)}}--}}
                                    @foreach($all_col as $columns_index)
                                        <th class="sticky"
                                            style="word-wrap: break-word">{{trans('employee.'.$columns_index)}}
                                        </th>
                                    @endforeach
                                    <th class="sticky" style="word-wrap: break-word">@lang('employee.Skills')</th>
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
                    <form name="customize_form" class='form-horizontal' action="{{ route('customize.field') }}"
                          method="POST">
                        <input type="hidden" name="_method" value="POST">
                        <input type="hidden" name="_token" value="{{ csrf_token() }}">
                        <input type="hidden" name="modified_by" value="{{ \Session::get('user_id') }}">
                        <input type="hidden" name="type" value="employee">
                        @foreach($customize_columns->chunk(3) as $index=>$customize_columns_index)
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
                                                       value='{{$field->id.'~~'.$field->status}}' checked disabled>
                                                <label class="custom-control-label"
                                                       for="customCheck{{$field->id}}">{{trans('employee.'.$field->field_name)}}</label>
                                            </div>
                                        </div>
                                    @endif
                                @endforeach
                            </div>
                        @endforeach
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary"
                                    data-dismiss="modal">@lang('employee.Close')</button>
                            <button type="submit" class="btn btn-primary">@lang('employee.SaveChanges')</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
                            {{--{{dd($columns)}}--}}
@endsection @push('scripts')
    <script src='https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js'></script>
    <script src='https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js'></script>
    <script>
        $(document).ready(function () {
            var locale = $("#locale").val();

            var column = '{{json_encode($column)}}';
            column = column.replace(/&quot;/g,'"');
            column = column.replace(/&#039;/g,'"');

            var columns = JSON.parse(column);
            var col = [];
            let i;
            for(i = 0; i < columns.length; i++)
            {
                col.push({ 'data':columns[i]});
            }
            col.push({'data':'skills'})

            if (locale == 'en') {

                $('#employee_details').DataTable({
                    "scrollX": true, "scrollCollapse": true, scrollY: '50vh',
                    "processing": true,
                    "serverSide": true,
                    "ajax": {
                        "url":"<?= route('getEmployeeDetailsAjax') ?>",
                        "dataType":"json",
                        "type":"POST",
                        "data":{"_token":"<?= csrf_token() ?>"}
                    },
                    "columns":col,
                });
                $('.wrapper').css('width', (window.innerWidth - 80));
            }
            else {
                $('#employee_details').DataTable({
                    "scrollX": true, "scrollCollapse": true, scrollY: '50vh',
                    "language": {
                        "url": "//cdn.datatables.net/plug-ins/9dcbecd42ad/i18n/Japanese.json"
                    },
                    "processing": true,
                    "serverSide": true,
                    "ajax": {
                        "url":"<?= route('getEmployeeDetailsAjax') ?>",
                        "dataType":"json",
                        "type":"POST",
                        "data":{"_token":"<?= csrf_token() ?>"}
                    },
                    "columns":col,
                });
                $('.wrapper').css('width', (window.innerWidth - 80));
            }
        });
        var stickyOffset = $('.sticky').offset().top;

        $(window).scroll(function () {
            var sticky = $('.sticky'),
                scroll = $(window).scrollTop();

            if (scroll > stickyOffset) sticky.addClass('sticky-top');
            else sticky.removeClass('sticky-top');
        });
        $('#view_columns').click(function () {
            $('#exampleModalLong').modal('show');
        });
    </script>
@endpush
