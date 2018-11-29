@extends('layouts.app') 
@section('content')
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">
<style>
</style>
<div class="row">
    <div class="col-md-12">
        <div class="box box-info">
            <div class="box-header with-border">
                <h3 class="box-title">@lang('employee.RecentShelfSheetActivity')</h3>
            </div>
            <div class="box-body">
                <table class="table table-condensed" id='rda_table'>
                    <thead>
                        <tr>
                            <th>@lang('employee.PSISNumber')</th>
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
                            <td>{{$rda_info->activity}}</td>
                            <td>{{$rda_info->date}}</td>
                            <td>{{$rda_info->comments}}</td>
                            <td>{{$rda_info->total_comment}}</td>
                            <td><span class=""><a href="#"><i class="far fa-comment-dots"></i></a></span>&nbsp;&nbsp;<span class=""><a href="#"><i class="fas fa-phone"></i></a></span></td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    @push('scripts')
    <script src='https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js'></script>
    <script src='https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js'></script>
    <script>
        var last_click = '';
        $(document).ready(function () {
            var locale = $("#locale").val();
            if(locale == 'en')
            {
                $('#rda_table').DataTable({"pageLength": 20});
            }
            else {
                $('#rda_table').DataTable({
                    "pageLength": 20,
                    "language": {
                        "url": "//cdn.datatables.net/plug-ins/9dcbecd42ad/i18n/Japanese.json"
                    }
                });
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
@endsection