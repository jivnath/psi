@extends('layouts.app') @section('content')
    <style>
        div.dataTables_wrapper {
            margin: 0 auto;
        }
        thead th{
            color: white;
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
                                <thead>
                                <tr class="firstHead">
                                    @if($a > 0)
                                        <th class="sticky" style="word-wrap: break-word; border-right:2px solid black; border-bottom:1px solid black" colspan="{{$a}}">@lang('employee.basicInfo')</th>
                                    @endif
                                    @if($b > 0)
                                        <th class="sticky" style="word-wrap: break-word; border-right:2px solid black; border-bottom:1px solid black" colspan="{{$b}}">@lang('employee.contacts')</th>
                                    @endif
                                    @if($c > 0)
                                        <th class="sticky" style="word-wrap: break-word; border-right:2px solid black; border-bottom:1px solid black" colspan="{{$c}}">@lang('employee.residence')</th>
                                    @endif
                                    @if($d > 0)
                                        <th class="sticky" style="word-wrap: break-word; border-right:2px solid black; border-bottom:1px solid black" colspan="{{$d}}">@lang('employee.work')</th>
                                    @endif
                                    @if($e > 0)
                                        <th class="sticky" style="word-wrap: break-word; border-right:2px solid black; border-bottom:1px solid black" colspan="{{$e}}">@lang('employee.school')</th>
                                    @endif
                                    @if($f > 0)
                                        <th class="sticky" style="word-wrap: break-word; border-right:2px solid black; border-bottom:1px solid black" colspan="{{$f}}">@lang('employee.bank')</th>
                                    @endif
                                    @if($g > 0)
                                        <th class="sticky" style="word-wrap: break-word; border-bottom:1px solid black" colspan="{{$g}}">@lang('employee.others')</th>
                                    @endif
                                    <th style="word-wrap: break-word; border-bottom:1px solid black"></th>
                                </tr>
                                <tr class="secondHead">
                                    @foreach($column as $columns_index)
                                        <th class="sticky"
                                            style="word-wrap: break-word; border-top:1px solid black; border-right:1px solid black; border-bottom:1px solid black">{{trans('employee.'.$columns_index)}}
                                        </th>
                                    @endforeach
                                    <th class="sticky" style="word-wrap: break-word; border-top:1px solid black; border-bottom:1px solid black">@lang('employee.Skills')</th>

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
                        <h5><u>@lang('employee.basicInfo')</u></h5>
                        @foreach($basicInfo->chunk(3) as $index=>$customize_columns_index)
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
                        @foreach($contacts->chunk(3) as $index=>$customize_columns_index)
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
                    @foreach($residence->chunk(3) as $index=>$customize_columns_index)
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
                    @foreach($work->chunk(3) as $index=>$customize_columns_index)
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
                        @foreach($school->chunk(3) as $index=>$customize_columns_index)
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
                        @foreach($bank->chunk(3) as $index=>$customize_columns_index)
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
                        @foreach($other->chunk(3) as $index=>$customize_columns_index)
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
            column = column.replace(/&quot;/g, '"');
            column = column.replace(/&#039;/g, '"');

            var columns = JSON.parse(column);
            var col = [];
            let i;
            for (i = 0; i < columns.length; i++) {
                col.push({'data': columns[i]});
            }
            col.push({'data': 'skills'})

            if (locale == 'en') {

                $('#employee_details').DataTable({
                    "scrollX": true, "scrollCollapse": true, scrollY: '50vh',
                    "processing": true,
                    "serverSide": true,
                    "ajax": {
                        "url": "<?= route('getEmployeeDetailsAjax') ?>",
                        "dataType": "json",
                        "type": "POST",
                        "data": {"_token": "<?= csrf_token() ?>"}
                    },
                    "columns": col,
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
                        "url": "<?= route('getEmployeeDetailsAjax') ?>",
                        "dataType": "json",
                        "type": "POST",
                        "data": {"_token": "<?= csrf_token() ?>"}
                    },
                    "columns": col,
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
        $(document).ajaxComplete( function () {
            $(".firstHead th").css("font-size", "1.2em");
            $( "tr td:nth-child({{$a}})" ).css( "border-right", "2px solid black" );
            $( ".secondHead th:nth-child({{$a}})" ).css( "border-right", "2px solid black" );
            $( "tr td:nth-child({{$a+$b}})" ).css( "border-right", "2px solid black" );
            $( ".secondHead th:nth-child({{$a+$b}})" ).css( "border-right", "2px solid black" );
            $( "tr td:nth-child({{$a+$b+$c}})" ).css( "border-right", "2px solid black" );
            $( ".secondHead th:nth-child({{$a+$b+$c}})" ).css( "border-right", "2px solid black" );
            $( "tr td:nth-child({{$a+$b+$c+$d}})" ).css( "border-right", "2px solid black" );
            $( ".secondHead th:nth-child({{$a+$b+$c+$d}})" ).css( "border-right", "2px solid black" );
            $( "tr td:nth-child({{$a+$b+$c+$d+$e}})" ).css( "border-right", "2px solid black" );
            $( ".secondHead th:nth-child({{$a+$b+$c+$d+$e}})" ).css( "border-right", "2px solid black" );
            $( "tr td:nth-child({{$a+$b+$c+$d+$e+$f}})" ).css( "border-right", "2px solid black" );
            $( ".secondHead th:nth-child({{$a+$b+$c+$d+$e+$f}})" ).css( "border-right", "2px solid black" );
            $( "tr td:nth-child({{$a+$b+$c+$d+$e+$f+$g}})" ).css( "border-right", "2px solid white" );
            $("th").css("background", "#0d6aad");
            $("tr td").css("border-right", "1px solid black");
            $("tr td:last-child").css("border-right", "none");
        });
        $('#view_columns').click(function () {
            $('#exampleModalLong').modal('show');
        });
    </script>
@endpush
