 <div class="modal showComments" role="dialog">
                <div class="modal-dialog">

                      <!-- Modal content-->
                      <div class="modal-content">
                        <div class="modal-header">
                          <h4 class="modal-title comments_header">Modal Header</h4>
                        </div>
                        <div class="modal-body comments_body">
                          <div class="form-group">
                          <label for="comment">Comment:</label>
                          <textarea class="form-control comment" rows="5"></textarea>
                        </div>
                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-default save">Save</button>

                          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                      </div>

                    </div>
                  </div>
                  <table class="table table-borderd" style="text-align: center">
                <thead>
                <tr>
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
                <th>Comments</th>
                <th>Action</th>
                </tr>
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
                            <td class="contenteditable" contenteditable="true" data-usage='responsibile'>  </td>
                            <td data-usage='confirmation'>
                                <select class='form-control confirmation'>
                                	<option value='OK'>OK</option>
                                	<option value='Not OK'>Not OK</option>
                                	<option value='No response'>No response</option>
                                </select>
                            </td>
                            <td class="contenteditable" contenteditable="true" data-usage='responsibile_1'>  </td>
                            <td data-usage='confirmation_1'>
                             <select class='form-control confirmation_1'>
                                	<option value='OK'>OK</option>
                                	<option value='Not OK'>Not OK</option>
                                	<option value='No response'>No response</option>
                                </select>
                             </td>
                            <td class="contenteditable" contenteditable="true" data-usage='atlr'>  </td>
                            <td class="contenteditable" contenteditable="true" data-usage='rlaa'>  </td>
                            <td  data-usage='cmt'>
                            <select class='form-control cmt'>
                                	<option value='viber'>viber</option>
                                	<option value='call'>call</option>
                                </select>
                             </td>
                             <td>0</td>
                             <td><button type="button" class="btn btn-primary add_now">Add</button></td>
                             <td style='visibility: hidden;'></td>
                             <td style='visibility: hidden;'></td>
                             <td style='visibility: hidden;'></td>
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
            <input type='hidden' id='all_saved_value'>



            <script>
            var allowed_field=[4,5,6,7];
            var main_val;
            var allowed_pop_up=['Not OK','No response'];
            var is_model_alert=false;
            var last_psi='';
            var last_select='';

                $('body').on('focus change', '[contenteditable]', function(ee) {
                    const $this = $(this);
                    $this.data('before', $this.html());

                    console.log('preparation..');
                    fixCellValue($this);

                    is_model_alert=false;
                }).on('blur', '[contenteditable]', function(e) {
                    const $this = $(this);
                    if ($this.data('before') !== $this.html()) {
                        $this.data('before', $this.html());
                        $this.trigger('change');
                        main_val=$(this).html();
                        var requestor=$this.data('usage');
						if(typeof requestor !=='undefined' && requestor === 'responsibile'){
							console.log('here is console');
							$('#all_saved_value').data('8',$(this).html());
						}
						else if(typeof requestor !=='undefined' && requestor === 'responsibile_1'){
							console.log('here is console for responsibile_1');
							$('#all_saved_value').data('10',$(this).html());
						}
						else if(typeof requestor !=='undefined' && requestor === 'atlr'){
							console.log('here is console for responsibile_1');
							$('#all_saved_value').data('12',$(this).html());
						}
						else if(typeof requestor !=='undefined' && requestor === 'rlaa'){
							console.log('here is console for responsibile_1');
							$('#all_saved_value').data('13',$(this).html());
						}
						else{

                            $('#all_saved_value').data('3',main_val);
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
                    }
                });
                $('.add_now').click(function(){
                	getCell($(this));
					all_record=$('#all_saved_value').data();
					console.log(all_record);
                });
                $('.confirmation').change(function(){
                    /* console.log("yesss");
						var confirmation_data=$(this).val();
						if($.inArray(confirmation_data,allowed_pop_up) !=-1){
							if(is_model_alert!=confirmation_data){
 							is_model_alert=confirmation_data;
 							$('.modal-title').html('<strong>Conformation the day before </strong> for'+$('#all_saved_value').data('0')+','+$('#all_saved_value').data('1')+','+$('#all_saved_value').data('2'));
 							$('.showComments').modal('show');
 							$('.save').click(function(){
									$('#all_saved_value').data('ctdb',$('.comment').val());
									$('.showComments').modal('hide');
     						});
							}
						}
						$this.data('confirmation_status',confirmation_data);
						$('#all_saved_value').data('9',confirmation_data); */
             	   		console.log("yesss");
						var confirmation_data=$(this).find('option:selected').val();
						$(this).data('confirmation_status',confirmation_data);
						$(this).closest('tr').find('td').each(
		                	    function (i) {
		                    	    if(i==17){
    		                	    	$('#all_saved_value').data(i.toString(),confirmation_data);
    		                    	    $(this).html(confirmation_data);
		                    	    }
		                	    });
						$('#all_saved_value').data('9',confirmation_data);

                 });
                $('.confirmation_1').change(function(){
                    /* console.log("yesss");
						var confirmation_data=$(this).val();
						if($.inArray(confirmation_data,allowed_pop_up) !=-1){
							if(is_model_alert!=confirmation_data){
 							is_model_alert=confirmation_data;
 							$('.modal-title').html('<strong>Conformation the day before </strong> for'+$('#all_saved_value').data('0')+','+$('#all_saved_value').data('1')+','+$('#all_saved_value').data('2'));
 							$('.showComments').modal('show');
 							$('.save').click(function(){
									$('#all_saved_value').data('ctdb',$('.comment').val());
									$('.showComments').modal('hide');
     						});
							}
						}
						$this.data('confirmation_status',confirmation_data);
						$('#all_saved_value').data('9',confirmation_data); */
             	   		console.log("yesss");
						var confirmation_data=$(this).find('option:selected').val();
						$(this).data('confirmation_status_1',confirmation_data);
						$(this).closest('tr').find('td').each(
		                	    function (i) {
		                    	    if(i==18){
    		                	    	$('#all_saved_value').data(i.toString(),confirmation_data);
    		                    	    $(this).html(confirmation_data);
		                    	    }
		                	    });
						$('#all_saved_value').data('11',confirmation_data);

                 });
                $('.cmt').change(function(){
                    /* console.log("yesss");
						var confirmation_data=$(this).val();
						if($.inArray(confirmation_data,allowed_pop_up) !=-1){
							if(is_model_alert!=confirmation_data){
 							is_model_alert=confirmation_data;
 							$('.modal-title').html('<strong>Conformation the day before </strong> for'+$('#all_saved_value').data('0')+','+$('#all_saved_value').data('1')+','+$('#all_saved_value').data('2'));
 							$('.showComments').modal('show');
 							$('.save').click(function(){
									$('#all_saved_value').data('ctdb',$('.comment').val());
									$('.showComments').modal('hide');
     						});
							}
						}
						$this.data('confirmation_status',confirmation_data);
						$('#all_saved_value').data('9',confirmation_data); */
             	   		console.log("yesss");
						var confirmation_data=$(this).find('option:selected').val();
						$(this).data('cmt',confirmation_data);
						$(this).closest('tr').find('td').each(
		                	    function (i) {
		                    	    if(i==19){
    		                	    	$('#all_saved_value').data(i.toString(),confirmation_data);
    		                    	    $(this).html(confirmation_data);
		                    	    }
		                	    });
						$('#all_saved_value').data('14',confirmation_data);

                 });
                function findDetails(obj){
                	obj.closest('tr').find('td').each(
                    	    function (i) {
                            	    if($.inArray(i,allowed_field) != -1){
                                	    $(this).html($('#all_saved_value').data(i.toString()));
                            	    }
                        	    if($.inArray(i,[0,1,2]) != -1){
                            	    $('#all_saved_value').data(i.toString(),$(this).html());
                        	    }
                    	    });
                }
                function fixCellValue(obj){

                	obj.closest('tr').find('td').each(
                	    function (i) {
                    	    if($.inArray(i,[9,11,14]) ==-1){
                    	    	$('#all_saved_value').removeData('"'+i+'"');
                	    		$('#all_saved_value').data(i.toString(),$(this).html());
                    	    }
                    	    else{
                        	    if(i==9){
                            	    console.log($(this).data('confirmation_status'));
                        	    	$('#all_saved_value').data(i.toString(),$(this).data('confirmation_status'));
                        	    }
                        	    else if(i==11){
                            	    console.log($(this).data('confirmation_status_1'));
                        	    	$('#all_saved_value').data(i.toString(),$(this).data('confirmation_status_1'));
                        	    }
                        	    else if(i==14){
                            	    console.log($(this).data('cmt'));
                        	    	$('#all_saved_value').data(i.toString(),$(this).data('cmt'));
                        	    }
                        	   }
                	    });
                    }
                function getCell(obj){


                	obj.closest('tr').find('td').each(
                	    function (i) {
                    	    console.log(i);
                	    	$('#all_saved_value').data(i.toString(),$(this).html());
                	    });
                    }
            </script>