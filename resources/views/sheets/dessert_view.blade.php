<style>
    .element {
        position: relative;
    }

    /*replace the content value with the
    corresponding value from the list below*/

    .element:before {
        content: "\f000";
        font-family: FontAwesome;
        font-style: normal;
        font-weight: normal;
        text-decoration: inherit;
        /*--adjust as necessary--*/
        color: #000;
        font-size: 18px;
        padding-right: 0.5em;
        position: absolute;
        top: 10px;
        left: 0;
    }
</style>
<div class="modal showComments" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title comments_header">@lang('employee.ModalHeader')</h4>
            </div>
            <div class="modal-body comments_body">
                <div class="form-group">
                    <label for="comment">@lang('employee.Comment'):</label>
                    <textarea class="form-control comment" id='comment' rows="5"></textarea>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" id='save'>@lang('employee.Save')</button>

                <button type="button" class="btn btn-default" data-dismiss="modal">@lang('employee.Close')</button>
            </div>
        </div>

    </div>
</div>

<div id="myModal" class="modal showMessege" role="dialog">
    <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-body comments_body">
                <div><span id="message"></span></div>
            </div>
            <div class="modal-footer" style="height:45px">
                <button type="button" class="btn btn-default" data-dismiss="modal">@lang('employee.Close')</button>
            </div>
        </div>
    </div>
</div>

<div class="modal showFlag" role="dialog">
    <div class="modal-dialog modal-sm">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title showFlag_header">@lang('employee.ModalHeader')</h4>
            </div>
            <div class="modal-body">
                <div class="row">

                    <div class="custom-radios" style='margin: 0 auto;'>
                        <div>
                            <input type="radio" id="color-1" name="color" value="red">
                            <label for="color-1">
                      <span>
                      </span>
                            </label>
                        </div>

                        <div>
                            <input type="radio" id="color-3" name="color" value="yellow">
                            <label for="color-3">
                      <span>
                      </span>
                            </label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default save_flag">@lang('employee.Save')</button>

                <button type="button" class="btn btn-default" data-dismiss="modal">@lang('employee.Close')</button>
            </div>
        </div>

    </div>
