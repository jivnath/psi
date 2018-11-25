@extends('layouts.app') @section('content')
<style>
.child-row{
margin-left: 17px;
}
</style>
<section class="content">
	<div class="row">
		<div class='col-md-12'>
			{{--{{dd($permissionsOfRole)}}--}}
			<div class="box box-info">
				<div class="box-header with-border">
					<h3 class="box-title">@lang('employee.UpdateRole'){{' : '.$role->name}}</h3>
				</div>
				<div class='box-body'>
					<form name="customize_form" class="form-horizontal" action="{{route('storePermissionToRole', $role->id)}}" method="POST">
						@csrf
						@foreach($permission_relation as $k=>$i)
						<div class="form-row">
						<div class="col-md-12">

								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input"
										id="customCheck-{{str_replace('/','',$k)}}"name="customized[]" value="{{str_replace('/','',$k)}}"
										 onclick="toggleSectionCheck('{{str_replace('/','',$k)}}')" {{ (in_array(str_replace('/','',$k), $permissionsOfRole))?'checked':''}} > <label class="custom-control-label"
										for="customCheck-{{str_replace('/','',$k)}}">{{ucwords(str_replace('/','' ,$k))}}</label>
								</div>
							</div>

						</div>
						<br>
						<div class="form-row child-row" style="display: none">
							@foreach($i as $item)
								{{--{{dd($item['id'])}}--}}

							<div class="col-md-3 mb-3">
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input"
										id="customCheck{{$item['id']}}" name="customized[]" value="{{$item['id']}}"
									    data-child="{{str_replace('/','',$k)}}" <?=(in_array($item['id'], $permissionsOfRole))?'checked':''?> > <label class="custom-control-label"
										for="customCheck{{$item['id']}}">{{$item['perm_name']?$item['perm_name']:$item['perm_desc']}}</label>
								</div>
							</div>




							@endforeach
						</div>
						@endforeach
						<div class="row">
							<div class="col-md-10"></div>
							<div class="col-md-2" style="text-align: left">
								<input type="submit" class="btn btn-primary" value="@lang('employee.Save')">
							</div>
						</div>
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
