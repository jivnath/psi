@extends('layouts.app') @section('content')

<section class="content">
	<div class="row">
		<div id="validation" class="alert alert-danger" style="display: none"></div>
		<div class="col-md-12">
			<div class="box box-info">
				<div class="box-header with-border">
					<h3 class="box-title">Employees List</h3>
				</div>
				<div class="box-body">
				<div>
					<table class="table table-striped table-fixed"
						style="text-align: center">
						<thead>
							<tr>
								@foreach($columns as $column)
								<th class="sticky" style="word-wrap: break-word">{{__('employee.'.
									ucwords(str_replace('_','',ucwords($column,'_'))))}}</th>
								@endforeach

							</tr>
						</thead>
						<tbody>
							@if(count($cells) > 0) @foreach($cells as $index => $cell)
							<tr>
								@foreach($columns as $column) @if($column != 'updated_at' &&
								$column != 'psi_number')
								<td class="contenteditable" data-column="{{ $column }}"
									data-old="" contenteditable="true">@if ($column == 'sex') <select
									name="sex"> @foreach($sex as $s)
										<option
											<?= ($cell->$column==$s->name)? 'selected="selected"':''?>
											value="$s->id">{{ $s->name }}</option> @endforeach
								</select> @else {{ $cell->{$column} }} @endif
								</td> @else
								<td>{{ $cell->{$column} }}</td> @endif @endforeach
							</tr>
							@endforeach @else
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

@endsection @push('scripts')

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

    var stickyOffset = $('.sticky').offset().top;

    $(window).scroll(function(){
        var sticky = $('.sticky'),
            scroll = $(window).scrollTop();

        if (scroll > stickyOffset) sticky.addClass('sticky-top');
        else sticky.removeClass('sticky-top');
    });
    </script>
@endpush
