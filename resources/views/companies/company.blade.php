@extends('layouts.app') @section('content')
<section class="content">
	<div class="row">
		<div class="col-md-12">
			<div class="box">
				<div class="box-header">
					<h3>Manage Company</h3>
				</div>
				<div class="box-body">
					<div class="row">
						<div class="col-md-12">
							<div class="btn-group" data-toggle="buttons">
								<label class="radio_click btn btn-primary"> <input type="radio"
									name="manage_type" value="0"> New Company
								</label> <label class="radio_click btn btn-primary"> <input
									type="radio" name="manage_type" value="1"> Existing Company
								</label>
							</div>

						</div>
					</div>
					<div class="row">
						<div class="col-md-12" id="forNew" style="display: none">
							<div class="box box-info">

									<div class="box-body">
										 <form class="form-group">
                            <label for="company"><h4><b>Company</b></h4></label>
                            <div class="input-group">
                                <div class="input-group-addon">
                                    <i class="fa fa-building"></i>
                                </div>
                                <input type="text" placeholder="Company Name" class="form-control" name="company_name"><br>
                            </div><br>

                            <div class="input-group">
                                <div class="input-group-addon">
                                    <i class="	fa fa-phone"></i>
                                </div>
                                <input type="text" placeholder="Contact No." class="form-control" name="company_contact"><br>
                            </div><br>

                            <div class="input-group">
                                <div class="input-group-addon">
                                    <i class="fas fa-map-marker-alt"></i>
                                </div>
                                <input type="text" placeholder="Address" class="form-control" name="company_address"><br>
                            </div><br>


                            <label for="section"><h4><b>Section</b></h4></label>
                            <div class="input-group">
                                <div class="input-group-addon">
                                    <i class="fa fa-building"></i>
                                </div>
                                <input type="text" placeholder="Section Name" class="form-control" name="section_name"><br>
                            </div><br>

                            <div class="input-group">
                                <div class="input-group-addon">
                                    <i class="	fa fa-phone"></i>
                                </div>
                                <input type="text" placeholder="Contact No." class="form-control" name="section_contact"><br>
                            </div><br>

                            <div class="input-group">
                                <div class="input-group-addon">
                                    <i class="fas fa-map-marker-alt"></i>
                                </div>
                                <input type="text" placeholder="Address" class="form-control" name="section_address"><br>
                            </div><br>

                            <div class="input-group">
                                <div class="input-group-addon">
                                    <i class="fa fa-user-circle"></i>
                                </div>
                                <input type="text" placeholder="Team Leader" class="form-control" name="section_leader"><br>
                            </div><br>

                            <label for="section"><h4><b>Sub-Section</b></h4></label>
                            <div class="input-group">
                                <div class="input-group-addon">
                                    <i class="fa fa-building"></i>
                                </div>
                                <input type="text" placeholder="Sub-section Name" class="form-control" name="subsection_name"><br>
                            </div><br>

                            <input type="submit" value="Submit" class="btn btn-success">
                        </form>
									</div>
								</form>
							</div>
						</div>
						<div class="col-md-12" id="forExisting" style="display: none">
							<div class="box box-info">
								<div class="box-body">
									 <form class="form-group">
                            <label for="company"><h4><b>Company</b></h4></label>
                            <select class="form-control" name="allCompanies" style="width:75%">
                                @foreach($masterCompany as $master)
                                    <option value="{{$master->id}}">{{$master->name}}</option>
                                @endforeach
                            </select><br>


                            <div class="input-group">
                                <div class="input-group-addon">
                                    <i class="fa fa-building"></i>
                                </div>
                                <input  type="text" placeholder="Company Name" class="form-control" name="existing_company_name">
                            </div><br>


                            <div class="input-group">
                                <div class="input-group-addon">
                                    <i class="fa fa-phone"></i>
                                </div>
                                <input  type="text" placeholder="Contact No." class="form-control" name="existing_company_contact">
                            </div><br>

                            <div class="input-group">
                                <div class="input-group-addon">
                                    <i class="fas fa-map-marker-alt"></i>
                                </div>
                                <input style="width: 70%" type="text" placeholder="Address" class="form-control" name="existing_company_address">
                            </div><br>

                            <label for="section"><h4><b>Section</b><button style="margin-left: 20px" class="btn btn-primary btn-sm">Add more</button></h4></label>
                            <select class="form-control input-shorter" name="allSections">
                                <option>Section11</option>
                                <option>Section12</option>
                            </select><br>

                            <div class="input-group">
                                <div class="input-group-addon">
                                    <i class="fa fa-building"></i>
                                </div>
                                <input type="text" placeholder="Section Name" class="form-control" name="existing_section_name"><br>
                            </div><br>

                            <div class="input-group">
                                <div class="input-group-addon">
                                    <i class="fa fa-phone"></i>
                                </div>
                                <input type="text" placeholder="Contact No." class="form-control" name="existing_section_contact"><br>
                            </div><br>
                            <div class="input-group">
                                <div class="input-group-addon">
                                    <i class="fas fa-map-marker-alt"></i>
                                </div>
                                <input type="text" placeholder="Address" class="form-control" name="existing_section_address"><br>
                            </div><br>
                            <div class="input-group">
                                <div class="input-group-addon">
                                    <i class="fa fa-user-circle"></i>
                                </div>
                                <input type="text" placeholder="Team Leader" class="form-control" name="existing_section_leader"><br>
                            </div><br>

                            <label for="section"><h4><b>Sub-Section</b><button style="margin-left: 20px" class="btn btn-primary btn-sm">Add more</button></h4></label>


                            <select class="form-control input-shorter" name="allSubsections">
                                <option>Subsection111</option>
                                <option>Subsection112</option>
                            </select><br>
                            <div class="input-group">
                                <div class="input-group-addon">
                                    <i class="fa fa-building"></i>
                                </div>
                                <input type="text" placeholder="Sub-section Name" class="form-control" name="existing_subsection_name"><br>
                            </div><br>
                            <input type="submit" value="Submit" class="btn btn-success">


								</div>
								 </form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
@endsection @push('scripts')
<script type="text/javascript">
    	$('.radio_click').click(function(){
			radio_val=$(this).find('input[type=radio][name=manage_type]').val();
			 if(radio_val==0)
	            {
	                $('#forNew').show();
	                $('#forExisting').hide();
	            }
	            else
	            {
	                $('#forExisting').show();
	                $('#forNew').hide();
	            }
    	 });
    </script>
@endpush
