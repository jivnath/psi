@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-1" style="text-align: right;">
                <label for="company">Company</label>
            </div>
            <div class="col-md-2">
                <select name="company" class="form-control select-sm" id="company">
                    @foreach($companies as $company)
                        <option value="{{ $company->id }}">{{ $company->name }}</option>
                    @endforeach
                </select>
            </div>
            <div class="col-md-9" style="float: right"></div>
        </div>
        <div style="margin-top: 20px" id="dessert_response">
        <p>Loading...</p>
        </div>
    </div>
@endsection
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>


<script>
    $(function(){
       $("#company").change(function(){
           var selected = $(this).val();
           $.ajax({
               type:'GET',
               url:"{{ route('dessert') }}",
               data:{'selected':selected},
               success:function(data) {
                    $('#dessert_response').html(data);
               }
           });
        });
    });

</script>
