@extends('layouts.app')

@section('content')
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">
    <style>

    </style>
    <section class="content">
        @php
            $role_id = \Session::get('user_role_id');
        @endphp
        <div class="row">
            <div class="col-md-3 col-sm-6 col-xs-12">
                <div class="info-box">
                    <span class="info-box-icon bg-aqua"><i class="ion ion-checkmark"></i></span>

                    <div class="info-box-content">
                        <span class="info-box-text">@lang('nav.CONFIRMATION')</span>
                        <span class="info-box-number">{{round($confirmation_per,2)}}%</span>
                    </div>
                    <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
            </div>
            <!-- /.col -->
            <!-- /.col -->
            <div class="col-md-9 col-sm-6 col-xs-12">
                <div class="info-box">
                    <span class="info-box-icon bg-yellow"><i class="ion ion-ios-people-outline"></i></span>

                    <div class="info-box-content">
                        <span class="info-box-text">@lang('nav.CONFIRMEDSHIFT')</span>
                        <div class="row">
                            <div class="col-sm-4 border-right">
                                <div class="description-block" style='margin: 8px -10px!important'>
                                    <h5 class="description-header"> {{$employee_summery[0]->total_count.'/'.$employee_summery_count[0]->total_count}}</h5>
                                    <span class="description-text" style='text-transform: none;'>@lang('nav.Tomorrow')</span>
                                </div>
                                <!-- /.description-block -->
                            </div>
                            <!-- /.col -->
                            <div class="col-sm-4 border-right">
                                <div class="description-block" style="margin: 8px -10px!important;">
                                    <h5 class="description-header"> {{$employee_summery[1]->total_count.'/'.$employee_summery_count[1]->total_count}}</h5>
                                    <span class="description-text" style='text-transform: none;'>@lang('nav.TomorrowToWeek')</span>
                                </div>
                                <!-- /.description-block -->
                            </div>
                            <!-- /.col -->
                            <div class="col-sm-4">
                                <div class="description-block" style="margin: 8px -10px!important;">
                                    <h5 class="description-header">{{$employee_summery[2]->total_count.'/'.$employee_summery_count[2]->total_count}}</h5>
                                    <span class="description-text"
                                          style='text-transform: none;'>@lang('nav.TomorrowToMonth')</span>
                                </div>
                                <!-- /.description-block -->
                            </div>
                            <!-- /.col -->
                        </div>
                    </div>
                    <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
            </div>
            <!-- /.col -->
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="box box-info">
                    <div class="box-header with-border" style="padding-top:2px;padding-bottom: 2px">
                        <h3 class="box-title">@lang('dashboard.cardExpire')</h3>
                    </div>
                    <div class="box-body" style="padding-top:2px;padding-bottom: 2px">
                        <table class="table table-striped" id='expire_info'>
                            <thead>
                            <tr>
                                <th>@lang('dashboard.psisno')</th>
                                <th>@lang('dashboard.name')</th>
                                <th>@lang('dashboard.cellno')</th>
                                <th>@lang('dashboard.expiredate')   </th>
                                <th>@lang('dashboard.action')</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach ($dashboard as $card)
                                <tr>
                                    <td>{{$card->psi_number}}</td>
                                    <td>{{$card->name}}</td>
                                    <td>{{$card->cell_no}}</td>
                                    <td>{{$card->residence_card_exp_date}}</td>
                                    <td class='viber_messessing'><span class=""><a href="#"><i
                                                        class="far fa-comment-dots"></i></a></span>&nbsp;&nbsp;<span
                                                class=""><a href="#"><i class="fas fa-phone"></i></a></span></td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                    <div class="box-footer text-center" style="padding-top:2px;padding-bottom: 2px">
                        <a href="{{route('exp_date')}}" class="uppercase">@lang('employee.ViewAll')</a>
                    </div>
                </div>
            </div>
            @if($role_id != 5)
            <div class="col-md-6">
                <div class="box box-info">
                    <div class="box-header with-border" style="padding-top:2px;padding-bottom: 2px">
                        <h3 class="box-title">@lang('employee.TotalNecessary')</h3>
                    </div>
                    <div class="box-body" style="padding-top:2px;padding-bottom: 2px">
                        <table class="table table-striped table-bordered" id='tn_table'>
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
                            @foreach ($total_ncessary_data as $tn_data)
                                <tr>
                                    <td>{{$tn_data->master_main_company}}</td>
                                    <td>{{$tn_data->name}}</td>
                                    <td>{{$tn_data->DATE}}</td>
                                    <td>{{$tn_data->time}}</td>
                                    <td>{{$tn_data->total_used}}</td>
                                    <td>{{$tn_data->total_require}}</td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                    <div class="box-footer text-center" style="padding-top:2px;padding-bottom: 2px">
                        <a href="{{route('total_necessary')}}" class="uppercase">@lang('employee.ViewAll')</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="box box-info">
                    <div class="box-header with-border" style="padding-top:2px;padding-bottom: 2px">
                        <h3 class="box-title">@lang('employee.RecentShelfSheetActivity')</h3>
                    </div>
                    <div class="box-body" style="padding-top:2px;padding-bottom: 2px">
                        <table class="table table-striped" id='rda_table'>
                            <thead>
                            <tr>
                                <th>@lang('employee.PSISNumber')</th>
                                {{--<th>@lang('employee.Responsible')</th>--}}
                                <th>@lang('employee.Activity')</th>
                                <th>@lang('employee.Date')</th>
                                <th>@lang('employee.Comment')</th>
                                <th>@lang('employee.TotalComments')</th>
                                <th>@lang('employee.Action')</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach ($recent_dessert_activity as $rda_info)
                                <tr>
                                    <td>{{$rda_info->staff_no}}</td>
                                    {{--<td>{{$rda_info->operator}}</td>--}}
                                    <td>{{$rda_info->activity}}</td>
                                    <td>{{$rda_info->date}}</td>
                                    <td>{{$rda_info->comments}}</td>
                                    <td>{{$rda_info->total_comment}}</td>
                                    <td><span class=""><a href="#"><i class="far fa-comment-dots"></i></a></span>&nbsp;&nbsp;<span
                                                class=""><a href="#"><i class="fas fa-phone"></i></a></span></td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                    <div class="box-footer text-center" style="padding-top:2px;padding-bottom: 2px">
                        <a href="{{route('recent_sheet')}}" class="uppercase">@lang('employee.ViewAll')</a>
                    </div>
                </div>
            </div>
            @endif
            <div class="col-md-6">
                <div class="box box-info">
                    <div class="box-header with-border" style="padding-top:2px;padding-bottom: 2px">
                        <h3 class="box-title">@lang('employee.ViberAlertSummary')</h3>
                    </div>
                    <div class="box-body" style="padding-top:2px;padding-bottom: 2px">
                        <table class="table table-striped" id='alert_viber'>
                            <thead>
                            <tr>
                                <th>@lang('employee.MessageType')</th>
                                <th>@lang('employee.Sent')</th>
                                <th>@lang('employee.ResponseCount')</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>Residence card expiry</td>
                                <td>2</td>
                                <td>3</td>
                            </tr>
                            <tr>
                                <td>One day before</td>
                                <td>1</td>
                                <td>2</td>
                            </tr>
                            <tr>
                                <td>3 hour before</td>
                                <td>3</td>
                                <td>5</td>
                            </tr>
                            <tr>
                                <td>Arrival confirmation</td>
                                <td>1</td>
                                <td>5</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="box-footer text-center" style="padding-top:2px;padding-bottom: 2px">
                        <a href="{{route('alert_summary')}}" class="uppercase">@lang('employee.ViewAll')</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    @include('layouts.modal',['modal_id'=>'card_expiry','modal_title'=>'Viber Notification'])
