@extends('layouts.app')
@section('content')
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">
    <div id="alert" style="display: none">
        <div class="alert alert-success" role="alert">
            <strong>@lang('employee.Success'):</strong><span id="message"></span>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <div class="box">
                <div class="box-header"><h3>@lang('employee.SectionManager')</h3></div>

                <div class="box-body">
                    <form action="{{ route('leader.store') }}" method="POST">
                        <input type="hidden" name="_method" value="POST">
                        <input type="hidden" name="_token" value="{{ csrf_token() }}">

                        <div class="row" style="text-align: right; margin-top: 5px;">
                            <div class="col-md-3">
                                <label for="company_name"> @lang('employee.SectionName') </label>
                            </div>
                            <div class="col-md-8">
                                {{--{{dd($companies)}}--}}
                                <select name="company_name" class="form-control">
                                    @foreach($companies as $company)
                                        <option value="{{$company->id}}"
                                                class="form-control"> {{ $company->name  }} </option>
                                    @endforeach
                                </select>
                            </div>
                        </div>

                        <div class="row" style="text-align: right; margin-top: 5px;">
                            <div class="col-md-3">
                                <label for="psi_num"> @lang('employee.psi_number') </label>
                            </div>
                            <div class="col-md-8">
                                <input type="text" id="psi_num" name="psi_num" class="form-control">
                            </div>
                        </div>
                        {{--<div class="col-md-4">--}}
                        {{--<h5 id="leaderName"  style="float: left"></h5>--}}
                        {{--</div>--}}
                        <div id="manager" class="row" style="text-align: right; margin-top: 5px;display: none">
                            <div class="col-md-3">
                                <label for="leaderName">@lang('employee.EmployeeName')</label>
                            </div>
                            <div class="col-md-8">
                                <p style="text-align: left">
                                    <b id="leaderName"> </b>
                                </p>
                            </div>
                        </div>

                        <div class="row" style="text-align: right; margin-top: 5px;">
                            <div class="col-md-3">
                                <label for="contact_num"> @lang('employee.ContactNo') </label>
                            </div>
                            <div class="col-md-8">
                                <input type="text" name="contact_num" class="form-control">
                            </div>
                        </div>

                        <div class="row" style="margin-top: 15px; text-align:right">
                            <div class="col-md-5"></div>
                            <div class="col-md-6">
                                <button type="submit" class="btn btn-primary">
                                    @lang('employee.Save')
                                </button>
                            </div>
                            <div class="col-md-4"></div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <div class="col-md-6">
            <div class="box box-info">
                <div class="box-header">
                    <h5><b>@lang('employee.SectionManagerList')</b></h5>
                </div>

                <div class="box-body">
                    <div id="sectionManager">
                        <table id="managerTable" class="table table-striped table-condensed">
                            <thead>
                            <tr>
                                <th> @lang('employee.psi_number')</th>
                                <th> @lang('employee.EmployeeName')</th>
                                <th> @lang('employee.SectionName')</th>
                                <th> @lang('employee.Actions')</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($managers as $manager)
                                <tr id="delete{{$manager->id}}">
                                    <td>{{$manager->psi_num}}</td>
                                    <td>{{$manager->manager_name}}</td>
                                    <td>{{$manager->section}}</td>
                                    <td><span class="btn btn-link delete" id="delete" data-id="{{$manager->id}}">@lang('employee.Remove')</span></td>
                                </tr>
                             @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>


@endsection
@push('scripts')

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src='https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js'></script>
<script src='https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js'></script>
<script type="text/javascript">
    $(document).ready(function () {
        var locale = $("#locale").val();
        if(locale == 'en')
        {
            $('#managerTable').DataTable({"pageLength": 3});
        }
        else{
            $('#managerTable').DataTable({
                "pageLength": 3,
                "language": {
                    "url": "//cdn.datatables.net/plug-ins/9dcbecd42ad/i18n/Japanese.json"
                }});
        }
        $("#psi_num").change(function () {
            var selected = $('#psi_num').val();
            if (selected != '') {
                $.ajax({
                    type: 'GET',
                    url: "{{ route('leader') }}",
                    dataType: 'json',
                    data: {'selected': selected},
                    success: function (data) {
                        if(data == '' || data == 0)
                        {
                            $("#manager").hide();
                        }
                        else
                        {
                            $("#leaderName").text(data);
                            $("#manager").show();
                        }

                    }
                });
            }
            else {
                $("#manager").hide();
            }
        });

        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });

        $(".delete").click(function(){
            var result = confirm("{{trans('employee.Wanttodelete')}}");
            if(result){
                var id = $(this).data('id');
                    $.ajax({
                    type: 'POST',
                    url: "{{ route('removeManager') }}",
                    dataType: 'json',
                    data: {'id': id},
                    success: function (data) {
                        $("#delete"+id).hide();
                        $("#alert").show();
                        $("#message").html('<span>{{trans('employee.SuccessfullyRemoved')}}</span>');
                        $(function () {
                            $('html, body').animate({
                                scrollTop: $("#alert").offset().top
                            }, 500);
                            setTimeout(function () {
                                $("#alert").hide(500);
                            }, 4000);
                        });
                    }
                    });
            }
        });
    });
</script>
@endpush