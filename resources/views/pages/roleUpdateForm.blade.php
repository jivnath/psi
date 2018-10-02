@extends('layouts.app') @section('content')
<style>
.child-row{
margin-left: 17px;
}
</style>
<section class="content">
	<div class="row">
		<div class='col-md-12'>
			<div class="box box-info">
				<div class="box-header with-border">
					<h3 class="box-title">Update Role</h3>
				</div>
				<div class='box-body'>
					<form name="customize_form" class="form-horizontal" method="POST">
						@foreach($permission_relation as $k=>$i)
						<div class="form-row">
						<div class="col-md-12">
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input"
										id="customCheck-{{str_replace('/','',$k)}}" name="customized[]" value="{{$k}}~~y"
										checked="" onclick="toggleSectionCheck('{{str_replace('/','',$k)}}')"> <label class="custom-control-label"
										for="customCheck-{{str_replace('/','',$k)}}">{{$k}}</label>
								</div>
							</div>

						</div>
						<br>
						<div class="form-row child-row">
							@foreach($i as $item)

							<div class="col-md-3 mb-3">
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input"
										id="customCheck{{$item['id']}}" name="customized[]" value="{{$item['id']}}~~y"
										checked="" data-child="{{str_replace('/','',$k)}}"> <label class="custom-control-label"
										for="customCheck{{$item['id']}}">{{$item['perm_name']?$item['perm_name']:$item['perm_desc']}}</label>
								</div>
							</div>




							@endforeach
						</div>
						@endforeach
					</form>



				</div>

			</div>
		</div>
	</div>
	</div>
</section>

@endsection @push('scripts')
<script>
    $(document).ready(function(){
        var tds = document.querySelectorAll("td.contenteditable");
        tds.forEach(function(el, index){
        	employee.inlineEditable(el, function(response){
            });
        });
    });

</script>
<script type="text/javascript">
	function toggleSectionCheck(item){
		var check =  $("#customCheck-"+item).is(':checked');
        var checkboxes = $(document).find('input[data-child='+item+']');
        checkboxes.prop('checked', check);
	}
</script>
@endpush
