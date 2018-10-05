@if(Session::has('duplicate'))
    @php
        $data = Session::get('duplicate');
    @endphp
    @if(count($data['yes']) > 0)
        <div id="duplicateMessage" class="box box-danger" style="margin-bottom: 25px">
            <div class="alert" role="alert">
                <div class="col-md-6 offset-3" style="margin-bottom: 50px">
                    <strong><h4>Duplicate Employees</h4></strong>
                    <table class="table table-striped">
                        <th scope="col">#</th>
                        <th>PSI-S No</th>
                        <th>Name</th>
                        @foreach($data['yes'] as $index => $data)
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