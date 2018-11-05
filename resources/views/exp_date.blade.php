@extends('layouts.app') 
@section('content')
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">
<style>
</style>
<div class="row">
    <div class="col-md-12">
        <div class="box box-info">
            <div class="box-header with-border">
                <h3 class="box-title">@lang('dashboard.cardExpire')</h3>
            </div>
            <div class="box-body">
                <table class="table" id='expire_info'>
                    <thead>
                        <tr>
                            <th>@lang('dashboard.psisno')</th>
                            <th>@lang('dashboard.name')</th>
                            <th>@lang('dashboard.cellno')</th>
                            <th>@lang('dashboard.expiredate') </th>
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
                                                            class="far fa-comment-dots"></i></a></span>&nbsp;&nbsp;
                                <span class=""><a href="#"><i class="fas fa-phone"></i></a></span>
                            </td>
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
            $('#expire_info').DataTable({"pageLength": 20});
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