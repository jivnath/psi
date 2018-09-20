@extends('layouts.app')
@section('content')
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
                                                                                       name="manage_type" value="0"> New
                                        Company
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
                                        <form action="{{route('company.saveCompany')}}" method="POST"
                                              class="form-group">
                                            @csrf
                                            @method('post')
                                            <label for="company"><h4><b>Company</b></h4></label>
                                            <div class="input-group">
                                                <div class="input-group-addon">
                                                    <i class="fa fa-building"></i>
                                                </div>
                                                <input type="text" placeholder="Company Name" class="form-control"
                                                       name="company_name"><br>
                                            </div>
                                            <br>

                                            <div class="input-group">
                                                <div class="input-group-addon">
                                                    <i class="	fa fa-phone"></i>
                                                </div>
                                                <input type="text" placeholder="Contact No." class="form-control"
                                                       name="company_contact"><br>
                                            </div>
                                            <br>

                                            <div class="input-group">
                                                <div class="input-group-addon">
                                                    <i class="fas fa-map-marker-alt"></i>
                                                </div>
                                                <input type="text" placeholder="Address" class="form-control"
                                                       name="company_address"><br>
                                            </div>
                                            <br>


                                            <label for="section"><h4><b>Section</b></h4></label>
                                            <div class="input-group">
                                                <div class="input-group-addon">
                                                    <i class="fa fa-building"></i>
                                                </div>
                                                <input type="text" placeholder="Section Name" class="form-control"
                                                       name="section_name"><br>
                                            </div>
                                            <br>

                                            <div class="input-group">
                                                <div class="input-group-addon">
                                                    <i class="	fa fa-phone"></i>
                                                </div>
                                                <input type="text" placeholder="Contact No." class="form-control"
                                                       name="section_contact"><br>
                                            </div>
                                            <br>

                                            <div class="input-group">
                                                <div class="input-group-addon">
                                                    <i class="fas fa-map-marker-alt"></i>
                                                </div>
                                                <input type="text" placeholder="Address" class="form-control"
                                                       name="section_address"><br>
                                            </div>
                                            <br>

                                            <div class="input-group">
                                                <div class="input-group-addon">
                                                    <i class="fa fa-user-circle"></i>
                                                </div>
                                                <input type="text" placeholder="Team Leader" class="form-control"
                                                       name="section_leader"><br>
                                            </div>
                                            <br>

                                            <label for="section"><h4><b>Sub-Section</b></h4></label>
                                            <div class="input-group">
                                                <div class="input-group-addon">
                                                    <i class="fa fa-building"></i>
                                                </div>
                                                <input type="text" placeholder="Sub-section Name" class="form-control"
                                                       name="subsection_name"><br>
                                            </div>
                                            <br>

                                            <input type="submit" value="Submit" class="btn btn-success">
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
                                                <label for="company"><h4><b>Company</b></h4></label>
                                                <select class="form-control" id="companyDropdown" name="allCompanies"
                                                        style="width:75%">
                                                    <option value="0">--Select Company--</option>
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
                                                    <input type="text" placeholder="Company Name"
                                                           class="form-control" name="existing_company_name"
                                                           id="existing_company_name">
                                                </div>
                                                <br>

                                                <div class="input-group">
                                                    <div class="input-group-addon">
                                                        <i class="fa fa-phone"></i>
                                                    </div>
                                                    <input type="text" placeholder="Contact No."
                                                           class="form-control" name="existing_company_contact"
                                                           id="existing_company_contact">
                                                </div>
                                                <br>

                                                <div class="input-group">
                                                    <div class="input-group-addon">
                                                        <i class="fas fa-map-marker-alt"></i>
                                                    </div>
                                                    <input style="width: 70%" type="text" placeholder="Address"
                                                           class="form-control" name="existing_company_address"
                                                           id="existing_company_address">
                                                </div>
                                                <div style="margin-top: 20px;">
                                                    <label for="section"><h4><b>Section</b><span
                                                                    style="margin-left: 20px"
                                                                    class="btn btn-primary btn-sm"
                                                                    id="addSection">Add more</span>
                                                            <span
                                                                    style="margin-left: 20px; display:none"
                                                                    class="btn btn-danger btn-sm"
                                                                    id="cancelSection">Cancel</span>
                                                        </h4></label>
                                                    <select class="form-control input-shorter" name="allSections"
                                                            id="sectionDropdown">
                                                    </select><br>
                                                </div>
                                            </div>


                                            <div id="subsectionDiv" style="display:none">
                                                <div class="input-group">
                                                    <div class="input-group-addon">
                                                        <i class="fa fa-building"></i>
                                                    </div>
                                                    <input type="text" placeholder="Section Name"
                                                           class="form-control" name="existing_section_name"
                                                           id="existing_section_name"><br>
                                                </div>
                                                <br>

                                                <div class="input-group">
                                                    <div class="input-group-addon">
                                                        <i class="fa fa-phone"></i>
                                                    </div>
                                                    <input type="text" placeholder="Contact No."
                                                           class="form-control" name="existing_section_contact"
                                                           id="existing_section_contact"><br>
                                                </div>
                                                <br>
                                                <div class="input-group">
                                                    <div class="input-group-addon">
                                                        <i class="fas fa-map-marker-alt"></i>
                                                    </div>
                                                    <input type="text" placeholder="Address" class="form-control"
                                                           name="existing_section_address"
                                                           id="existing_section_address"><br>
                                                </div>
                                                <br>
                                                <div class="input-group">
                                                    <div class="input-group-addon">
                                                        <i class="fa fa-user-circle"></i>
                                                    </div>
                                                    <input type="text" placeholder="Team Leader"
                                                           class="form-control" name="existing_section_leader"
                                                           id="existing_section_leader"><br>
                                                </div>
                                                <div style="margin-top: 20px;">
                                                    <label for="subsection"><h4><b>Sub-Section</b><span
                                                                    id="addSubsection"
                                                                    style="margin-left: 20px"
                                                                    class="btn btn-primary btn-sm">Add more</span>
                                                            <span
                                                                    id="cancelSubsection"
                                                                    style="margin-left: 20px; display: none"
                                                                    class="btn btn-danger btn-sm">Cancel</span>
                                                        </h4></label>


                                                    <select class="form-control input-shorter"
                                                            name="subsectionDropdown"
                                                            id="subsectionDropdown">
                                                    </select><br>
                                                </div>
                                            </div>
                                            <div id="subNameDiv" style="display: none;">
                                                <div class="input-group">
                                                    <div class="input-group-addon">
                                                        <i class="fa fa-building"></i>
                                                    </div>
                                                    <input type="text" placeholder="Sub-section Name"
                                                           class="form-control" name="existing_subsection_name"
                                                           id="existing_subsection_name"><br>
                                                </div>
                                            </div>
                                            <br>

                                            <span id="dynamicButton" style="display: none;margin-top: 12px"
                                                  class="btn btn-primary">Add</span>
                                            <span style="margin-top: 12px; display:none;" id="submit"
                                                  class="btn btn-success">Update</span>
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
@endsection @push('scripts')
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
            var html = '<option value="0">--Select Section--</option>';
            $('#sectionDropdown').html(html);
            var subHtml = '<option value="0">--Select Sub-Section--</option>';
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
            var option = '<option value="0">--Select Sub-Section--</option>';
            $('#subsectionDropdown').html(option);
            $('#existing_section_name').val('');
            $('#existing_section_contact').val('');
            $('#existing_section_address').val('');
            $('#existing_subsection_name').val('');
            $('#subNameDiv').hide();


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
                        'subName': subName,
                        "_token": "{{ csrf_token() }}"
                    },
                    success: function (data) {
                    }
                });
            }
        });

        $('#addSection').click(function () {
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
        });

        $('#addSubsection').click(function () {
            $(this).hide();
            $('#cancelSubsection').show();

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

        $('#cancelSubsection').click(function(){
            $(this).hide();
            $('#subNameDiv').hide();
            $('#addSection').show();
            $('#submit').show();
            $('#addSubsection').show();
            $("#sectionDiv *").prop('disabled', false);
            $("#companyDiv *").prop('disabled', false);
            $("#subsectionDiv *").prop('disabled', false);
            $('#dynamicButton').hide();
            $('#subsectionDropdown').show();
            $('#subsectionDropdown').prop('selectedIndex', 0);
        });

        $(document).on('click', '.addSection', function () {
            var selectedCompany = $('#sectionDropdown').val();
            var sectionName = $('#existing_section_name').val();
            var sectionContact = $('#existing_section_contact').val();
            var sectionAddress = $('#existing_section_address').val();
            var subName = $('#existing_subsection_name').val();
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
                async: true,
                success: function () {

                }
            });
        });

        $(document).on('click', '.addSubsection', function () {
            var selectedCompany = $('#sectionDropdown').val();
            var subName = $('#existing_subsection_name').val();

            $.ajax({
                type: 'POST',
                data: {
                    'selectedCompany': selectedCompany,
                    'subName': subName
                },
                url: "{{route('addmoreSubsection')}}",
                async: true,
                success: function () {

                }
            });
        });

    </script>
@endpush
