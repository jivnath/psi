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
										id="customCheck231" name="customized[]" value="231~~y"
										checked=""> <label class="custom-control-label"
										for="customCheck231">{{$k}}</label>
								</div>
							</div>

						</div>
						<br>
						<div class="form-row child-row">
							@foreach($i as $item)

							<div class="col-md-3 mb-3">
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input"
										id="customCheck231" name="customized[]" value="231~~y"
										checked=""> <label class="custom-control-label"
										for="customCheck231">{{$item['perm_name']?$item['perm_name']:$item['perm_desc']}}</label>
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
@endpush
