<html>
    <head>
        <title>
            PSI|Choose Primary Company
        </title>
    </head>
    <body>
        @php
            $username = \Session::get('username');
            $companies = \Session::get('user_companies');
            $language = \Session::get('user_language');
            $user_id = \Session::get('user_id');
        @endphp
        <div class="row">
            <div class="col-md-8 offset-2">
                <div class="box">
                    <div class="box-header"><h4>Choose Your Primary Company</h4></div>
                    <div class="box-body">
                        <table class="table table-striped">
                            <thead>
                            <tr>
                                <th> Role </th>
                                <th> Company </th>
                                <th> Team Leader </th>
                                <th> Action </th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($companies as $company)
                                <tr>
                                    <td> {{ Auth::user()->roles()->pluck('name')->implode('') }} </td>
                                    <td> {{ $company->name }} </td>
                                    <td> No </td>
                                    <td>
                                        <button class="btn btn-sm btn-primary" href="{{route('selectPrimary', $company->id)}}">Manage</button>
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>