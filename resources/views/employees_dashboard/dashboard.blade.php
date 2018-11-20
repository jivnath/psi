@extends('layouts.app')
@section('content')
    <link rel="stylesheet" href="{{asset('bower_components/fullcalendar/dist/fullcalendar.min.css')}}">
    <link rel="stylesheet" href="{{asset('bower_components/fullcalendar/dist/fullcalendar.print.min.css')}}"
          media="print">
    <style>
        .fc-scroller {
            overflow-x: visible !Important;
        }
    </style>
    @php $primary = \Session::get('employee_primary_company'); @endphp

    <section class="content box box-success">
        <div class="row">
            <div class="col-md-4">
                <div id="sub_section_name"></div>
                <div id="ledgend">
                    <ul class="list-inline" style="margin-top:10%">
                        <li class="list-inline-item">
                            <div class="input-color">
                                <div class="color-box" style="background-color:#f5b1ae;width:10px;height:10px;display:inline-block;"></div>
                                <label for="red"><b>@lang('employee.Available').</b></label>
                            </div>
                        </li>
                        <li class="list-inline-item"  style="margin-left:2%">
                            <div class="input-color">
                                <div class="color-box" style="background-color: #74c673;width:10px;height:10px;display:inline-block;"></div>
                                <label for="red"><b>@lang('employee.Booked').</b></label>
                            </div>
                        </li>
                        <li class="list-inline-item"  style="margin-left:2%">
                            <div class="input-color">
                                <div class="color-box" style="background-color: #9faee9;width:10px;height:10px;display:inline-block;"></div>
                                <label for="red"><b>@lang('employee.Worked').</b></label>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <div class="form-group" style="margin-top: 15px;">
                    <label for="subsection"><h5>@lang('employee.SubSection')</h5></label>
                    <select class="form-control input-shorter" id="companies">
                        @foreach($companies as $company)
                            <option
                                <?=($company->id == $primary) ? 'selected="selected"' : ''?> name="{{$company->name}}"
                                value="{{$company->id}}">{{$company->name}}</option>
                        @endforeach
                    </select>
                </div>
            </div>
        </div>
        <div id="loadingDiv" style="display: none"><h5><b>@lang('employee.LoadingPleaseWait')</b></h5></div>
        <div class="row" id="calendarDiv">
            <div class="col-md-12">
                <div class="box box-primary">
                    <div class="box-body no-padding">
                        <!-- THE CALENDAR -->
                        <div id="calendar"></div>
                    </div>
                    <!-- /.box-body -->
                </div>
                <!-- /. box -->
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->
    </section>
    <div class="modal" id="ModalAdd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <form class="form-horizontal">
                    {{--@csrf--}}
                    <div class="modal-header">
                        <h4 class="modal-title" id="myModalLabel"></h4>
                        <p id="remaining" style="display: none" class="pull-right"></p>
                    </div>
                    <div class="modal-body">

                        <div class="form-group">
                            <label for="color" class="col-sm-2 control-label">@lang('employee.Shifts')</label>
                            <label id="message" style="display:none;" for="message" class="pull-right"></label>
                            <div class="col-sm-12">
                                <select name="shifts" class="form-control" id="shifts" required>

                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button id="submit" class="btn btn-primary" disabled> @lang('employee.Apply')</button>
                        <button type="button" class="btn btn-default" data-number="close_hamro_afanai">@lang('employee.Close')</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="modal" id="ModalShift" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="myModalLabel">@lang('employee.WorkedShifts')</h4>
                </div>
                <div id="allShifts" class="modal-body">

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">@lang('employee.Close')</button>
                </div>
            </div>
        </div>
    </div>

