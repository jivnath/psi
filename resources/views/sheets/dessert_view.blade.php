

            <table class="table table-borderd" style="text-align: center">
                <thead>
                <th>Date</th>
                <th>Time</th>
                <th>No</th>
                <th>Staff No.</th>
                <th>Country</th>
                <th>Name（フリガナ）</th>
                <th>Name（氏名）</th>
                <th>Tel No</th>
                <th>Responsible</th>
                <th>Conformation the day before</th>
                <th>Responsible</th>
                <th>Conform 3 hours ago</th>
                <th>Arrival time in case of late arrival</th>
                <th>Reason for late arrival and absence</th>
                <th>Call Medium/Through</th>
                </thead>
                <tbody>
                @foreach($dessert as $dessert_row)
                    @for($i=1;$i<=$dessert_row->total_require;$i++)
                        <tr>
                            <td> {{$dessert_row->date}} </td>
                            <td> {{$dessert_row->time}} </td>
                            <td> {{$i}} </td>
                            <td class="contenteditable" contenteditable="true">  </td>
                            <td>  </td>
                            <td>  </td>
                            <td>  </td>
                            <td>  </td>
                            <td>  </td>
                            <td> ok </td>
                            <td>  </td>
                            <td>  </td>
                            <td>  </td>
                            <td>  </td>
                            <td>  </td>
                        </tr>
                        @endfor
                        @if($dessert_row->total_require==0)
                        <tr>
                            <td> {{$dessert_row->date}} </td>
                            <td> {{$dessert_row->time}} </td>
                        <td colspan='13'>Not available, <a href="{{Route('shift.show',$dessert_row->master_id)}}" target='_blank'>Add here </a></td>
                        </tr>
                        @endif
                    @endforeach
                </tbody>

            </table>
            <input type='text' id='all_saved_value'>

            <script>
            var allowed_field=[4,5,6,7];
            var main_val;
                $('body').on('focus', '[contenteditable]', function(ee) {
                    const $this = $(this);
                    $this.data('before', $this.html());
                    console.log('preparation..');
                }).on('blur', '[contenteditable]', function(e) {
                    const $this = $(this);
                    if ($this.data('before') !== $this.html()) {
                        $this.data('before', $this.html());
                        $this.trigger('change');


								main_val=$(this).html();
								$.ajax({
			                        type:"GET",
			                        url:"/dessert/findDetails",
			                        data:{'psi_num':main_val},
			                        dataType:'json',
			                        success:function(data){
			                        	main_logical_data=data;
			                        	$.each(data,function(i,v){
			                        		$('#all_saved_value').data(i,v);
				                        });
			                        	findDetails($this);
			                        }

			                    });
                    }
                });
                function findDetails(obj){
                	obj.closest('tr').find('td').each(
                    	    function (i) {
                        	    if($.inArray(i,allowed_field) != -1){
                            	    $(this).html($('#all_saved_value').data(i.toString()));
                        	    }
                    	    });
                }
            </script>