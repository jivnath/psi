@extends('layouts.app')

@section('content')

<section class="content">
    <div class="row">
        <div class="col-md-12">
        	<div class="box box-info">
             <div class="box-header with-border">
                      <h3 class="box-title">@lang('employee.SelfSheet')</h3>
                    </div>
                     <div class="box-body row">
            <div class="col-md-3">
              <select name="company" class="form-control" id="company">
                <option>--@lang('employee.SelectSubsection')--</option>
                    @foreach($companies as $company)
                        <option value="{{ $company->id }}">{{ $company->name }}</option>
                    @endforeach
                </select>
            </div>
            <div class="col-md-3 schedule_date">

            </div>
            <div class="col-md-2">
				<button type="button" class="btn btn-primary view_dessert">@lang('employee.Submit')</button>
            </div>
            </div>
            </div>
        </div>
        <div class='col-md-12'>
        <div id='dessert_response' class='' style="width: 100%;overflow: scroll;position: absolute;"></div>
        </div>
    </div>
    </section>
@endsection

@push('scripts')

<script>
    var main_logical_data='';

    $(function(){
       $(".view_dessert").click(function(){
           var selected = $('#company option:selected').val();
           var selected_date = $('#schedule_date option:selected').val();
           $.ajax({
               type:'GET',
               url:"{{ route('dessert') }}",
               data:{'selected':selected,'selected_date':selected_date},
               beforeSend:function(){
            	   $('#dessert_response').html('Loading,Please wait....');
                   },
               success:function(data,status) {
            	   $('#dessert_response').html('');
                   	if(status=='success'){
                    	$('#dessert_response').html(data);
                    	window.location.href="<?= url()->full(); ?>"+'#dessert_response';

                   	}
               }
           });
        });
       $("#company").change(function(){
           var selected = $(this).val();
           $.ajax({
               type:'GET',
               url:"{{ route('sheet.time_table') }}",
               data:{'selected':selected},
               beforeSend:function(){
            	   $('#dessert_response').html('Loading,Please wait....');
                   },
               success:function(data,status) {
            	   $('#dessert_response').html('');
                   	if(status=='success'){
                    	$('.schedule_date').html(data);
                   	}
               }
           });
        });
    });


</script>
@endpush