@extends('layouts.app') @section('content')
 <link rel="stylesheet" href="{{asset('bower_components/fullcalendar/dist/fullcalendar.min.css')}}">
  <link rel="stylesheet" href="{{asset('bower_components/fullcalendar/dist/fullcalendar.print.min.css')}}" media="print">
<style>
</style>
 <section class="content">
      <div class="row">
        <div class="col-md-3">
          <div class="box box-solid">
            <div class="box-header with-border">
              <h4 class="box-title">Last Updates</h4>
            </div>
            <div class="box-body">
              <!-- the events -->
              <div id="external-events">
                <div class="external-event bg-green">Lunch</div>
                <div class="external-event bg-yellow">Go home</div>
                <div class="external-event bg-aqua">Do homework</div>
                <div class="external-event bg-light-blue">Work on UI design</div>
                <div class="external-event bg-red">Sleep tight</div>

              </div>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /. box -->

        </div>
        <!-- /.col -->
        <div class="col-md-9">
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

@endsection @push('scripts')
<!-- fullCalendar -->
<script src="{{asset('bower_components/moment/moment.js')}}"></script>
<script src="{{asset('bower_components/fullcalendar/dist/fullcalendar.min.js')}}"></script>
<script>
var last_click='';
$(document).ready(function() {
	/* initialize the calendar
    -----------------------------------------------------------------*/
   //Date for the calendar events (dummy data)
   var date = new Date()
   var d    = date.getDate(),
       m    = date.getMonth(),
       y    = date.getFullYear()
   $('#calendar').fullCalendar({
     header    : {
       left  : 'prev,next today',
       center: 'title',
       right : 'month,agendaWeek,agendaDay'
     },
     buttonText: {
       today: 'today',
       month: 'month',
       week : 'week',
       day  : 'day'
     },
     //Random default events
     events    : [
       {
         title          : 'All Day Event',
         start          : new Date(y, m, 1),
         backgroundColor: '#f56954', //red
         borderColor    : '#f56954' //red
       },
       {
         title          : 'Long Event',
         start          : new Date(y, m, d - 5),
         end            : new Date(y, m, d - 2),
         backgroundColor: '#f39c12', //yellow
         borderColor    : '#f39c12' //yellow
       },
       {
         title          : 'Meeting',
         start          : new Date(y, m, d, 10, 30),
         allDay         : false,
         backgroundColor: '#0073b7', //Blue
         borderColor    : '#0073b7' //Blue
       },
       {
         title          : 'Lunch',
         start          : new Date(y, m, d, 12, 0),
         end            : new Date(y, m, d, 14, 0),
         allDay         : false,
         backgroundColor: '#00c0ef', //Info (aqua)
         borderColor    : '#00c0ef' //Info (aqua)
       },
       {
         title          : 'Birthday Party',
         start          : new Date(y, m, d + 1, 19, 0),
         end            : new Date(y, m, d + 1, 22, 30),
         allDay         : false,
         backgroundColor: '#00a65a', //Success (green)
         borderColor    : '#00a65a' //Success (green)
       },
       {
         title          : 'Click for Google',
         start          : new Date(y, m, 28),
         end            : new Date(y, m, 29),
         url            : 'http://google.com/',
         backgroundColor: '#3c8dbc', //Primary (light-blue)
         borderColor    : '#3c8dbc' //Primary (light-blue)
       }
     ],
     editable  : true,
     droppable : true, // this allows things to be dropped onto the calendar !!!
     drop      : function (date, allDay) { // this function is called when something is dropped

       // retrieve the dropped element's stored Event Object
       var originalEventObject = $(this).data('eventObject')

       // we need to copy it, so that multiple events don't have a reference to the same object
       var copiedEventObject = $.extend({}, originalEventObject)

       // assign it the date that was reported
       copiedEventObject.start           = date
       copiedEventObject.allDay          = allDay
       copiedEventObject.backgroundColor = $(this).css('background-color')
       copiedEventObject.borderColor     = $(this).css('border-color')

       // render the event on the calendar
       // the last `true` argument determines if the event "sticks" (http://arshaw.com/fullcalendar/docs/event_rendering/renderEvent/)
       $('#calendar').fullCalendar('renderEvent', copiedEventObject, true)

       // is the "remove after drop" checkbox checked?
       if ($('#drop-remove').is(':checked')) {
         // if so, remove the element from the "Draggable Events" list
         $(this).remove()
       }

     }
   });
});
</script>

@endpush