@endsection
@push('scripts')
    <script src='https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js'></script>
    <script src='https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js'></script>
    <script>
        var last_click = '';
        $(document).ready(function () {
            var locale = $("#locale").val();
            if(locale == 'en'){
                $('#tn_table').DataTable({"pageLength": 3});
                $('#expire_info').DataTable({"pageLength": 3});
                $('#rda_table').DataTable({"pageLength": 3});
                $('#alert_viber').DataTable({"pageLength": 4});
            }
            else
            {
                $('#tn_table').DataTable({
                    "pageLength": 3,
                    "language": {
                        "url": "//cdn.datatables.net/plug-ins/9dcbecd42ad/i18n/Japanese.json"
                    }});
                $('#expire_info').DataTable({
                    "pageLength": 3,
                    "language": {
                        "url": "//cdn.datatables.net/plug-ins/9dcbecd42ad/i18n/Japanese.json"
                    }});
                $('#rda_table').DataTable({
                    "pageLength": 3,
                    "language": {
                        "url": "//cdn.datatables.net/plug-ins/9dcbecd42ad/i18n/Japanese.json"
                    }});
                $('#alert_viber').DataTable({
                    "pageLength": 4,
                    "language": {
                        "url": "//cdn.datatables.net/plug-ins/9dcbecd42ad/i18n/Japanese.json"
                    }});
            }
        });
        $('.viber_messessing').on('click', function (e) {
            $('#card_expiry').modal('show');
            $("#card_expiry").appendTo("body");
            if (last_click !== '') {
                last_click.removeClass('text-danger');
                last_click = $(this).closest('tr');
                last_click.addClass('text-danger');
            }
            else {
                last_click = $(this).closest('tr');
                last_click.addClass('text-danger');
            }
            $('.profile-username').html(last_click.find("td:eq(1)").text());
        });
        $('.send_it_now').on('click', function () {
            var comments = $('#comment').val();
            var psis_no = last_click.find("td:eq(0)").text();
            console.log(psis_no);
            console.log(comments);
            $('#comment').val('');
        });
        $(document).on('click', '#messags_view', function () {
            char_class = $('#message_send_view').attr('class');
            char_class = $('#chat_view').attr('class');
            $('#message_send_view').removeClass();
            $('#message_send_view').addClass('col-sm-4');
            $('#chat_view').show('100');
        });
        $('#card_expiry').on('hidden.bs.modal', function () {
            $('#chat_view').hide();
            $('#message_send_view').removeClass();
            $('#message_send_view').addClass('col-sm-9');
        });
    </script>

@endpush