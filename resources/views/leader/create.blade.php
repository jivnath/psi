@extends('layouts.app')

@section('content')
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="box">
                    <div class="box-header"><h3>Team Leader</h3></div>

                    <div class="box-body " style="padding: 10px;">
                        <form  action="{{ route('leader.store') }}" method="POST" >
                            <input type="hidden" name="_method" value="POST">
                            <input type="hidden" name="_token" value="{{ csrf_token() }}">

                            <div class="row" style="text-align: right; margin-top: 5px;">
                                <div class="col-md-2">
                                    <label for="company_name"> Section Name </label>
                                </div>
                                <div class="col-md-6">
                                    {{--{{dd($companies)}}--}}
                                    <select name="company_name" class="form-control">
                                        @foreach($companies as $company)
                                            <option value="{{$company->id}}" class="form-control"> {{ $company->name  }} </option>
                                        @endforeach

                                    </select>
                                </div>
                                <div class="col-md-4"></div>
                            </div>

                            <div class="row" style="text-align: right; margin-top: 5px;">
                                <div class="col-md-2">
                                    <label for="psi_num"> PSI No </label>
                                </div>
                                <div class="col-md-6">
                                    <input type="text" id="psi_num" name="psi_num" class="form-control">
                                </div>
                                <div class="col-md-4">
                                    <h5 id="leaderName"  style="float: left"></h5>
                                </div>
                            </div>

                            <div class="row" style="text-align: right; margin-top: 5px;">
                                <div class="col-md-2">
                                    <label for="contact_num"> Contact No. </label>
                                </div>
                                <div class="col-md-6">
                                    <input type="text" name="contact_num" class="form-control">
                                </div>
                                <div class="col-md-4"></div>
                            </div>

                            <div class="row" style="margin-top: 15px; text-align:right">
                                <div class="col-md-2"></div>
                                <div class="col-md-6">
                                    <button type="submit" class="btn btn-primary">
                                        Save
                                    </button>
                                </div>
                                <div class="col-md-4"></div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
  

@endsection

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script type="text/javascript">
    $(function() {
        $("#psi_num").change(function() {
            var selected = $('#psi_num').val();
            $.ajax({
                type:'GET',
                url:"{{ route('leader') }}",
                data:{ 'selected':selected	},
                success:function(data){
                    $("#leaderName").text(data);
                }
            })
        });
    });
</script>
