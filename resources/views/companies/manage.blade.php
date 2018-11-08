@extends('layouts.app') 
@section('content')

<section class="content">
    <div id="alert" style="display: none">
        <div class="alert alert-success" role="alert">
            <strong>@lang('employee.Success'): </strong><span id="message"></span>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="box">
                <div class="box-header">
                    <h4>@lang('employee.ManageCompany')</h4>
                </div>
                <div class="box-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="btn-group" data-toggle="buttons">
                                <label class="radio_click btn btn-primary"> <input type="radio"
                                                                                       name="manage_type" value="0"> @lang('employee.NewCompany')
                                    </label> <label class="radio_click btn btn-primary"> <input
                                                type="radio" name="manage_type" value="1"> @lang('employee.ExistingCompany')
                                    </label>
                            </div>

                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12" id="forNew" style="display: none">
                            <div class="box box-info">

                                <div class="box-body">
                                    <form action="{{route('company.saveCompany')}}" method="POST" class="form-group">
                                        @csrf @method('post')
                                        <label for="company"><h4><b>@lang('employee.Company')</b></h4></label>
                                        <div class="input-group">
                                            <div class="input-group-addon">
                                                <i class="fa fa-building"></i>
                                            </div>
                                            <input type="text" placeholder="@lang('employee.CompanyName')" class="form-control" name="company_name" required><br>
                                        </div>
                                        <br>

                                        <div class="input-group">
                                            <div class="input-group-addon">
                                                <i class="	fa fa-phone"></i>
                                            </div>
                                            <input type="text" placeholder="@lang('employee.ContactNo')" class="form-control" name="company_contact" required><br>
                                        </div>
                                        <br>

                                        <div class="input-group">
                                            <div class="input-group-addon">
                                                <i class="fas fa-map-marker-alt"></i>
                                            </div>
                                            <input type="text" placeholder="@lang('employee.Address')" class="form-control" name="company_address" required><br>
                                        </div>
                                        <br>


                                        <label for="section"><h4><b>@lang('employee.Section')</b></h4></label>
                                        <div class="input-group">
                                            <div class="input-group-addon">
                                                <i class="fa fa-building"></i>
                                            </div>
                                            <input type="text" placeholder="@lang('employee.SectionName')" class="form-control" name="section_name" required><br>
                                        </div>
                                        <br>

                                        <div class="input-group">
                                            <div class="input-group-addon">
                                                <i class="	fa fa-phone"></i>
                                            </div>
                                            <input type="text" placeholder="@lang('employee.ContactNo')" class="form-control" name="section_contact" required><br>
                                        </div>
                                        <br>

                                        <div class="input-group">
                                            <div class="input-group-addon">
                                                <i class="fas fa-map-marker-alt"></i>
                                            </div>
                                            <input type="text" placeholder="@lang('employee.Address')" class="form-control" name="section_address" required><br>
                                        </div>
                                        <br>

                                        <label for="section"><h4><b>@lang('employee.SubSection')</b></h4></label>
                                        <div class="input-group">
                                            <div class="input-group-addon">
                                                <i class="fa fa-building"></i>
                                            </div>
                                            <input type="text" placeholder="@lang('employee.SubsectionName')" class="form-control" name="subsection_name" required><br>
                                        </div>
                                        <br>

                                        <input type="submit" id="toSubmit" value="@lang('employee.Submit')" class="btn btn-success">
                                    </form>
                                </div>
                            </div>
                        </div>
                        {{--edit part starts here--}}
                        <div class="col-md-12" id="forExisting" style="display: none">
                            <div class="box box-info">
                                <div class="box-body">
                                    <form class="form-group">
                                        <div id="companyDiv">
                                            <label for="company"><h4><b>@lang('employee.Company')</b></h4></label>
                                            <select class="form-control" id="companyDropdown" name="allCompanies" style="width:75%">
                                                    <option value="0">--@lang('employee.SelectCompany')--</option>
                                                    @foreach($masterCompany as $master)
                                                        <option value="{{$master->id}}">{{$master->name}}</option>
                                                    @endforeach
                                                </select><br>
                                        </div>
                                        <div id="sectionDiv" style="display:none">
                                            <div class="input-group">
                                                <div class="input-group-addon">
                                                    <i class="fa fa-building"></i>
                                                </div>
                                                <input type="text" placeholder="@lang('employee.CompanyName')" class="form-control" name="existing_company_name" id="existing_company_name">
                                            </div>
                                            <br>

                                            <div class="input-group">
                                                <div class="input-group-addon">
                                                    <i class="fa fa-phone"></i>
                                                </div>
                                                <input type="text" placeholder="@lang('employee.ContactNo')" class="form-control" name="existing_company_contact" id="existing_company_contact">
                                            </div>
                                            <br>

                                            <div class="input-group">
                                                <div class="input-group-addon">
                                                    <i class="fas fa-map-marker-alt"></i>
                                                </div>
                                                <input style="width: 70%" type="text" placeholder="@lang('employee.Address')" class="form-control" name="existing_company_address" id="existing_company_address">
                                            </div>
                                            <div style="margin-top: 20px;">
                                                <label for="section"><h4><b>@lang('employee.Section')</b><span
                                                                    style="margin-left: 20px"
                                                                    class="btn btn-primary btn-sm"
                                                                    id="addSection">@lang('employee.Addmore')</span>
                                                            <span
                                                                    style="margin-left: 20px; display:none"
                                                                    class="btn btn-danger btn-sm"
                                                                    id="cancelSection">@lang('employee.Cancel')</span>
                                                        </h4></label>
                                                <select class="form-control input-shorter" name="allSections" id="sectionDropdown">
                                                    </select><br>
                                            </div>
                                        </div>


                                        <div id="subsectionDiv" style="display:none">
                                            <div class="input-group">
                                                <div class="input-group-addon">
                                                    <i class="fa fa-building"></i>
                                                </div>
                                                <input type="text" placeholder="@lang('employee.SectionName')" class="form-control" name="existing_section_name" id="existing_section_name"><br>
                                            </div>
                                            <br>

                                            <div class="input-group">
                                                <div class="input-group-addon">
                                                    <i class="fa fa-phone"></i>
                                                </div>
                                                <input type="text" placeholder="@lang('employee.ContactNo')" class="form-control" name="existing_section_contact" id="existing_section_contact"><br>
                                            </div>
                                            <br>
                                            <div class="input-group">
                                                <div class="input-group-addon">
                                                    <i class="fas fa-map-marker-alt"></i>
                                                </div>
                                                <input type="text" placeholder="@lang('employee.Address')" class="form-control" name="existing_section_address" id="existing_section_address"><br>
                                            </div>
                                            <br>

                                            <div style="margin-top: 20px;">
                                                <label for="subsection"><h4><b>@lang('employee.SubSection')</b><span
                                                                    id="addSubsection"
                                                                    style="margin-left: 20px"
                                                                    class="btn btn-primary btn-sm">@lang('employee.Addmore')</span>
                                                            <span
                                                                    id="cancelSubsection"
                                                                    style="margin-left: 20px; display: none"
                                                                    class="btn btn-danger btn-sm">@lang('employee.Cancel')</span>
                                                        </h4></label>


                                                <select class="form-control input-shorter" name="subsectionDropdown" id="subsectionDropdown">
                                                    </select><br>
                                            </div>
                                        </div>
                                        <div id="subNameDiv" style="display: none;">
                                            <div class="input-group">
                                                <div class="input-group-addon">
                                                    <i class="fa fa-building"></i>
                                                </div>
                                                <input type="text" placeholder="@lang('employee.SubsectionName')" class="form-control" name="existing_subsection_name" id="existing_subsection_name"
                                                    required><br>
                                            </div>
                                        </div>
                                        <br>
                                        
                                        <div id="inputalert" style="display:none;margin-left:1.1%;color:red;font-size:medium" class="col-md-9">
                                                <span id="imessage" style="float:right"></span>
                                        </div>

                                        <span id="dynamicButton" style="display: none;margin-top: 12px" class="btn btn-primary">@lang('employee.Add')</span>
                                        <span style="margin-top: 12px; display:none;" id="submit" class="btn btn-success">@lang('employee.Update')</span>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
