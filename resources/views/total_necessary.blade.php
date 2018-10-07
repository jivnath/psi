@extends('layouts.app') 
@section('content')
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">
<style>
</style>
<div class="col-md-12">
    <div class="box box-info">
        <div class="box-header with-border">
            <h3 class="box-title">@lang('dashboard.tn')</h3>

        </div>
        <div class="box-body">
            <table class="table table-striped table-bordered" id='tn_table'>
                <thead>
                    <tr>
                        <th>Section</th>
                        <th>Sub-section</th>
                        <th>Date</th>
                        <th>Time</th>
                        <th>Total</th>
                        <th>Necessary</th>
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
    </div>
</div>
</div>
@push('scripts')
<script src='https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js'></script>
<script src='https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js'></script>
<script>
    var last_click = '';
        $(document).ready(function () {
            $('#tn_table').DataTable({"pageLength": 3});
            $('#expire_info').DataTable({"pageLength": 3});
            $('#rda_table').DataTable({"pageLength": 3});
            $('#alert_viber').DataTable({"pageLength": 4});
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