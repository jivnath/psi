@extends('layouts.app')

@section('content')
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">
    <?php
    $last_p = '';
    ?>
    <section class="content">
        <div class="row">
            <div class='col-md-12'>
                <div class="box box-info">
                    <div class="box-header with-border">
                        <h4 class="box-title">Company Details</h4>
                    </div>
                    <div class="box-body">
                        <table class="table table-bordered" id='table'>
                            <thead>
                            <tr>
                                <th>SN</th>
                                <th>Sections Hierachy</th>

                            </tr>
                            </thead>
                            <tbody>
                            @php
                                $i=0

                            @endphp

                            @foreach($companies as $index=>$companys)
                                @php
                                    $i++
                                @endphp


                                <tr>
                                    <th scope="row">{{$i}}</th>
                                    <td>
                                        @foreach($companys as $index1=>$section)
                                            @if($index1)
                                                @foreach($section as $index2=>$subsection)
                                                    <div class="table-responsive">
                                                        <table class='table table-bordered'>
                                                            <thead class="thead-light">
                                                            <tr>
                                                                <th class="table_th_fix">Name</th>
                                                                <td><a href='#'>{{$index}}</a></td>
                                                                <td class="table_th_fix"><a href='#'>{{$index1}}</a>
                                                                </td>
                                                                @if($index2)
                                                                    <td class="table_th_fix"><a href='#'>{{$index2}}</a>
                                                                    </td>
                                                                @endif
                                                            </tr>
                                                            @foreach($subsection as $index3)
                                                                @foreach($index3 as $index4)
                                                                    <tr>
                                                                        <th class="table_th_fix">Contact</th>
                                                                        <td class="table_th_fix">{{$index4['contact_p']}}</td>
                                                                        <td class="table_th_fix">{{$index4['contact_c1']}}</td>
                                                                        <td class="table_th_fix">{{$index4['contact_c2']}}</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th class="table_th_fix">Address</th>
                                                                        <td class="table_th_fix">{{$index4['address_p']}}</td>
                                                                        <td class="table_th_fix">{{$index4['address_c1']}}</td>
                                                                        <td class="table_th_fix">{{$index4['address_c2']}}</td>
                                                                    </tr>
                                                                @endforeach
                                                            @endforeach
                                                            <thead>
                                                        </table>
                                                    </div>
                                                    <br>
                                                @endforeach


                                            @endif

                                        @endforeach

                                    </td>

                                </tr>

                            @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>

@endsection
@push('scripts')
    <script src='https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js'></script>
    <script src='https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js'></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#table').DataTable({
                dom: "<'row'<'col-sm-3'l><'col-sm-3'f><'col-sm-6'p>>" +
                    "<'row'<'col-sm-12'tr>>" +
                    "<'row'<'col-sm-5'i><'col-sm-7'p>>",
            });
        });
    </script>
@endpush