</section>
@endsection
 @push('scripts')
<script type="text/javascript">
    $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });

        $('.radio_click').click(function () {
            radio_val = $(this).find('input[type=radio][name=manage_type]').val();
            if (radio_val == 0) {
                $('#forNew').show();
                $('#forExisting').hide();
            }
            else {
                $('#forExisting').show();
                $('#forNew').hide();
            }
        });

        $('#companyDropdown').change(function () {
            var html = '<option value="0">--@lang('employee.SelectSection')--</option>';
            $('#sectionDropdown').html(html);
            var subHtml = '<option value="0">--@lang('employee.SelectSubsection')--</option>';
            $('#subsectionDropdown').html(subHtml);
            $('#existing_company_name').val('');
            $('#existing_company_contact').val('');
            $('#existing_company_address').val('');
            $('#existing_section_name').val('');
            $('#existing_section_contact').val('');
            $('#existing_section_address').val('');
            $('#existing_subsection_name').val('');
            $('#subsectionDiv').hide();

            var selectedCompany = $('#companyDropdown').val();
            if (selectedCompany != 0) {
                $.ajax({
                    type: 'GET',
                    dataType: 'json',
                    data: {'selectedCompany': selectedCompany},
                    url: "{{route('getSection')}}",
                    success: function (data) {
                        let i;
                        for (i = 0; i < data.sections.length; i++) {
                            var options = '<option value=' + data.sections[i].id + '>' + data.sections[i].name + '</option>';
                            $('#sectionDropdown').append(options);
                        }
                        $('#existing_company_name').val(data.company.name);
                        $('#existing_company_contact').val(data.company.contact_num);
                        $('#existing_company_address').val(data.company.address);
                        $('#sectionDiv').show();
                        $('#submit').show();


                    }
                });
            }
            else {
                $('#sectionDiv').hide();
                $('#submit').hide();

            }
        });

        $('#sectionDropdown').change(function () {
            var selectedSection = $('#sectionDropdown').val();
            var option = '<option value="0">--@lang('employee.SelectSubsection')--</option>';
            $('#subsectionDropdown').show();
            $('#subsectionDropdown').html(option);
            $('#existing_section_name').val('');
            $('#existing_section_contact').val('');
            $('#existing_section_address').val('');
            $('#existing_subsection_name').val('');
            $('#subNameDiv').hide();
            // console.log(selectedSection);


            if (selectedSection != 0) {

                $.ajax({
                    type: 'GET',
                    dataType: 'json',
                    data: {'selectedCompany': selectedSection},
                    url: "{{route('getSection')}}",
                    success: function (data) {
                        let i;
                        for (i = 0; i < data.sections.length; i++) {
                            var options = '<option value=' + data.sections[i].id + '>' + data.sections[i].name + '</option>';
                            $('#subsectionDropdown').append(options);
                        }
                        console.log(selectedSection);
                        $('#existing_section_name').val(data.company.name);
                        $('#existing_section_contact').val(data.company.contact_num);
                        $('#existing_section_address').val(data.company.address);
                        $("#subsectionDiv").show();
                    }
                });
            }
            else {
                $('#subsectionDiv').hide();
            }

        });

        $('#subsectionDropdown').change(function () {
            var selectedSubsection = $('#subsectionDropdown').val();
            if (selectedSubsection != 0) {

                $.ajax({
                    type: 'GET',
                    dataType: 'json',
                    data: {'selectedCompany': selectedSubsection},
                    url: "{{route('subSection')}}",
                    success: function (data) {
                        $('#subNameDiv').show();
                        $('#existing_subsection_name').val(data.name);
                        // alert(data.name);
                    }
                });
            }
            else {
                $('#existing_subsection_name').val('');
                $('#subNameDiv').hide();

            }
        });

        $('#submit').click(function () {

            var companyId = $('#companyDropdown').val();
            if (companyId != 0) {
                var companyName = $('#existing_company_name').val();
                var companyContact = $('#existing_company_contact').val();
                var companyAddress = $('#existing_company_address').val();

                var sectionId = $('#sectionDropdown').val();
                var sectionName = $('#existing_section_name').val();
                var sectionContact = $('#existing_section_contact').val();
                var sectionAddress = $('#existing_section_address').val();
                var sectionLeader = $('#existing_section_leader').val();

                var subId = $('#subsectionDropdown').val();
                var subName = $('#existing_subsection_name').val();

                $.ajax({
                    type: 'POST',
                    url: '{{route("updateCompanies")}}',
                    dataType: 'json',
                    async: true,
                    data: {
                        'companyId': companyId,
                        'companyName': companyName,
                        'companyContact': companyContact,
                        'companyAddress': companyAddress,
                        'sectionId': sectionId,
                        'sectionName': sectionName,
                        'sectionContact': sectionContact,
                        'sectionAddress': sectionAddress,
                        // 'sectionLeader':sectionLeader,
                        'subId': subId,
                        'subName': subName
                    },
                    success: function (data) {
                        $("#alert").show()
                        $("#message").html('<span>{{trans('employee.Updated!')}}</span>');
                        $(function () {
                            $('html, body').animate({
                                scrollTop: $("#alert").offset().top
                            }, 500);
                            setTimeout(function () {
                                $("#alert").hide(500);
                            }, 4000);
                        });
                    }
                });
            }
        });

        $('#addSection').click(function () {
            var companyId = $('#companyDropdown').val();
            $('#dynamicButton').attr('title', companyId);
            $('#sectionDropdown').hide();
            $('#subsectionDropdown').hide();
            $(this).hide();
            $('#addSubsection').hide();
            $('#subsectionDiv').show();
            $('#subNameDiv').show();
            $('#existing_subsection_name').val('');
            $('#dynamicButton').addClass('addSection');
            $('#dynamicButton').show();
            $('#dynamicButton').removeClass('addSubsection');
            $('#submit').hide();
            $('#existing_section_name').val('');
            $('#existing_section_contact').val('');
            $('#existing_section_address').val('');
            $('#existing_subsection_name').val('');
            $("#companyDiv *").prop('disabled', true);
            $("#sectionDiv *").prop('disabled', true);
            $("#cancelSection").show();
        });

        $('#addSubsection').click(function () {
            $(this).hide();
            $('#cancelSubsection').show();

            var sectionId = $('#sectionDropdown').val();
            $('#dynamicButton').attr('title', sectionId);
            $('#existing_subsection_name').val('');
            $('#subsectionDropdown').hide();
            $('#dynamicButton').show();
            $('#dynamicButton').addClass('addSubsection');
            $('#dynamicButton').removeClass('addSection');
            $('#subNameDiv').show();
            $('#submit').hide();
            $('#addSection').hide();
            $("#sectionDiv *").prop('disabled', true);
            $("#companyDiv *").prop('disabled', true);
            $("#subsectionDiv *").prop('disabled', true);
        });

        $('#cancelSubsection').click(function () {
            $(this).hide();
            $('#subNameDiv').hide();
            $('#submit').show();
            $('#addSubsection').show();
            $("#sectionDiv *").prop('disabled', false);
            $("#companyDiv *").prop('disabled', false);
            $("#subsectionDiv *").prop('disabled', false);
            $('#addSection').show();
            $('#dynamicButton').hide();
            $("#inputalert").hide()
            $('#subsectionDropdown').show();
            $('#subsectionDropdown').prop('selectedIndex', 0);
        });

        $('#cancelSection').click(function () {
            $(this).hide();
            $('#addSubsection').show();
            $('#addSection').show();
            $('#sectionDropdown').show();
            $('#sectionDropdown').prop('selectedIndex', 0);
            $('#dynamicButton').hide();
            $("#sectionDiv *").prop('disabled', false);
            $("#companyDiv *").prop('disabled', false);
            $("#subsectionDiv *").prop('disabled', false);
            $("#subsectionDiv").hide();
            $('#subNameDiv').hide();
            $('#submit').show();
            $("#inputalert").hide()


        });

        $(document).on('click', '.addSection', function () {
            var selectedCompany = $('#dynamicButton').attr('title');
            var sectionName = $('#existing_section_name').val();
            var sectionContact = $('#existing_section_contact').val();
            var sectionAddress = $('#existing_section_address').val();
            var subName = $('#existing_subsection_name').val();
            if (sectionName != '' && sectionContact != '' && sectionAddress != '' && subName != '') {

                $.ajax({
                    type: 'POST',
                    data: {
                        'selectedCompany': selectedCompany,
                        'sectionName': sectionName,
                        'sectionContact': sectionContact,
                        'sectionAddress': sectionAddress,
                        'subName': subName
                    },
                    url: "{{route('addmoreSection')}}",
                    dataType: 'json',
                    async: true,
                    success: function (data) {
                        $(this).hide();
                        $('#addSubsection').show();
                        $('#addSection').show();
                        $('#sectionDropdown').show();
                        $('#sectionDropdown').prop('selectedIndex', 0);
                        $('#dynamicButton').hide();
                        $("#sectionDiv *").prop('disabled', false);
                        $("#companyDiv *").prop('disabled', false);
                        $("#subsectionDiv *").prop('disabled', false);
                        $("#subsectionDiv").hide();
                        $('#subNameDiv').hide();
                        $('#cancelSection').hide();

                        var newSection = '<option value="' + data.id + '">' + data.name + '</option>'
                        $('#sectionDropdown').append(newSection);
                        $("#inputalert").hide()
                        $("#alert").show()
                        $("#message").html('<span>{{trans('employee.SectionAdded!')}}</span>');
                        $(function () {
                            $('html, body').animate({
                                scrollTop: $("#alert").offset().top
                            }, 500);
                            setTimeout(function () {
                                $("#alert").hide(500);
                            }, 4000);
                        });  
                    }
                });
            }
            else
              // alert('* Input all fields!');
              $("#inputalert").show()
                        $("#imessage").html('<span>{{trans('employee.Pleaseinputallfields')}}</span>');
                           
                       
             
        });

        $(document).on('click', '.addSubsection', function () {
            var selectedCompany = $('#dynamicButton').attr('title');
            var subName = $('#existing_subsection_name').val();
            if (subName != '') {
                $.ajax({
                    type: 'POST',
                    data: {
                        'selectedCompany': selectedCompany,
                        'subName': subName
                    },
                    url: "{{route('addmoreSubsection')}}",
                    dataType: 'json',
                    async: true,
                    success: function (data) {
                        $(this).hide();
                        $('#subNameDiv').hide();
                        $('#submit').show();
                        $('#addSubsection').show();
                        $("#sectionDiv *").prop('disabled', false);
                        $("#companyDiv *").prop('disabled', false);
                        $("#subsectionDiv *").prop('disabled', false);
                        $('#addSection').show();
                        $('#dynamicButton').hide();
                        $('#subsectionDropdown').show();
                        $('#subsectionDropdown').prop('selectedIndex', 0);
                        $('#cancelSubsection').hide()

                        var newSub = '<option value="' + data.id + '">' + data.name + '</option>';
                        $('#subsectionDropdown').append(newSub);
                        $("#inputalert").hide();
                        $("#alert").show()
                        $("#message").html('<span>{{trans('employee.SubsectionAdded!')}}</span>');
                        $(function () {
                            $('html, body').animate({
                                scrollTop: $("#alert").offset().top
                            }, 500);
                            setTimeout(function () {
                                $("#alert").hide(500);
                            }, 4000);
                        });
                    }
                });
            }
            else{
               // alert('* Input sub-section name!')
               $("#inputalert").show()
                        $("#imessage").html('<span>{{trans('employee.Pleaseinputsubsectionname')}}</span>');
            }
        });
</script>

@endpush