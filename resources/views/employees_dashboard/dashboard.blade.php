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

    <section class="content box box-success">
        <div class="col-md-6 offset-3">
            <div class="form-group" style="margin-top: 15px;">
                <label for="subsection"><h5>Sub-Section</h5></label>
                <select class="form-control input-shorter" id="companies">
                    <option value="0">--Select sub section--</option>
                    @foreach($companies as $company)
                        <option name="{{$company->name}}" value="{{$company->id}}">{{$company->name}}</option>
                    @endforeach
                </select>
            </div>
        </div>

        <div class="row" id="calendarDiv" style="display: none">
            {{--<div class="col-md-3">--}}
                {{--<div class="box box-solid">--}}
                    {{--<div class="box-header with-border">--}}
                        {{--<h4 class="box-title">Last Updates</h4>--}}
                    {{--</div>--}}
                    {{--<div class="box-body">--}}
                        {{--<!-- the events -->--}}
                        {{--<div id="external-events">--}}
                            {{--<div class="external-event bg-green">Cancel Last Day</div>--}}
                            {{--<div class="external-event bg-yellow">Scheduled On Sept</div>--}}

                        {{--</div>--}}
                    {{--</div>--}}
                    {{--<!-- /.box-body -->--}}
                {{--</div>--}}
                {{--<!-- /. box -->--}}

            {{--</div>--}}
            <!-- /.col -->
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
                    </div>
                    <div class="modal-body">

                        <div class="form-group">
                            <label for="color" class="col-sm-2 control-label">Shift</label>
                            <div class="col-sm-12">
                                <select name="shifts" class="form-control" id="shifts">

                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <span id="submit" class="btn btn-primary"> Apply </span>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="modal" id="ModalEdit" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <form class="form-horizontal" method="POST" action="#">
                    <div class="modal-header">
                        <h4 class="modal-title" id="myModalLabel">Edit Schedule</h4>
                    </div>
                    <div class="modal-body">

                        <div class="form-group">
                            <label for="title" class="col-sm-2 control-label">Title</label>
                            <div class="col-sm-12">
                                <input type="text" name="title" class="form-control" id="title" placeholder="Title">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="color" class="col-sm-2 control-label">Color</label>
                            <div class="col-sm-12">
                                <select name="color" class="form-control" id="color">
                                    <option value="">Choose</option>
                                    <option style="color:#0071c5;" value="#0071c5">&#9724; Dark blue</option>
                                    <option style="color:#40E0D0;" value="#40E0D0">&#9724; Turquoise</option>
                                    <option style="color:#008000;" value="#008000">&#9724; Green</option>
                                    <option style="color:#FFD700;" value="#FFD700">&#9724; Yellow</option>
                                    <option style="color:#FF8C00;" value="#FF8C00">&#9724; Orange</option>
                                    <option style="color:#FF0000;" value="#FF0000">&#9724; Red</option>
                                    <option style="color:#000;" value="#000">&#9724; Black</option>

                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <div class="checkbox">
                                    <label class="text-danger"><input type="checkbox" name="delete"> Delete
                                        event</label>
                                </div>
                            </div>
                        </div>

                        <input type="hidden" name="id" class="form-control" id="id">


                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Save changes</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

