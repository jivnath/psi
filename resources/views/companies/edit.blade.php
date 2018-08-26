@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ "Please fill out the form below." }}</div>
                <div class="card-body " style="padding: 10px;">
                    <form action="{{ route('company.update', $companies['master']['id']) }}" method="POST">
                        <input type="hidden" name="_method" value="PUT">
                        <input type="hidden" name="_token" value="{{ csrf_token() }}">
                        <div class="row" style="text-align: center; margin-top: 5px;">
                            <div class="col-md-5">
                                <label for="company_name"> Company Name </label>
                            </div>
                            <div class="col-md-7">
                                <input type="text" name="company_name" value="{{ $companies['master']['name'] }}" class="form-control">
                            </div>
                        </div>

                        <div class="row" style="text-align: center; margin-top: 5px;">
                            <div class="col-md-5">
                                <label for="address"> Address </label>
                            </div>
                            <div class="col-md-7">
                                <input type="text" name="address" value="{{ $companies['master']['address'] }}" class="form-control">
                            </div>
                        </div><div class="row" style="text-align: center; margin-top: 5px;">
                            <div class="col-md-5">
                                <label for="contact"> Contact No. </label>
                            </div>
                            <div class="col-md-7">
                                <input type="text" name="contact" value="{{ $companies['master']['contact_num'] }}" class="form-control">
                            </div>
                        </div>

                    <div class="row" style="text-align: center; margin-top: 5px;">
                        <div class="col-md-5">
                            <input type="checkbox" id="editSubCompany" name="editSub" value="0" onchange="showDropdown(this);" >  Edit Sub Companies
                        </div>
                        <div class="col-md-3"></div>
                        <div class="col-md-4">
                            <button style="margin-top: 15px;" type="submit" class="btn btn-primary">
                                Save
                            </button>

                            <button  type="reset" style="margin-top: 15px; margin-left: 5px; " class="btn btn-danger">
                                Clear
                            </button>
                        </div>
                    </div>
                    </form>
                    <br>
                    <div id="subDropdown" style="display: none;">
                        <hr>
                        <div class="row" style="text-align: center; margin-top: 5px;">
                            <div class="col-md-2"></div>
                            <div class="col-md-4">
                                <label for="address"> Edit Sub Company </label>
                            </div>

                            <div class="col-md-4">
                                <select class="form-control select-sm" name="sub_companies" id="subComp">
                                    <option value="0" >--Choose To Edit--</option>
                                    @if($subCompanies)
                                        @foreach($subCompanies as $sub)
                                            <option value="{{ $sub['id'] }}">{{ $sub['name'] }}</option>                                         </option>
                                        @endforeach
                                    @endif
                                </select>
                            </div>
                            <div class="2"></div>
                        </div>
                    </div>
                        <br>
                        <div id="subCompany" style="display: none">
                            <hr>
                            <div class="row">
                                <div class="col-md-4"></div>
                                <div class="col-md-2">
                                    <label for="subname" class="small-text"> Name </label>
                                </div>
                                <div class="col-md-3">
                                        <input type="text" class="form-control input-sm" value="" name="subname">
                                </div>
                                <div class="col-md-3"></div>

                            </div>
                            <div class="row">
                                <hr>
                                <div class="col-md-4"></div>
                                <div class="col-md-2">
                                    <label for="sub_master" class="small-text"> Master Company </label>
                                </div>
                                <div class="col-md-3">
                                        <select id="sub_master" name="submaster" class="form-control select-sm">
                                            @foreach($master as $com)
                                                <option value="{{ $com->id }}">{{ $com->name }}</option>
                                            @endforeach
                                        </select>
                                </div>
                                <div class="col-md-3"></div>

                            </div>
                            <div class="row">
                                <hr>
                                <div class="col-md-4"></div>
                                <div class="col-md-2">
                                    <label for="subaddress" class="small-text"> Address </label>
                                </div>
                                <div class="col-md-3">
                                        <input type="text" class="form-control input-sm" value="" name="subaddress">
                                </div>
                                <div class="col-md-3"></div>

                            </div>
                            <div class="row">
                                <hr>
                                <div class="col-md-4"></div>
                                <div class="col-md-2">
                                    <label for="subcontact" class="small-text"> Contact No. </label>
                                </div>
                                <div class="col-md-3">
                                        <input type="text" class="form-control input-sm" value="" name="subcontact">
                                </div>
                                <div class="col-md-3"></div>
                            </div>
                            <div class="row">
                                <div class="col-md-6"></div>
                                <div class="col-md-4">
                                    <button id="subsubmit" class="btn btn-primary btn-sm">
                                        Save
                                    </button>

                                    <button id="reset"style=" margin-left: 5px; " class="btn btn-danger btn-sm">
                                        Clear
                                    </button>
                                </div>
                                <div class="col-md-2"></div>
                            </div>
                        </div>
                    </div>

                    <br />
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script type="text/javascript">
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });

    function showDropdown(checkbox){
        if(checkbox.checked==true)
            $("#subDropdown").show("fast");
        if(checkbox.checked==false)
            $("#subDropdown").hide(500);

    }
    $(function () {

        $("#subComp").change(function(){
        var selected = $(this).val();
        if(selected ==0)
        {
            $("#subCompany").hide(500);

        }
        else
        {
            $("#subCompany").show("fast");
            $.ajax({
                type: 'GET',
                url: "{{ route('company.sub') }}",
                dataType:'json',
                data: {'selected': selected},
                success: function (subCom) {
                    var subCompanyEl = $('#subCompany');
                    subCompanyEl.find('input[name=subname]').val(subCom.name);
                    subCompanyEl.find('input[name=subaddress]').val(subCom.address);
                    subCompanyEl.find('input[name=subcontact]').val(subCom.contact);
                }

            });
        }
        });
    });

    $(function(){
        $("#subsubmit").click(function(){
            var id = $("#subComp").val();
            var subCompanyEl = $('#subcompany');
            var name = subCompanyEl.find('input[name=subname]').val();
            var address = subCompanyEl.find('input[name=subaddress]').val();
            var contact = subCompanyEl.find('input[name=subcontact]').val();
            var master = subCompanyEl.find('input[name=submaster]').val();
                $.ajax({
                    type:'POST',
                    url: '{{ route('subcompany') }}',
                    data:{'name':name, 'address':address, 'contact':contact, 'master':master, 'id':id, "_token": "{{ csrf_token() }}"},
                    async: true,
                    success: function(data){
                        alert('saved');
                        $("#subsubmit").text('Saved');
                    }
                });
        });
    });
</script>



