@extends('layouts.app')
@section('content')
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">
    <style>
    </style>
    <div class="col-md-12">
        <div class="box box-info">
            <div class="box-header with-border">
                <h3 class="box-title">@lang('employee.TotalNecessary')</h3>

            </div>
            <div class="box-body">
                <table class="table table-bordered" id='tn_table'>
                    <thead>
                    <tr>
                        <th>@lang('employee.Section')</th>
                        <th>@lang('employee.SubSection')</th>
                        <th>@lang('employee.Date')</th>
                        <th>@lang('employee.Time')</th>
                        <th>@lang('employee.Total')</th>
                        <th>@lang('employee.Necessary')</th>
                    </tr>
                    </thead>
                    <tbody>

                    </tbody>
                </table>
            </div>
        </div>
    </div>
    </div>
    @push('scripts')
        <script src='https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js'></script>
        <script src='https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js'></script>
        <script>
            $(document).ready(function(){
                alert($('<div>{{trans('employee.Date')}}</div>').text());
            });
        </script>


    @endpush
@endsection