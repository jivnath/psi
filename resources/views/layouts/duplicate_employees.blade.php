@if(Session::has('duplicate'))
    @php
        $data = Session::get('duplicate');
    @endphp
    @if(count($data) > 0)
        <div id="duplicateMessage" class="box box-danger" style="width: 100%;overflow-x:auto;position:absolute;">
            <div class="alert" role="alert">
                <div class="col-md-6 offset-3" style="margin-bottom: 50px">
                    <strong><h4>Duplicate Employees</h4></strong>
                    <table class="table table-striped table-condensed">
                        <th scope="col">#</th>
                        <th>PSI-S No</th>
                        <th>Name</th>
                        @foreach($data as $index => $data)
                            <tr>
                                <td>{{$index+1}}</td>
                                <td>{{$data['psi_number']}}</td>
                                <td>{{$data['name']}}</td>
                            </tr>
                        @endforeach
                    </table>
                    <span class="btn btn-danger" id="closeDuplicates" style="float: right">Close</span>
                </div>
            </div>
        </div>
    @endif

@endif

@push('scripts')
    <script>
        $("#closeDuplicates").click(function () {
            $("#duplicateMessage").hide(500);
        });
    </script>
@endpush