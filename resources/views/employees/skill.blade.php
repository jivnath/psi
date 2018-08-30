@extends('layouts.app') 
@section('content')
<div class="row justify-content-center">
    <div class="col-md-6">

        <div class="card">

            <div class="card-header">
                <center> Please Fill up the Form</center>
            </div>

            <div class="card-body" style="align:center">
                <form action="{{ route('skill.store') }}" method="POST">
                    @csrf
                    <div class="row justify-content-center" style="margin-left:50px">
                        <div class="col-md-4">
                            <lebel>PSI Number</lebel>
                        </div>
                        <div class="col-md-8">
                            <div class="col-md-12">
                                <input type="text" name="psi_num" id="psi_num" placeholder="PSIS_No" class="form-control" required>
                            </div>
                        </div>
                    </div>
                    </br>

                    <div class="row justify-content-center" style="margin-left:50px">
                        <div class="col-md-4">
                            <lebel>Skills</lebel>
                        </div>
                        <div class="col-md-8">
                            <div class="table-responsive">
                                <div class="form-group-row">
                                            <div class="col-md-12">
                                                <input type="text" id="skills" name="skill" placeholder="Enter skill" class="form-control" required>


                                            </div>
                                        </div>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>

                    <div class="row" style="margin-left:300px">
                        <div class="col-md-3"></div>
                        <div class="col-md-3" style="text-align:right">
                            <button style="margin-top: 20px" type="submit" class="btn btn-primary"> Save </button>
                        </div>
                        <div class="col-md-4" style="text-align:right">
                            <button style="margin-top: 20px" id="addmore" class="btn btn-danger"> Save & Add More </button>
                        </div>
                    </div>

            </form>
            </div>
        </div>
    </div>
</div>
</div>
@endsection
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script type="text/javascript">
    $(function(){
        $("#addmore").click(function(){

            event.preventDefault();
            var skill = $("#skills").val();
            var psi_num = $("#psi_num").val();
            $.ajax({
                type:"POST",
                url:'{{ route('skill.addmore') }}',
                data:{'skill':skill, 'psi_num':psi_num, "_token": "{{ csrf_token() }}"},
                async:true,
                success:function(){
                    $("#skills").val('');
                }

            });
        });
    });
</script>