@endsection
@push('scripts')
    <!-- fullCalendar -->
    <script src="{{asset('bower_components/moment/moment.js')}}"></script>
    <script src="{{asset('bower_components/fullcalendar/dist/fullcalendar.min.js')}}"></script>
    <script>
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        var last_click = '';
        $(document).ready(function () {
            /* initialize the calendar
                  -----------------------------------------------------------------*/
            //Date for the calendar events (dummy data)

            var date = new Date()
            var d = date.getDate(),
                m = date.getMonth(),
                y = date.getFullYear()
            $('#calendar').fullCalendar({
                header: {
                    left: 'prev,next today',
                    center: 'title',
                    right: 'month'
                },
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
                    $('#ModalAdd').modal('show');
                },
                // eventRender: function (event, element) {
                //     element.bind('dblclick', function () {
                //         $('#ModalEdit #id').val(event.id);
                //         $('#ModalEdit #title').val(event.title);
                //         $('#ModalEdit #color').val(event.color);
                //         $('#ModalEdit').modal('show');
                //     });
                //
                // },
                eventDrop: function (event, delta, revertFunc) { // si changement de position

                    edit(event);

                },
                dayClick: function (date, allDay) {
                    var company = $("#companies").val();
                    $('#ModalAdd').show();
                    $.ajax({
                        type: 'GET',
                        url: '{{route('getCompanyName')}}',
                        data: {'company': company},
                        async: true,
                        dataType: 'json',
                        success: function (data) {
                            // alert(data);
                            $('#myModalLabel').html(data + '<h6>(' + moment(date).format('YYYY-MM-DD') + ')</h6>');
                        }
                    });
                    $('#myModalLabel').text(moment(date).format('YYYY-MM-DD'));
                    $('#shifts').html('');
                    var select = '<option value="0">--Choose Shift--</option>';
                    $('#shifts').append(select);
                    $('#calendar').fullCalendar('clientEvents', function (event) {

                        if (moment(date).format('YYYY-MM-DD') == moment(event.start).format('YYYY-MM-DD')) {
                            if (event.selected == 'no') {
                                $('#shifts').append('<option value="' + event.id + '">' + event.title + '</option>')
                            }

                        }
                    });
                },

                eventResize: function (event, dayDelta, minuteDelta, revertFunc) { // si changement de longueur

                    edit(event);

                },
                editable: true,
            });
        });
        $("#companies").change(function () {
            var company = $("#companies").val();
            if (company != 0) {

                $.ajax({
                    type: "GET",
                    url: "{{route('getDataForCalendar')}}",
                    dataType: "json",
                    data: {'company': company},
                    success: function (data) {

                        $("#calendarDiv").show();
                        let i;
                        $('#calendar').fullCalendar('removeEvents', function () {
                            return true;
                        });
                        for (i = 0; i < data['red'].length; i++) {


                            $('#calendar').fullCalendar('renderEvent', {
                                title: data['red'][i].start_time + ' - ' + data['red'][i].end_time,
                                id: data['red'][i].rel_id,
                                start: data['red'][i].date,
                                allDay: true,
                                selected: 'no',
                                company: data['red'][i].company_name,
                                backgroundColor: '#f56954', //red
                                borderColor: '#f56954' //red
                            }, 'stick');
                        }
                        for (i = 0; i < data.green.length; i++) {


                            $('#calendar').fullCalendar('renderEvent', {
                                title: data['green'][i].start_time + ' - ' + data['green'][i].end_time,
                                id: data['green'][i].rel_id,
                                start: data['green'][i].date,
                                allDay: true,
                                selected: 'yes',
                                company: data['green'][i].company_name,
                                backgroundColor: '#2ac633', //green
                                borderColor: '#2ac633' //green
                            }, 'stick');
                        }
                    }
                });
            }
            else {
                $("#calendarDiv").hide();
            }
        });

        $('#submit').click(function () {
            var selectedShift = $('#shifts').val();
            $.ajax({
                type: 'POST',
                dataType: 'json',
                url: "{{route('storeEmployeeApplication')}}",
                data: {'shift': selectedShift},
                async: true,
                success: function (data) {
                    $("#calendar").fullCalendar('clientEvents', function (event) {
                        if (event.id == selectedShift) {
                            event.backgroundColor = '#2ac633',
                            event.borderColor = '#2ac633',
                            event.selected = 'yes'
                            $('#calendar').fullCalendar('updateEvent',event);
                            $('#shifts').html('');
                            $('#ModalAdd').hide();
                        }

                    });
                }
            });
        });
    </script>

@endpush