</div>
<table class="table table-borderd table-condensed">
    <thead class="thead-dark">
    <tr>
        <th class="sticky-top">@lang('employee.Date')</th>
        <th class="sticky-top">@lang('employee.Time')</th>
        <th class="sticky-top">@lang('employee.Number')</th>
        <th class="border_field sticky-top">@lang('employee.StaffNumber')</th>
        <th class="border_field sticky-top">@lang('employee.Country')</th>
        <th class="border_field sticky-top">@lang('employee.Name')（フリガナ）</th>
        <th class="border_field sticky-top">@lang('employee.Name')（氏名）</th>
        <th class="border_field sticky-top">@lang('employee.TelephoneNumber')</th>
        <th class="background_responsible sticky-top">@lang('employee.Responsible')</th>
        <th class="background_responsible sticky-top">@lang('employee.Confirmationthedaybefore')</th>
        <th class="background_responsible sticky-top">@lang('employee.Responsible')</th>
        <th class="background_responsible sticky-top">@lang('employee.Confirm3hoursago')</th>
        <th class="sticky-top">@lang('employee.Arrivaltimeincaseoflatearrival')</th>
        <th class="sticky-top">@lang('employee.Reasonforlatearrivalandabsence')</th>
        <th class="sticky-top">@lang('employee.CallMediumThrough')</th>
        <th class="sticky-top">@lang('employee.Comments')</th>
        <th class="sticky-top">@lang('employee.Action')</th>
    </tr>
    </thead>
    <tbody>
    @foreach($dessert as $dessert_row)
        <?php
        $i = 0;
        $total_reserved = 0;
        $total_reserved = count($dessert_row['dessert_info']);
        ?>
        @foreach($dessert_row['dessert_info'] as $key=> $info)
            <tr class="{{isset($info->flag)? 'text-'.$info->flag:''}}">
                <td class='background_global'> {{$dessert_row['date']}} </td>
                <td class='background_global'> {{substr($dessert_row['time'], 0, -3)}} </td>
                <td class='background_global'> {{$key+1}} </td>
                <td class="border_field contenteditable"
                    contenteditable="{{ ($info->conformation_day_before=='OK') ? 'false':'true'}}"
                    style="{{ ($info->conformation_day_before=='OK') ? 'border:1px solid red':'border:none'}}">{{$info->staff_no}}</td>
                <td class="border_field">{{$info->country_citizenship}}</td>
                <td class="border_field">{{$info->phoetic_kanji}}</td>
                <td class="border_field">{{$info->name}}</td>
                <td class="border_field">{{$info->cell_no}}</td>
                <td <?=($info->responsible1 == '') ? 'class="background_responsible empty cts' . $dessert_row['id'] . 'cts"' : 'class="background_responsible cts' . $dessert_row['id'] . 'cts"'?> data-usage='responsibile'>
                    <select class='responsibile' data-cts="{{$dessert_row['id']}}">
                        <option value=''>--@lang('employee.Select')--</option>
                        @foreach($userlist as $row_user)
                            <option value='{{$row_user->id}}'
                                    {{ ($info->responsible1==$row_user->id) ? 'selected':''}} data-dessert_id="{{$dessert_row['id']}}">{{$row_user->name}}</option>
                        @endforeach
                    </select>
                </td>
                <td class="background_responsible" data-usage='confirmation'>
                    <select class='confirmation'>
                        <option value=''> --@lang('employee.Select')--</option>
                        <option value='OK' {{ ($info->conformation_day_before=='OK') ? 'selected':''}}> @lang('employee.OK') </option>
                        <option value='Not OK' {{ ($info->conformation_day_before=='Not OK') ? 'selected':''}}> @lang('employee.NotOK')
                        </option>
                        <option value='No response' {{ ($info->conformation_day_before=='No response') ? 'selected':''}}>
                            @lang('employee.Noresponse')
                        </option>
                    </select>
                </td>
                <td class="background_responsible" data-usage='responsibile_1'>
                    <select class='responsibile_1'>
                        <option value=''>--@lang('employee.Select')--</option>
                        @foreach($userlist as $row_user)
                            <option value='{{$row_user->id}}' {{ ($info->responsible2==$row_user->id) ? 'selected':''}}>{{$row_user->name}}</option>
                        @endforeach
                    </select>
                </td>
                <td class="background_responsible" data-usage='confirmation_1'>
                    <select class='confirmation_1'>
                        <option value=''>--@lang('employee.Select')--</option>
                        <option value='OK' {{ ($info->conformation_3_hours_ago=='OK') ? 'selected':''}}>@lang('employee.OK')</option>
                        <option value='Not OK' {{ ($info->conformation_3_hours_ago=='Not OK') ? 'selected':''}}>@lang('employee.NotOK')
                        </option>
                        <option value='No response' {{ ($info->conformation_3_hours_ago=='No response') ? 'selected':''}}>
                            @lang('employee.Noresponse')
                        </option>
                    </select>
                </td>
                <td class="contenteditable" contenteditable="true"
                    data-usage='atlr'>{{$info->arrival_time_if_late}}</td>
                <td class="contenteditable" contenteditable="true" data-usage='rlaa'>{{$info->reason_for_late}}</td>
                <td data-usage='cmt'>
                    <select class='cmt'>
                        <option value=''>--@lang('employee.Select')--</option>
                        <option value='viber' {{ ($info->call_medium=='viber') ? 'selected':''}}> @lang('employee.viber')</option>
                        <option value='call' {{ ($info->call_medium=='call') ? 'selected':''}}> @lang('employee.call')</option>
                    </select>
                </td>
                <td>{{ \App\Models\DessertSheet::find($info->id)->comments->count()}}</td>
                <td>
                    <button type="button" class="btn btn-primary add_now"> @lang('employee.Delete') </button>
                </td>
                <td style='visibility: hidden;display: none;'></td>
                <td style='visibility: hidden;display: none;'></td>
                <td style='visibility: hidden;display: none;'></td>
                <td style='visibility: hidden;display: none;'></td>
                <td style='visibility: hidden;display: none;'></td>
                <td style='visibility: hidden;display: none;'>{{$dessert_row['id']}}</td>
                <td style='visibility: hidden;display: none;'>{{$info->id}}</td>
                <td style='visibility: hidden;display: none;'>{{$info->flag}}</td>
                <td style='visibility: hidden;display: none;'>{{$info->responsible1}}</td>
                <td style='visibility: hidden;display: none;'>{{$info->responsible2}}</td>
            </tr>
        @endforeach
        @for($i=$total_reserved+1;$i<=($dessert_row['total_require']);$i++)
            <tr>
                <td class='background_global'> {{$dessert_row['date']}} </td>
                <td class='background_global'> {{substr($dessert_row['time'],0, -3)}} </td>
                <td class='background_global'> {{$i}} </td>
                <td class="border_field contenteditable" contenteditable="true"></td>
                <td class="border_field"></td>
                <td class="border_field"></td>
                <td class="border_field"></td>
                <td class="border_field"></td>
                <td class="background_responsible cts{{$dessert_row['id']}}cts" data-usage='responsibile'>
                    <select class='responsibile' data-xaina="0" data-cts="{{$dessert_row['id']}}">
                        <option value=''>--select--</option>
                        @foreach($userlist as $row_user)
                            <option value='{{$row_user->id}}'>{{$row_user->name}}</option>
                        @endforeach
                    </select>
                </td>
                <td class="background_responsible" data-usage='confirmation'>
                    <select class='confirmation'>
                        <option value=''> --@lang('employee.Select')--</option>
                        <option value='OK'> @lang('employee.OK') </option>
                        <option value='Not OK'> @lang('employee.NotOK') </option>
                        <option value='No response'> @lang('employee.Noresponse') </option>
                    </select>
                </td>
                <td class="background_responsible contenteditable" contenteditable="true"
                    data-usage='responsibile_1'></td>
                <td class="background_responsible" data-usage='confirmation_1'>
                    <select class='confirmation_1'>
                        <option value=''> --@lang('employee.Select')--</option>
                        <option value='OK'> @lang('employee.OK')</option>
                        <option value='Not OK'>@lang('employee.NotOK')</option>
                        <option value='No response'> @lang('employee.Noresponse')</option>
                    </select>
                </td>
                <td class="contenteditable" contenteditable="true" data-usage='atlr'></td>
                <td class="contenteditable" contenteditable="true" data-usage='rlaa'></td>
                <td data-usage='cmt'>
                    <select class='cmt'>
                        <option value=''> --@lang('employee.Select')--</option>
                        <option value='viber'> @lang('employee.viber') </option>
                        <option value='call'> @lang('employee.call') </option>
                    </select>
                </td>
                <td>0</td>
                <td></td>
                <td style='visibility: hidden;display:none'></td>
                <td style='visibility: hidden;display:none'></td>
                <td style='visibility: hidden;display:none'></td>
                <td style='visibility: hidden;display:none'></td>
                <td style='visibility: hidden;display:none'></td>
                <td style='visibility: hidden;display:none'>{{$dessert_row['id']}}</td>
                <td style='visibility: hidden;display: none;'></td>
                <td style='visibility: hidden;display: none;'></td>
                <td style='visibility: hidden;display: none;'></td>
                <td style='visibility: hidden;display: none;'></td>
            </tr>
        @endfor
        @if($dessert_row['total_require']==0)
            <tr>
                <td> {{$dessert_row['date']}} </td>
                <td> {{substr($dessert_row['time'], 0, -3)}} </td>
                <td colspan='13'>@lang('employee.Notavailable'), <a
                            href="{{Route('shift.show',$dessert_row['schedule_session_id'])}}"
                            target='_blank'>@lang('employee.Addhere') </a></td>
            </tr>
        @endif
    @endforeach
    </tbody>


