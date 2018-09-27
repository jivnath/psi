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
                <div class="external-event bg-green">Cancel Last Day</div>
                <div class="external-event bg-yellow">Scheduled On Sept</div>

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
    <div class="modal" id="ModalAdd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		  <div class="modal-dialog" role="document">
			<div class="modal-content">
			<form class="form-horizontal" method="POST" action="#">

			  <div class="modal-header">
				<h4 class="modal-title" id="myModalLabel">Add Schedule</h4>
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
					<label for="start" class="col-sm-5 control-label">Start date</label>
					<div class="col-sm-12">
					  <input type="text" name="start" class="form-control" id="start" readonly>
					</div>
				  </div>
				  <div class="form-group">
					<label for="end" class="col-sm-5 control-label">End date</label>
					<div class="col-sm-12">
					  <input type="text" name="end" class="form-control" id="end" readonly>
					</div>
				  </div>

			  </div>
			  <div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				<button type="submit" class="btn btn-primary">Save changes</button>
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
							<label class="text-danger"><input type="checkbox"  name="delete"> Delete event</label>
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
     eventLimit: true, // allow "more" link when too many events
		selectable: true,
		selectHelper: true,
		select: function(start, end) {
			$('#ModalAdd #start').val(moment(start).format('YYYY-MM-DD HH:mm:ss'));
			$('#ModalAdd #end').val(moment(end).format('YYYY-MM-DD HH:mm:ss'));
			$('#ModalAdd').modal('show');
		},
		eventRender: function(event, element) {
			element.bind('dblclick', function() {
				$('#ModalEdit #id').val(event.id);
				$('#ModalEdit #title').val(event.title);
				$('#ModalEdit #color').val(event.color);
				$('#ModalEdit').modal('show');
			});
		},
		eventDrop: function(event, delta, revertFunc) { // si changement de position

			edit(event);

		},
		eventResize: function(event,dayDelta,minuteDelta,revertFunc) { // si changement de longueur

			edit(event);

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
