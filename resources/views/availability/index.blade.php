@extends('layouts.app')

@section('content')
    <div class="row">
        <div class="col-md-10 offset-1">
            <div class="box" style="min-height: 200px">
                <div class="box-header">
                    <a href="{{route('availability.edit')}}" class="btn btn-link pull-right">Edit</a>
                    <a href="{{route('availability.add')}}" class="btn btn-link pull-right">Add</a>
                    <h4>{{ 'Employee Availability' }}</h4>
                </div>

                <div class="box-body">
                    <div class="row">
                        <div class="col-md-2">
                            <span>PSIS No:</span>
                        </div>
                        <div class="col-md-10" style="text-align: left">
                            <input type="text" class="form-control" placeholder="Enter PSI number" id="psi_number" style="width:50%;">
                        </div>
                    </div>
                    <div id="errorId" class="row" style="margin-top:10px; margin-bottom: 10px;display: none">
                        <div class="col-md-2"></div>
                        <div class="col-md-10" style="text-align: left">
                            <span id="message">No Employee Found</span>
                        </div>
                    </div>
                    <div id="allData" style="display: none">
                        <div class="row" style="margin-top:10px; margin-bottom: 10px">
                            <div class="col-md-2">
                                <span>Employee Name:</span>
                            </div>
                            <div class="col-md-10" style="text-align: left">
                                <span id="name"></span>
                            </div>
                        </div>
                        <table class="table table-striped">
                            <thead>
                            <th>Weekdays</th>
                            <th>Sunday</th>
                            <th>Monday</th>
                            <th>Tuesday</th>
                            <th>Wednesday</th>
                            <th>Thursday</th>
                            <th>Friday</th>
                            <th>Saturday</th>
                            </thead>
                            <tbody>
                            <tr>
                                <td><b>Available Time</b></td>
                                <td id="sun"></td>
                                <td id="mon"></td>
                                <td id="tue"></td>
                                <td id="wed"></td>
                                <td id="thu"></td>
                                <td id="fri"></td>
                                <td id="sat"></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@push('scripts')
    <script>
        $('#psi_number').change(function () {
            var psi = $('#psi_number').val();
            if (psi != '') {
                $.ajax({
                    type: "GET",
                    dataType: "json",
                    data: {'psi': psi},
                    url: '{{route("showAvailability")}}',
                    success: function (data) {
                        if (data == 0) {
                            $('#errorId').show();
                            $('#message').text('Invalid PSI number.');
                            $('#allData').hide();
                        }
                        else if (data == 1) {
                            $('#errorId').show();
                            $('#message').text('No availability data found.');
                            $('#allData').hide();
                        }
                        else {
                            console.log(data.sun);
                            $('#errorId').hide();
                            $('#allData').show();
                            if(data.sun==null)
                                $('#sun').text('--');
                            else
                                $('#sun').text(data.sun);
                            if(data.mon==null)
                                $('#mon').text('--');
                            else
                                $('#mon').text(data.mon);
                            if(data.tue==null)
                                $('#tue').text('--');
                            else
                                $('#tue').text(data.tue);
                            if(data.wed==null)
                                $('#wed').text('--');
                            else
                                $('#wed').text(data.wed);
                            if(data.thu==null)
                                $('#thu').text('--');
                            else
                                $('#thu').text(data.thu);
                            if(data.fri==null)
                                $('#fri').text('--');
                            else
                                $('#fri').text(data.fri);
                            if(data.sat==null)
                                $('#sat').text('--');
                            else
                                $('#sat').text(data.sat);
                            $('#name').text(data.name);
                        }
                    }
                });
            }
            else {
                $('#allData').hide();
            }
        });
    </script>
@endpush