</table>

<input type='hidden' id='all_saved_value'>


<script>
    var down_to_top = window.innerHeight;
    $('#dessert_response').css('height', down_to_top / 1.3);
    var allowed_field = [4, 5, 6, 7, 23];
    var main_val;
    var allowed_pop_up = ['Not OK', 'No response'];
    var is_model_alert = false;
    var last_psi = '';
    var last_select = '';
    var no_of_comments = 0;
    var my_this = '';
    var confirmation_data = '';
    var responsibile_data = '';
    var type_of_field = '';
    var added_generated_value = '';
    var company_schedule_id = '';
    var click_flag_obj = '';
    var last_click_flag_obj = '';
    var last_click_value_flag = ''

    $('body').on('focus change', '[contenteditable]', function (ee) {
        const $this = $(this);
        $this.data('before', $this.html());

        console.log('preparation..');
        fixCellValue($this);

        is_model_alert = false;
        console.log($('#all_saved_value').data());
    }).on('blur', '[contenteditable]', function (e) {
        const $this = $(this);
        if ($this.data('before') !== $this.html()) {
            $this.data('before', $this.html());
            $this.trigger('change');
            main_val = $(this).html();
            var requestor = $this.data('usage');
            console.log(requestor);
            if (typeof requestor !== 'undefined' && requestor === 'responsibile') {
                $('#all_saved_value').data('8', $(this).html());
                getAllValue($this, 8, main_val);
                added_generated_value = $('#all_saved_value').data('23');
                company_schedule_id = $('#all_saved_value').data('22');
                send_it_to_update(added_generated_value, company_schedule_id, 'responsible1', main_val);
            }
            else if (typeof requestor !== 'undefined' && requestor === 'responsibile_1') {
                $('#all_saved_value').data('10', $(this).html());

                getAllValue($this, 10, main_val);
                added_generated_value = $('#all_saved_value').data('23');
                company_schedule_id = $('#all_saved_value').data('22');
                send_it_to_update(added_generated_value, company_schedule_id, 'responsible2', main_val);
            }
            else if (typeof requestor !== 'undefined' && requestor === 'atlr') {
                $('#all_saved_value').data('12', $(this).html());

                getAllValue($this, 12, main_val);
                added_generated_value = $('#all_saved_value').data('23');
                company_schedule_id = $('#all_saved_value').data('22');
                send_it_to_update(added_generated_value, company_schedule_id, 'arrival_time_if_late', main_val);
            }
            else if (typeof requestor !== 'undefined' && requestor === 'rlaa') {
                $('#all_saved_value').data('13', $(this).html());

                getAllValue($this, 13, main_val);
                added_generated_value = $('#all_saved_value').data('23');
                company_schedule_id = $('#all_saved_value').data('22');
                send_it_to_update(added_generated_value, company_schedule_id, 'reason_for_late', main_val);
            }
            else {

                $('#all_saved_value').data('3', main_val);
                added_generated_value = $('#all_saved_value').data('23');
                company_schedule_id = $('#all_saved_value').data('22');
                console.log('dessert_id ' + added_generated_value);
                $.ajax({
                    type: "GET",
                    url: "{{route('dessert.findDetails')}}",
                    data: {
                        'psi_num': main_val,
                        'dessert_id': added_generated_value,
                        'schedule_id': company_schedule_id
                    },
                    dataType: 'json',
                    success: function (data) {
                        main_logical_data = data;
                        console.log(checkProperties(data));

                        if (data.length == 0) {
                            $('#myModal').modal('show');
                            var message = "<span><h5>"+ "{{trans('employee.alreadyinuse')}}" +"</h5></span>";
                            $('#message').html(message);
                            return false;
                        }
                        if (checkProperties(data)) {
                            $('#myModal').modal('show');
                            var message = "<span><h5>"+ "{{trans('employee.NotAvailable')}}" +"</h5></span>";
                            $('#message').html(message);
                            return false;
                        }
                        if (typeof data.total_worked !== 'undefined' && data.total_worked > {{\Config('app.job_limit')}}) {
                            $('#myModal').modal('show');
                            var message = "<span><h5>"+ "{{trans('employee.Limitexceeded')}}" +"</h5></span>";
                            $('#message').html(message);
                            return false;
                        }
                        $.each(data, function (i, v) {
                            $('#all_saved_value').data(i, v);
                        });
                        findDetails($this);
                    }

                });
            }
        }
    });

    function checkProperties(obj) {
        for (var key in obj) {
            if (obj[key] !== null && obj[key] != "")
                return false;
        }
        return true;
    }

    $('.add_now').click(function () {

        click_flag_obj = $(this);
        getCell($(this));
        all_record = $('#all_saved_value').data();
        $('.showFlag_header').html('<strong>{{trans('employee.Flagfor')}} ' + $('#all_saved_value').data('6') + ' </strong>');
        $('.showFlag').modal('show');

        return;
        $.ajax({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            type: 'POST',
            url: "{{ route('dessert.store') }}",
            data: {allRecord: all_record},
            success: function (data) {
                console.log(data);

            }
        });
    });
    $('.save_flag').click(function () {

        getCell(click_flag_obj);
        all_record = $('#all_saved_value').data();
        click_value_flag = $('input[name="color"]:checked').val();
        getAllValue(click_flag_obj, 24, click_value_flag);

        if (last_click_value_flag == '') {
            last_click_value_flag = click_value_flag;
        }

        if (last_click_flag_obj !== click_value_flag) {
            last_click_flag_obj = click_flag_obj.closest('tr');
            last_click_flag_obj.removeClass('text-' + last_click_value_flag);
        }
        else {
            last_click_flag_obj = click_flag_obj.closest('tr');
        }
        last_click_flag_obj.addClass('text-' + click_value_flag);
        last_click_value_flag = click_value_flag;
        added_generated_value = $('#all_saved_value').data('23');
        company_schedule_id = $('#all_saved_value').data('22');
        send_it_to_update(added_generated_value, company_schedule_id, 'flag', click_value_flag);
        console.log(click_value_flag);
        if (click_value_flag == 'red') {
            remove_content(click_flag_obj);
            send_it_to_update(added_generated_value, company_schedule_id, 'deleted', click_value_flag);
        }
        $('.showFlag').modal('hide');
    });

    function remove_content(click_flag_obj) {
        prevent_remove = [0, 1, 2, 9, 11, 14, 16];
        click_flag_obj.closest('tr').find('td').each(
            function (i) {
                if ($.inArray(i, prevent_remove) == -1) {
                    $('#all_saved_value').data(i.toString(), '');
                    $(this).html('');
                }
            });
    }

    $('.confirmation').change(function () {
        $('#comment').val('');
        is_model_alert = '';
        confirmation_data = $(this).find('option:selected').val();
        my_this = $(this);

        getAllValue(my_this, 17, confirmation_data);
        added_generated_value = $('#all_saved_value').data('23');
        company_schedule_id = $('#all_saved_value').data('22');
        send_it_to_update(added_generated_value, company_schedule_id, 'conformation_day_before', confirmation_data);
        if ($.inArray(confirmation_data, allowed_pop_up) != -1) {
            if (is_model_alert != confirmation_data) {
                is_model_alert = confirmation_data;
                $('.modal-title').html('<strong>{{trans('employee.Confirmationthedaybefore')}} </strong> <span>{{trans('employee.for')}}</span>' + $('#all_saved_value').data('0') + ',' + $('#all_saved_value').data('1') + ',' + $('#all_saved_value').data('2'));
                $('.showComments').modal('show');
                type_of_field = 'conformation_day_before';

            }
        }
        $(this).data('confirmation_status', confirmation_data);
        $(this).closest('tr').find('td').each(
            function (i) {
                if (i == 17) {
                    $('#all_saved_value').data(i.toString(), confirmation_data);
                    $(this).html(confirmation_data);

                }
                else if (confirmation_data == 'OK' && i == 3) {
                    $(this).attr('contenteditable', 'false');
                    $(this).css('border', '1px solid red');
                }
                else if (i == 3) {
                    $(this).css('border', 'none');
                    $(this).attr('contenteditable', 'true');
                }
            });

        $('#all_saved_value').data('9', confirmation_data);

    });
    $('#save').click(function (event) {

        comment_val = $('#comment').val();
        console.log(comment_val);
        my_this.closest('tr').find('td').each(
            function (i) {
                if (i == 20) {
                    console.log(i);
                    $('#all_saved_value').data(i.toString(), comment_val);
                    $(this).html(comment_val);
                    send_it_to_update(added_generated_value, company_schedule_id, 'comments', type_of_field + '~~' + confirmation_data + '~~' + comment_val, my_this);

                }
            });
        $('.showComments').modal('hide');
    });
    $('.confirmation_1').change(function () {
        $('#comment').val('');
        is_model_alert = '';
        confirmation_data = $(this).find('option:selected').val();
        $(this).data('confirmation_status_1', confirmation_data);

        my_this = $(this);

        getAllValue(my_this, 18, confirmation_data);
        added_generated_value = $('#all_saved_value').data('23');
        company_schedule_id = $('#all_saved_value').data('22');
        send_it_to_update(added_generated_value, company_schedule_id, 'conformation_3_hours_ago', confirmation_data);

        if ($.inArray(confirmation_data, allowed_pop_up) != -1) {
            if (is_model_alert != confirmation_data) {
                is_model_alert = confirmation_data;
                $('.modal-title').html('<strong>{{trans('employee.Confirm3hoursago')}}</strong> <span>{{trans('employee.for')}}</span>' + $('#all_saved_value').data('0') + ',' + $('#all_saved_value').data('1') + ',' + $('#all_saved_value').data('2'));
                $('.showComments').modal('show');
                type_of_field = 'Conform 3 hours ago';
            }
        }
        $(this).closest('tr').find('td').each(
            function (i) {
                if (i == 18) {
                    $('#all_saved_value').data(i.toString(), confirmation_data);
                    $(this).html(confirmation_data);
                }
            });
        $('#all_saved_value').data('11', confirmation_data);

    });

    function send_it_to_update(dessert_id, s_id, field, change_value, table_obj) {
        console.log(dessert_id, s_id, field, change_value);
        $.ajax({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            type: 'POST',
            url: "{{ route('dessert.update') }}",
            data: {dessert_id: dessert_id, schedule_id: s_id, field: field, field_value: change_value},
            success: function (data) {
                if (field === 'comments') {
                    set_now(table_obj, 15, data);
                }
                return data;
            }
        });
    }

    $('.cmt').change(function () {
        var confirmation_data = $(this).find('option:selected').val();
        var my_this = $(this);
        getAllValue(my_this, 19, confirmation_data);
        added_generated_value = $('#all_saved_value').data('23');
        company_schedule_id = $('#all_saved_value').data('22');
        send_it_to_update(added_generated_value, company_schedule_id, 'call_medium', confirmation_data);
        $(this).data('cmt', confirmation_data);
        $(this).closest('tr').find('td').each(
            function (i) {
                if (i == 19) {
                    $('#all_saved_value').data(i.toString(), confirmation_data);
                    $(this).html(confirmation_data);
                }
            });
        $('#all_saved_value').data('14', confirmation_data);

    });
    $('.responsibile').change(function () {
// alert('hey');
        company_schedule_id = $(this).data('cts');
        var responsible = $(this).val();
        var xakixaina = $(this).data('xaina');
        if (xakixaina != 0) {
            if (responsible == '') {
                var data = $(this).data('xaina');
                if (data == 0) {

                }
                else {
                    $(this).parent().addClass('empty');
                }
            }
            else {
                $.ajax({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    type: "POST",
                    url: "{{route('allResponsible')}}",
                    data: {'cts_id': company_schedule_id, 'responsible': responsible},
                    dataType: "json",
                    async: true,
                    success: function (data) {
                        $(this).parent().removeClass('empty');
                        let empty = $(".empty.cts" + company_schedule_id + "cts > select");
                        empty.val(responsible);
                        empty.parent().removeClass("empty");
                    }
                });
            }
// alert(responsible);

            var confirmation_data = $(this).find('option:selected').val();
            var my_this = $(this);
            getAllValue(my_this, 25, confirmation_data);
            added_generated_value = $('#all_saved_value').data('23');
            send_it_to_update(added_generated_value, company_schedule_id, 'responsible1', confirmation_data);
            $(this).data('responsibile', confirmation_data);
            $(this).closest('tr').find('td').each(
                function (i) {
                    if (i == 25) {
                        $('#all_saved_value').data(i.toString(), confirmation_data);
                        $(this).html(confirmation_data);
                    }
                });
            $('#all_saved_value').data('8', confirmation_data);
        }
    });
    $('.responsibile_1').change(function () {
        var confirmation_data = $(this).find('option:selected').val();
        var my_this = $(this);
        getAllValue(my_this, 26, confirmation_data);
        added_generated_value = $('#all_saved_value').data('23');
        company_schedule_id = $('#all_saved_value').data('22');
        send_it_to_update(added_generated_value, company_schedule_id, 'responsible2', confirmation_data);
        $(this).data('responsibile_1', confirmation_data);
        $(this).closest('tr').find('td').each(
            function (i) {
                if (i == 26) {
                    $('#all_saved_value').data(i.toString(), confirmation_data);
                    $(this).html(confirmation_data);
                }
            });
        $('#all_saved_value').data('10', confirmation_data);

    });

    function set_now(my_this, index, value) {
        my_this.closest('tr').find('td').each(
            function (i) {
                if (i === parseInt(index)) {
                    $('#all_saved_value').data(i.toString(), parseInt(value));
                    $(this).html(value);
                }
            });
    }

    function findDetails(obj) {
        obj.closest('tr').find('td').each(
            function (i) {
                if ($.inArray(i, allowed_field) != -1) {
                    console.log(i);
                    $(this).html($('#all_saved_value').data(i.toString()));
                    if (i == 23) {
                        $(this).data('dessert_id', $('#all_saved_value').data(i.toString()));
                    }
                }
                if (i = 8) {
                    // var cts = $(this).children('select').data('cts');
                    $(this).addClass('empty');
                    $(this).children('select').data('xaina', 1);
                }
                if ($.inArray(i, [0, 1, 2]) != -1) {

                    $('#all_saved_value').data(i.toString(), $(this).html());
                }
            });
    }

    function getAllValue(my_this, index, val) {
//check
        my_this.closest('tr').find('td').each(
            function (i) {
                if (i == index) {
                    $('#all_saved_value').data(i.toString(), val);
                }
                else {
                    $('#all_saved_value').data(i.toString(), $(this).html());
                }
            });
//end
    }

    function fixCellValue(obj) {
        $('.comment').val('');
        obj.closest('tr').find('td').each(
            function (i) {
                if ($.inArray(i, [9, 11, 14]) == -1) {
                    $('#all_saved_value').removeData('"' + i + '"');
                    $('#all_saved_value').data(i.toString(), $(this).html());
                }
                else {
                    if (i == 9) {
                        console.log($(this).data('confirmation_status'));
                        $('#all_saved_value').data(i.toString(), $(this).data('confirmation_status'));
                    }
                    else if (i == 11) {
                        console.log($(this).data('confirmation_status_1'));
                        $('#all_saved_value').data(i.toString(), $(this).data('confirmation_status_1'));
                    }
                    else if (i == 14) {
                        console.log($(this).data('cmt'));
                        $('#all_saved_value').data(i.toString(), $(this).data('cmt'));
                    }
                }
            });
    }

    function getCell(obj) {


        obj.closest('tr').find('td').each(
            function (i) {
                $('#all_saved_value').data(i.toString(), $(this).html());
            });
    }


    $(window).scroll(function () {
        var stickyOffset = $('thead').offset().top
        var sticky = $("thead th "),
            scroll = $(window).scrollTop();

// if (scroll > stickyOffset) sticky.addClass('sticky-top');
// else sticky.removeClass('sticky-top');
    });

    $(document).on('change', '.responsible', function () {
        alert('hey');
    });
</script>