@endsection
@push('scripts')
    <!-- fullCalendar -->
    <script src="{{asset('bower_components/moment/moment.js')}}"></script>
    <script src="{{asset('bower_components/fullcalendar/dist/fullcalendar.min.js')}}"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.9.0/locale/ja.js"></script>
    <script>
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        var last_click = '';
        $(document).ready(function () {

            var locale = $("#locale").val();
            // alert(locale);
            // if()
            // var initialLocaleCode = 'ja';
            /* initialize the calendar
                  -----------------------------------------------------------------*/
            //Date for the calendar events (dummy data)

            var date = new Date()
            var d = date.getDate(),
                m = date.getMonth(),
                y = date.getFullYear()
            $('#calendar').fullCalendar({
                header: {
                    left: 'prev, today',
                    center: 'title',
                    right: 'next, today'
                },
                locale: locale,
                buttonText: {
                    today: 'today',
                    month: 'month',
                    week: 'week',
                    day: 'day'
                },
                eventLimit: true, // allow "more" link when too many events
                selectable: true,
                selectHelper: true,
                select: function (start, end) {
                    $('#ModalAdd #start').val(moment(start).format('YYYY-MM-DD HH:mm:ss'));
                    $('#ModalAdd #end').val(moment(end).format('YYYY-MM-DD HH:mm:ss'));
                    // $('#ModalAdd').modal('show');
                },
                eventRender: function (event, element) {
                    element.bind('dblclick', function () {
                        if (event.old == 1) {
                            $('#allShifts').html('');
                            var start = moment(event.start).format('Y-MM-DD');
                            $.ajax({
                                type: "GET",
                                dataType: 'json',
                                async: true,
                                url: '{{route("getWorkedShift")}}',
                                data: {'date': start, 'company': event.companyId},
                                success: function (data) {
                                    let i;
                                    for (i = 0; i < data.length; i++) {
                                        var shift = '<b>' + (i + 1) + '.  </b>' + data[i].start_time + ' - ' + data[i].end_time + '<br>';
                                        $("#allShifts").append(shift);
                                    }
                                    $('#ModalShift').modal('show');
                                }
                            });
                        }
                    });
                },
                eventDrop: function (event, delta, revertFunc) { // si changement de position

                    edit(event);

                },
                dayClick: function (date, allDay) {
                    var today = $('#calendar').fullCalendar('getDate');
                    var newdate = moment(today).format('YYYY-MM-DD');
                    // alert(newdate);
                    let i = 0;
                    $('#calendar').fullCalendar('clientEvents', function (event) {

                        if (moment(date).format('YYYY-MM-DD') == moment(event.start).format('YYYY-MM-DD') && moment(date).format('YYYY-MM-DD') >= newdate) {
                            i = 1;
                        }
                    });
                    // alert(i);
                    if (i === 1) {
                        // cell.css("background-color", "red");
                        // alert(i);
                        $("#submit").prop('disabled', true);
                        $("#message").hide();
                        var company = $("#companies").val();
                        $('#ModalAdd').show();
                        $.ajax({
                            type: 'GET',
                            url: '{{route('getCompanyName')}}',
                            data: {'company': company, 'date': moment(date).format('YYYY-MM-DD')},
                            async: true,
                            dataType: 'json',
                            success: function (data) {
                                // alert(data);
                                $('#remaining').html('<b id="remainingHours" name="' + data["hours"] + '">@lang('employee.RemainingHours'): ' + data["hours"] + '</b>');
                                $('#remaining').show();
                                $('#myModalLabel').html(data['name'] + '<h6>(' + moment(date).format('YYYY-MM-DD') + ')</h6>');

                            }
                        });

                        $('#myModalLabel').text(moment(date).format('YYYY-MM-DD'));
                        $('#shifts').html('');
                        var select = '<option value="0">--@lang('employee.ChooseShift')--</option>';
                        $('#shifts').append(select);
                        $('#calendar').fullCalendar('clientEvents', function (event) {

                            if (moment(date).format('YYYY-MM-DD') == moment(event.start).format('YYYY-MM-DD')) {
                                if (event.selected == 'no') {
                                    $('#shifts').append('<option data-Hours="' + event.hours + '" value="' + event.id + '">' + event.title + '</option>')
                                }
                            }
                        });
                    }
                },

                eventResize: function (event, dayDelta, minuteDelta, revertFunc) { // si changement de longueur

                    edit(event);

                },
                editable: true,
            });

            // $.each($.fullCalendar.locales, function(localeCode) {
            //     $('#locale-selector').append(
            //         $('<option/>')
            //             .attr('value', localeCode)
            //             .prop('selected', localeCode == initialLocaleCode)
            //             .text(localeCode)
            //     );
            // });
            //
            // $.each($.fullCalendar.locales, function(localeCode) {
            //     $('#locale-selector').append(
            //         $('<option/>')
            //             .attr('value', localeCode)
            //             .prop('selected', localeCode == initialLocaleCode)
            //             .text(localeCode)
            //     );
            // });

        });

        // $("#locale").change(function(){
        //     var locale = $(this).val();
        //     // alert(locale);
        //     $('#calendar').fullCalendar('option', 'locale', 'ja');
        //
        // });

        function getData() {
            var company = $("#companies").val();
            $.ajax({
                type: "GET",
                url: "{{route('getDataForCalendar')}}",
                dataType: "json",
                data: {'company': company},
                beforeSend: function () {
                    // $("#calendarDiv").show();
                    $("#loadingDiv").show();
                },
                success: function (data) {
                    $("#loadingDiv").hide();
                    $("#sub_section_name").html('<h2><b>' + data['company'] + '</b></h2>');
                    let i;
                    $('#calendar').fullCalendar('removeEvents', function () {
                        return true;
                    });
                    var trans = '{{trans('employee.WorkedOnThisDay')}}';
                    // alert(trans);
                    for (i = 0; i < data['date'].length; i++) {
                        $('#calendar').fullCalendar('renderEvent', {
                            title: trans,
                            start: data['date'][i].date,
                            allDay: true,
                            old: 1,
                            companyId: data['date'][i].company_id,
                            backgroundColor: '#9faee9', //blue
                            borderColor: '#9faee9' //blue
                        }, 'stick');
                    }
                    for (i = 0; i < data['red'].length; i++) {
                        // console.log(data['red'][i].hours);
                        $('#calendar').fullCalendar('renderEvent', {
                            title: data['red'][i].start_time + ' - ' + data['red'][i].end_time,
                            id: data['red'][i].rel_id,
                            start: data['red'][i].date,
                            hours: data['red'][i].hours,
                            allDay: true,
                            selected: 'no',
                            company: data['red'][i].company_name,
                            backgroundColor: '#f5b1ae', //red
                            borderColor: '#f5b1ae' //red
                        }, 'stick');
                    }
                    for (i = 0; i < data.green.length; i++) {
                        $('#calendar').fullCalendar('renderEvent', {
                            title: data['green'][i].start_time + ' - ' + data['green'][i].end_time,
                            id: data['green'][i].rel_id,
                            start: data['green'][i].date,
                            hours: data['green'][i].hours,
                            allDay: true,
                            selected: 'yes',
                            company: data['green'][i].company_name,
                            backgroundColor: '#74c673', //green
                            borderColor: '#74c673' //green
                        }, 'stick');
                    }
                }
            });
        }

        $(function () {
            $('#companies').on('change', getData).trigger('change');
        });

        $('#submit').click(function () {
            var selectedShift = $('#shifts').val();
            // alert('hey');
            $.ajax({
                type: 'POST',
                dataType: 'json',
                url: "{{route('storeEmployeeApplication')}}",
                data: {'shift': selectedShift},
                async: true,
                success: function (data) {
                    // alert('hey');
                    $("#calendar").fullCalendar('clientEvents', function (event) {
                        // alert(event.id);
                        if (event.id == selectedShift) {
                            // alert('hey');
                            event.backgroundColor = '#74c673',
                            event.borderColor = '#74c673',
                            event.selected = 'yes'
                            $('#calendar').fullCalendar('updateEvent', event);
                            $('#shifts').html('');
                            $('#ModalAdd').hide();
                        }
                    });
                }
            });
            return false;
        });

        $(document).on('change', '#shifts', function () {
            var selected = $('#shifts').val();
            var remaining = $("#remainingHours").attr('name');
            if (selected != 0) {
                var hours = remaining - $(this).find(':selected').attr('data-Hours');
                if (hours >= 0) {
                    $('#message').html('<b style="color:darkgreen"> <span>{{trans('employee.Remaininghourswillbe')}}</span> ' + hours + ' <span>{{trans('employee.hours')}}</span></b>');
                    $("#submit").attr("disabled", false);
                }
                else {
                    $('#message').html('<b style="color:red"><span>{{trans('employee.Workingtimeexceeded')}}</span></b>');
                    $("#submit").attr("disabled", true);
                }
                $("#message").show();
            }
            else {
                $("#message").hide();
                $("#submit").attr("disabled", true);
            }
        });

        $("button[data-number=close_hamro_afanai]").click(function () {
            $('#ModalAdd').hide();
        });
    </script>

@endpush