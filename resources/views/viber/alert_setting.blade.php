@extends('layouts.app')
@section('content')
    @php
        $intervalType=['year', 'month', 'day', 'hrs', 'min', 'sec'];
    @endphp
    <div class="container-fluid">
        <div class="box box-info">
            <div class="box-header"><h3 style="text-align: center">Viber Alert Setting</h3></div>
            <div class="box-body">
                <div class="row" style="margin-top: 30px">
                    <div class="col-md-8 offset-2">
                        <div name="employee_master_data">
                            <h5 style="text-decoration: underline;">Employee Master Data</h5>
                            <div class="row" style="width: 70%; height: 50px;">
                                <div class="col-md-4">
                                    <label for="card_expiry">Residance Card Expiry </label>
                                </div>
                                <div class="col-md-8">
                                    <table width="60%" style="text-align: center">
                                        <col style="width: 20%">
                                        <col style="width: 20%">
                                        <col style="width: 20%">
                                        <tbody>
                                        <tr>
                                            <td id="residanceInt" class="contenteditable" data-old=""
                                                contenteditable="true"
                                                style="border: 1px solid black">30
                                            </td>
                                            <td class="contenteditable" data-old="" contenteditable="true"
                                                style="border: 1px solid black">
                                                <select id="residanceType" style="border: 0px; outline:0px">
                                                    @foreach($intervalType as $type)
                                                        <option value="{{$type}}">{{$type}}</option>
                                                    @endforeach
                                                </select></td>
                                            <td><i>
                                                    <small>before</small>
                                                </i></td>

                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <br>
                        <hr>

                        <h5 style="text-decoration: underline;">Dessert Sheet</h5>
                        <div name="dessert_sheet" style="width: 80%; height: 150px;">
                            <div class="row">
                                <div class="col-md-4">
                                    <label for="card_expiry">Before 1 Day </label>
                                </div>
                                <div class="col-md-8">
                                    <table width="80%" style="text-align: center">
                                        <col style="width: 15%">
                                        <col style="width: 15%">
                                        <col style="width: 15%">
                                        <col style="width: 10%">
                                        <col style="width: 15%">
                                        <tbody>
                                        <tr>
                                            <td id="beforeOneDayInt" class="contenteditable" data-old=""
                                                contenteditable="true"
                                                style="border: 1px solid black">15
                                            </td>
                                            <td class="contenteditable" data-old="" contenteditable="true"
                                                style="border: 1px solid black">
                                                <select id="beforeOneDayType" style="border: 0px; outline:0px">
                                                    @foreach($intervalType as $type)
                                                        <option value="{{$type}}">{{$type}}</option>
                                                    @endforeach
                                                </select>
                                            </td>
                                            <td><i>
                                                    <small>interval</small>
                                                </i></td>
                                            <td id="beforeOneDayCount" class="contenteditable" data-old=""
                                                contenteditable="true"
                                                style="border: 1px solid black">5
                                            </td>
                                            <td><i>
                                                    <small>Total Count</small>
                                                </i></td>

                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-4">
                                    <label for="card_expiry">3 Hours Before </label>
                                </div>
                                <div class="col-md-8">
                                    <table width="80%" style="text-align: center">
                                        <col style="width: 15%">
                                        <col style="width: 15%">
                                        <col style="width: 15%">
                                        <col style="width: 10%">
                                        <col style="width: 15%">
                                        <tbody>
                                        <tr>
                                            <td id="beforeThreeInt" class="contenteditable" data-old=""
                                                contenteditable="true"
                                                style="border: 1px solid black">15
                                            </td>
                                            <td class="contenteditable" data-old="" contenteditable="true"
                                                style="border: 1px solid black">
                                                <select id="beforeThreeType" style="border: 0px; outline:0px">
                                                    @foreach($intervalType as $type)
                                                        <option value="{{$type}}">{{$type}}</option>
                                                    @endforeach
                                                </select></td>
                                            <td><i>
                                                    <small>interval</small>
                                                </i></td>
                                            <td id="beforeThreeCount" class="contenteditable" data-old=""
                                                contenteditable="true"
                                                style="border: 1px solid black">5
                                            </td>
                                            <td><i>
                                                    <small>Total Count</small>
                                                </i></td>

                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-4">
                                    <label for="card_expiry">Arrival Conformation </label>
                                </div>
                                <div class="col-md-8">
                                    <table width="80%" style="text-align: center">
                                        <col style="width: 15%">
                                        <col style="width: 15%">
                                        <col style="width: 15%">
                                        <col style="width: 10%">
                                        <col style="width: 15%">
                                        <tbody>
                                        <tr>
                                            <td id="arrivalInt" class="contenteditable" data-old=""
                                                contenteditable="true"
                                                style="border: 1px solid black">15
                                            </td>
                                            <td class="contenteditable" data-old="" contenteditable="true"
                                                style="border: 1px solid black">
                                                <select id="arrivalType" style="border: 0px; outline:0px">
                                                    @foreach($intervalType as $type)
                                                        <option value="{{$type}}">{{$type}}</option>
                                                    @endforeach
                                                </select></td>
                                            <td><i>
                                                    <small>interval</small>
                                                </i></td>
                                            <td id="arrivalCount" class="contenteditable" data-old=""
                                                contenteditable="true"
                                                style="border: 1px solid black">5
                                            </td>
                                            <td><i>
                                                    <small>Total Count</small>
                                                </i></td>

                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4 offset-4" style="text-align: right">
                                <span style="margin-bottom:30px " id="submit" class="btn btn-primary">Save</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection

@push('scripts')
<!--script  -->
    <script>
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });

        $('#submit').click(function () {
            var expiryInt = $('#residanceInt').text();
            var expiryType = $('#residanceType').val();
            var beforeOneInt = $('#beforeOneDayInt').text();
            var beforeOneType = $('#beforeOneDayType').val();
            var beforeOneCount = $('#beforeOneDayCount').text();
            var beforeThreeInt = $('#beforeThreeInt').text();
            var beforeThreeType = $('#beforeThreeType').val();
            var beforeThreeCount = $('#beforeOneDayCount').text();
            var arrivalInt = $('#arrivalInt').text();
            var arrivalType = $('#arrivalType').val();
            var arrivalCount = $('#arrivalCount').text();

            $.ajax({
                type: 'POST',
                url: '{{route("storeSetting")}}',
                async: true,
                data: {
                    'expiryInt': expiryInt,
                    'expiryType': expiryType,
                    'beforeOneInt': beforeOneInt,
                    'beforeOneType': beforeOneType,
                    'beforeOneCount': beforeOneCount,
                    'beforeThreeInt': beforeThreeInt,
                    'beforeThreeType': beforeThreeType,
                    'beforeThreeCount': beforeThreeCount,
                    'arrivalInt': arrivalInt,
                    'arrivalType': arrivalType,
                    'arrivalCount': arrivalCount,
                },
                success: function (data) {
                    window.location.replace('{{route("viberAlert")}}')
                }
            });
        });
    </script>
@endpush
