@extends('layouts.app')
@section('content')
    <div class="row">
        <div class="col-md-8 offset-2">
            <div class="box">
                <div class="box-body">
                    <h3 style="text-align: center">Viber Alert Setting</h3>
                    <br>
                    <br>
                    <div name="employee_master_data">
                        <h5 style="text-decoration: underline;">Employee Master Data</h5>
                        <div class="row" style="width: 70%; height: 50px;">
                            <div class="col-md-4">
                                <label for="card_expiry">Residance Card Expiry </label>
                            </div>
                            <div class="col-md-8">
                                <table width="60%">
                                    <col style="width: 20%">
                                    <col style="width: 20%">
                                    <col style="width: 20%">
                                    <tbody>
                                    <tr>
                                        <td style="border: 1px solid black">30</td>
                                        <td style="border: 1px solid black">Day &nbsp<i class="fa fa-sort-down"></i>
                                        </td>
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
                                <table width="65%" style="text-align: center">
                                    <col style="width: 15%">
                                    <col style="width: 15%">
                                    <col style="width: 15%">
                                    <col style="width: 5%">
                                    <col style="width: 15%">
                                    <tbody>
                                    <tr>
                                        <td style="border: 1px solid black">15</td>
                                        <td style="border: 1px solid black">Min &nbsp <i class="fa fa-sort-down"></i>
                                        </td>
                                        <td><i>
                                                <small>interval</small>
                                            </i></td>
                                        <td style="border: 1px solid black">5</td>
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
                                <table width="65%" style="text-align: center">
                                    <col style="width: 15%">
                                    <col style="width: 15%">
                                    <col style="width: 15%">
                                    <col style="width: 5%">
                                    <col style="width: 15%">
                                    <tbody>
                                    <tr>
                                        <td style="border: 1px solid black">15</td>
                                        <td style="border: 1px solid black">Min &nbsp <i class="fa fa-sort-down"></i>
                                        </td>
                                        <td><i>
                                                <small>interval</small>
                                            </i></td>
                                        <td style="border: 1px solid black">5</td>
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
                                <table width="65%" style="text-align: center">
                                    <col style="width: 15%">
                                    <col style="width: 15%">
                                    <col style="width: 15%">
                                    <col style="width: 5%">
                                    <col style="width: 15%">
                                    <tbody>
                                    <tr>
                                        <td style="border: 1px solid black">15</td>
                                        <td style="border: 1px solid black">Min &nbsp <i class="fa fa-sort-down"></i>
                                        </td>
                                        <td><i>
                                                <small>interval</small>
                                            </i></td>
                                        <td style="border: 1px solid black">5</td>
                                        <td><i>
                                                <small>Total Count</small>
                                            </i></td>

                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
        </div>
    </div>
    </div>

@endsection
