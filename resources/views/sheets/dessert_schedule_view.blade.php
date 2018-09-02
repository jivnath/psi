<select name="schedule_date" id="schedule_date" class='form-control'>
@foreach($schedule_data as $row)
<option>{{$row->date}}</option>
@endforeach
</select>