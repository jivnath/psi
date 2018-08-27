@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-9"></div>
            <div class="col-md-1" style="text-align: right;">
                <label for="company">Company</label>
            </div>
            <div class="col-md-2" style="float: right">
                <select name="company" class="form-control select-sm">
                    @foreach($companies as $company)
                        <option value="{{ $company->id }}">{{ $company->name }}</option>
                    @endforeach
                </select>
            </div>
        </div>
        <div style="margin-top: 20px">
            <table class="table table-borderd" style="text-align: center">
                <thead>
                    <th>Date</th>
                    <th>Time</th>
                    <th>No</th>
                    <th>Staff No.</th>
                    <th>Country</th>
                    <th>Name（フリガナ）</th>
                    <th>Name（氏名）</th>
                    <th>Tel No</th>
                    <th>Responsible</th>
                    <th>Conformation the day before</th>
                    <th>Responsible</th>
                    <th>Conform 3 hours ago</th>
                    <th>Arrival time in case of late arrival</th>
                    <th>Reason for late arrival and absence</th>
                    <th>Call Medium/Through</th>
                </thead>
                <tbody>
                    <tr>
                        <td> 04/08 </td>
                        <td> 04:00 </td>
                        <td> 1 </td>
                        <td> 72107 </td>
                        <td> Nep </td>
                        <td> xyuing xyang </td>
                        <td> jyuing jyang </td>
                        <td> 15613576516 </td>
                        <td> Shing ghyang </td>
                        <td> ok </td>
                        <td> Ding Dyang </td>
                        <td> ok </td>
                        <td> 04:15 </td>
                        <td> lazy </td>
                        <td> no </td>

                    </tr>
                    <tr>
                        <td> 04/08 </td>
                        <td> 04:00 </td>
                        <td> 1 </td>
                        <td> 72107 </td>
                        <td> Nep </td>
                        <td> xyuing xyang </td>
                        <td> jyuing jyang </td>
                        <td> 15613576516 </td>
                        <td> Shing ghyang </td>
                        <td> ok </td>
                        <td> Ding Dyang </td>
                        <td> ok </td>
                        <td> 04:15 </td>
                        <td> lazy </td>
                        <td> no </td>

                    </tr>
                </tbody>

            </table>
        </div>
    </div>
@endsection
