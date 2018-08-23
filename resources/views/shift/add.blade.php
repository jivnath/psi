@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ "Please fill out the form below." }}</div>

                <div class="card-body " style="padding: 10px;">
                    <form  action="{{ route('shift.store') }}" method="POST" >
                        <input type="hidden" name="_method" value="POST">
                        <input type="hidden" name="_token" value="{{ csrf_token() }}">
                        
                        <div class="row" style="text-align: center; margin-top: 5px;">
                            <div class="col-md-5">
                                <label for="shiftName"> Company Name </label>
                            </div>
                            <div class="col-md-7">
                                <input type="text" name="company_name" class="form-control">                                
                            </div>
                        </div>

                        <div class="row" style="text-align: center; margin-top: 5px;">
                            <div class="col-md-5">
                                <label for="startTime"> Start Time </label>
                            </div>
                            <div class="col-md-7">
                                <input type="time" name="startTime" class="form-control" id="startTime">
                            </div>
                        </div>

                        <div class="row" style="text-align: center; margin-top: 5px;">
                            <div class="col-md-5">
                                <label for="endTime"> End Time </label>
                            </div>
                            <div class="col-md-7">
                                <input type="text" name="endTime" class="form-control">
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-5"></div>
                            <div class="col-md-7">
                                <button style="margin-top: 15px" type="submit" class="btn btn-primary">
                                    Save
                                </button>
                            </div>
                        </div>           
                    </form>
<br />
                    <div>
                        <table class="table table-striped">
                            <tr>
                                <th>Shift Name</th>
                                <th>Start-End Time</th>
                                <th>Action</th>
                            </tr>
                            @if(count($shifts)>0)
                                @foreach($shifts as $shift)
                                    <tr>
                                        <td> {{ $shift->shift_name }} </td>
                                        <td>
                                        {{ $shift->start_time.':00 - '.$shift->end_time.':00' }}
                                        </td>
                                        <td><a href="{{ route('shift.edit', $shift->id) }}" class="btn btn-link btn-sm" > Edit</a> </td>
                                    </tr>
                                @endforeach
                            @else
                                <h3>No Shift Available</h3>
                            @endif
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
<script>
    $('#demo').daterangepicker({
        "timePicker24Hour": true,
    }, function(start, end, label) {
      console.log('New date range selected: ' + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD') + ' (predefined range: ' + label + ')');
    });
</script>