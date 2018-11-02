@extends('layouts.app')
@section('content')
  <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">
<style>
thead input {
        padding: 3px;
        box-sizing: border-box;
    }
</style>
<section class="content">
	@include('layouts.duplicate_employees')
	<div class="row">
		<div class="col-md-12">
			<div class="box box-info">
				<div class="box-header with-border">
					<h3 class="box-title">Employees List<a href="{{ route('employees.uploadForm') }}" class="btn btn-link" style="margin-left:10px"><small>@lang('employee.UploadNew')</small></a></h3>
					<div class="box-tools pull-right">
						<div class="btn-group">
							<button type="button" class="btn btn-box-tool dropdown-toggle"
								data-toggle="dropdown">
								<i class="fa fa-wrench"></i>
							</button>
							<ul class="dropdown-menu" role="menu">
								<li><a href="#" class='dropdown-item' id='view_columns'>Customize Columns</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="box-body">
				<div>
					<table class="table table-striped table-fixed"
						style="text-align: center" id='example'>
						<thead>
							<tr>
								@foreach($all_col as $column)
								<th class="sticky-top" style="word-wrap: break-word">{{
									ucwords(str_replace('_',' ',ucwords($column->field_name,'_')))}}</th>
								@endforeach

							</tr>
						</thead>
						<tbody>
							@if(count($cells) > 0)
							@foreach($cells as $index => $cell)
							<tr>
								@foreach($all_col as $column)
    								@if($column->field_name != 'updated_at' && $column->field_name != 'psi_number')
        								<td class="contenteditable" data-column="{{ $column->field_name }}"
        									data-old="" contenteditable="true">
        									@if ($column->field_name == 'sex')
												<select name="sex">
        										@foreach($sex as $s)
	        										<option <?= ($cell->{$column->field_name}==$s->name)? 'selected="selected"':''?> value="{{$s->id}}">{{ $s->name }}</option>
        										@endforeach
        										</select>

											@elseif ($column->field_name == 'status_residence')
												<select name = "status_residence">
												<option>none</option>
												<option <?= ($cell->{$column->field_name}=='就労')? 'selected="selected"':''?> value="就労"> 就労 </option>
												<option <?= ($cell->{$column->field_name}=='家族滞在')? 'selected="selected"':''?>  value="家族滞在"> 家族滞在 </option>
												<option <?= ($cell->{$column->field_name}=='留学')? 'selected="selected"':''?> value="留学"> 留学 </option>
												</select>

											@elseif ($column->field_name == 'hourly_wage')
												<select name = "hourly_wage">
													<option>none</option>
													<option <?= ($cell->{$column->field_name}=='通常の雇用主')? 'selected="selected"':''?> value="通常の雇用主"> 通常の雇用主 </option>
													<option <?= ($cell->{$column->field_name}=='セミ雇用者')? 'selected="selected"':''?> value="セミ雇用者"> セミ雇用者 </option>
													<option <?= ($cell->{$column->field_name}=='アルバイト')? 'selected="selected"':''?>value="アルバイト"> アルバイト </option>
												</select>

												@elseif($column->field_name == 'operating_status')
													<select name = "operating_status">
														<option>none</option>
														<option <?= ($cell->{$column->field_name}=='働くこと')? 'selected="selected"':''?> value="働くこと"> 働くこと </option>
														<option <?= ($cell->{$column->field_name}=='低頻度の仕事')? 'selected="selected"':''?> value="低頻度の仕事"> 低頻度の仕事 </option>
														<option <?= ($cell->{$column->field_name}=='やめて ')? 'selected="selected"':''?> value="やめて"> やめて </option>
													</select>
											@elseif($column->field_name == 'status')
												<select name = "status">

													<option <?= ($cell->{$column->field_name}== 1)? 'selected="selected"':''?> value="1"> Available </option>
													<option <?= ($cell->{$column->field_name}== 0)? 'selected="selected"':''?> value="0"> Not Available </option>

												</select>
											@elseif($column->field_name == 'viber_install')
												<select name = "viber_install">

													<option <?= ($cell->{$column->field_name}== 1)? 'selected="selected"':''?> value="1"> Yes </option>
													<option <?= ($cell->{$column->field_name}== 0)? 'selected="selected"':''?> value="0"> No </option>
												</select>
											@else
												{{ $cell->{$column->field_name} }}
											@endif
        								</td>
    								@else
    								<td>{{ $cell->{$column->field_name} }}</td>
    								@endif
								@endforeach
							</tr>
							@endforeach
							@else
							<tr>
								<td colspan="6">No sheets are uploaded</td>
							</tr>
							@endif
						</tbody>
					</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<div class="modal" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Customize Your Columns</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
			<div class="modal-body">
			<form name="customize_form" class='form-horizontal' action="{{ route('customize.field') }}" method="POST" >
			<input type="hidden" name="_method" value="POST">
			<input type="hidden" name="_token" value="{{ csrf_token() }}">
			<input type="hidden" name="modified_by" value="{{ \Session::get('user_id') }}">
			<input type="hidden" name="type" value="employee">
			@foreach($customize_columns->chunk(3) as $index=>$customize_columns_index)
    				<div class="form-row">
    					@foreach($customize_columns_index as $field)
        					<div class="col-md-4 mb-3">
        						<div class="custom-control custom-checkbox">
        							<input type="checkbox" class="custom-control-input"
        								id="customCheck{{$field->id}}" name='customized[]' value='{{$field->id.'~~'.$field->status}}' {{($field->status=='y')?'checked':''}}> <label class="custom-control-label"
        								for="customCheck{{$field->id}}" >{{$field->field_name}}</label>
        						</div>
        					</div>
        				@endforeach
        				</div>
				@endforeach
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<button type="submit" class="btn btn-primary" >Save changes</button>
				</div>
				</form>
			</div>
		</div>
</div>

@endsection @push('scripts')
  <script src='https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js'></script>
    <script src='https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js'></script>

<script>
    $(document).ready(function(){
        $('.box-body div').css({'width':window.innerWidth-90,'overflow': 'scroll','height':window.innerHeight/1.5});

        var tds = document.querySelectorAll("td.contenteditable");
        tds.forEach(function(el, index){
            employee.inlineEditable(el, function(response){
                if(response.errors){
                    $('#validation').text(response.message);
                    $('#validation').show();
                }
            });
        })
    });
    $(document).ready(function() {
        // Setup - add a text input to each footer cell
        $('#example thead th').each( function () {
            var title = $(this).text();
            $(this).html( '<input type="text" placeholder="Search '+title+'" />' );
        } );

        // DataTable
        var table = $('#example').DataTable();

        // Apply the search
        table.columns().every( function () {
            var that = this;

            $( 'input', this.header() ).on( 'keyup change', function () {
                if ( that.search() !== this.value ) {
                    that
                        .search( this.value )
                        .draw();
                }
            } );
        } );
    } );
    $('#view_columns').click(function(){
    	$('#exampleModalLong').modal('show');
     });
    </script>
@endpush
