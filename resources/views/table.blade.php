@extends('layouts.app') 
@section('content')


<table id="table_id" class="table table-condensed">
    <thead>
        <tr>
            <th>Company</th>
            <th>Sub Company</th>
            <th>Total Employee</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Nepal</td>
            <td><a class="btn btn-light btn-sm" href="{{url('/employees')}}">2</a></td>
            <td><a class="btn btn-light btn-sm" href="{{url('/employees')}}">4</a></td>
            <td><a href="">Edit</a></td>
        </tr>
        <tr>
            <td>China</td>
            <td><a class="btn btn-light btn-sm" href="{{url('/employees')}}">4</a></td>
            <td><a class="btn btn-light btn-sm" href="{{url('/employees')}}">6</a></td>
            <td><a href="">Edit</a></td>
        </tr>
        <tr>
            <td>Korea</td>
            <td><a class="btn btn-light btn-sm" href="{{url('/employees')}}">1</a></td>
            <td><a class="btn btn-light btn-sm" href="{{url('/employees')}}">5</a></td>
            <td><a href="">Edit</a></td>
        </tr>
        <tr>
            <td>Japan</td>
            <td><a class="btn btn-light btn-sm" href="{{url('/employees')}}">9</a></td>
            <td><a class="btn btn-light btn-sm" href="{{url('/employees')}}">6</a></td>
            <td><a href="">Edit</a></td>
        </tr>
        <tr>
            <td>Thailand</td>
            <td><a class="btn btn-light btn-sm" href="{{url('/employees')}}">3</a></td>
            <td><a class="btn btn-light btn-sm" href="{{url('/employees')}}">6</a></td>
            <td><a href="">Edit</a></td>
        </tr>
        <tr>
            <td>Australia</td>
            <td><a class="btn btn-light btn-sm" href="{{url('/employees')}}">2</a></td>
            <td><a class="btn btn-light btn-sm" href="{{url('/employees')}}">10</a></td>
            <td><a href="">Edit</a></td>
        </tr>
        <tr>
            <td>Bhutan</td>
            <td><a class="btn btn-light btn-sm" href="{{url('/employees')}}">5</a></td>
            <td><a class="btn btn-light btn-sm" href="{{url('/employees')}}">12</a></td>
            <td><a href="">Edit</a></td>
        </tr>
        <tr>
            <td>India</td>
            <td><a class="btn btn-light btn-sm" href="{{url('/employees')}}">7</a></td>
            <td><a class="btn btn-light btn-sm" href="{{url('/employees')}}">8</a></td>
            <td><a href="">Edit</a></td>
        </tr>
        <tr>
            <td>Africa</td>
            <td><a class="btn btn-light btn-sm" href="{{url('/employees')}}">3</a></td>
            <td><a class="btn btn-light btn-sm" href="{{url('/employees')}}">6</a></td>
            <td><a href="">Edit</a></td>
        </tr>
        <tr>
            <td>America</td>
            <td><a class="btn btn-light btn-sm" href="{{url('/employees')}}">2</a></td>
            <td><a class="btn btn-light btn-sm" href="{{url('/employees')}}">5</a></td>
            <td><a href="">Edit</a></td>
        </tr>
        <tr>
            <td>Russia</td>
            <td><a class="btn btn-light btn-sm" href="{{url('/employees')}}">2</a></td>
            <td><a class="btn btn-light btn-sm" href="{{url('/employees')}}">9</a></td>
            <td><a href="">Edit</a></td>
        </tr>
        <tr>
            <td>Pakistan</td>
            <td><a class="btn btn-light btn-sm" href="{{url('/employees')}}">2</a></td>
            <td><a class="btn btn-light btn-sm" href="{{url('/employees')}}">6</a></td>
            <td><a href="">Edit</a></td>
        </tr>
        <tr>
            <td>India</td>
            <td><a class="btn btn-light btn-sm" href="{{url('/employees')}}">7</a></td>
            <td><a class="btn btn-light btn-sm" href="{{url('/employees')}}">6</a></td>
            <td><a href="">Edit</a></td>
        </tr>
        <tr>
            <td>Spain</td>
            <td><a class="btn btn-light btn-sm" href="{{url('/employees')}}">0</a></td>
            <td><a class="btn btn-light btn-sm" href="{{url('/employees')}}">3</a></td>
            <td><a href="">Edit</a></td>
        </tr>

    </tbody>

</table>
@endsection
 

@push('scripts')
<script type="text/javascript">
    $(function(){
                $("#table_id").DataTable();
            });
</script>
@endpush

