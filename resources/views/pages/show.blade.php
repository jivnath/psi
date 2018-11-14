@extends('layouts.app')
@section('content')
    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="box box-info">
                    <div class="box-header with-border">
                        <h3 class="box-title">@lang('employee.SectionShift')</h3>
                    </div>
                    <div class='box-body container_class' style="overflow-x: scroll">
                        <table class="table table-striped" id='example'>
                            <thead>
                            <th>@lang('employee.Time')</th>
                            <th>@lang('employee.SubSection')</th>
                            <th>@lang('employee.Type')</th>
                            @foreach($dates as $date)
                                <th>{{ str_replace('-', '/', date('m-d', strtotime( $date->date ))) }}</th>
                            @endforeach
                            </thead>
                            <tbody>
                            <tr>
                            @php
                                $last=''
                            @endphp
                            @foreach($times as $time)
                                @foreach($companies as $company)
                                    @foreach($types as $type)
                                        <tr>
                                            @if($last !==$time->time)
                                                <td rowspan={{ count($companies)*2}} style="vertical-align:middle;text-align:center;font-weight:bolder;"> {{ $time->time }} </td>
                                            @endif
                                            @php
                                                $last=$time->time;
                                                $doesTimeExist = App\Http\Controllers\PagesController::doesTimeExist($time->time, $company->id);
                                            @endphp
                                            @if($doesTimeExist)
                                                <td> {{ $company->name }} </td>
                                                <td>
                                                    @if($type=='normal')
                                                        @lang('employee.Necessary')
                                                    @else
                                                        @lang('employee.Help')
                                                    @endif
                                                </td>
                                                    @foreach($dates as $date)
                                                    @php
                                                        $ctt = App\Http\Controllers\PagesController::getCtt($time->time, $company->companyTT_id, $date->date);
                                                    @endphp
                                                    @if($ctt)
                                                        @if ($ctt->$type !=0 && $ctt->$type!=null)
                                                            <td class="contenteditable"
                                                                contenteditable="true"
                                                                data-company_id="{{$company->id}}"
                                                                data-company_tt_id="{{$company->companyTT_id}}"
                                                                data-schedule_date="{{ $date->date}}"
                                                                data-job_type="{{$type}}" data-app_source="shift_update"
                                                                data-ctt_id="{{$ctt->id}}"> {{ $ctt->$type }} </td>
                                                        @else
                                                            <td class="contenteditable"
                                                                contenteditable="true"
                                                                data-company_id="{{$company->id}}"
                                                                data-company_tt_id="{{$company->companyTT_id}}"
                                                                data-schedule_date="{{ $date->date}}"
                                                                data-job_type="{{$type}}" data-app_source="shift_update"
                                                                data-ctt_id="{{$ctt->id}}"> {{ '' }} </td>
                                                        @endif
                                                    @endif
                                                @endforeach
                                            @endif
                                        </tr>
                                        @endforeach
                                        @endforeach
                                        @endforeach
                                        </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>

@endsection

@push('scripts')
    <script>
        $(document).ready(function () {
            $('.container_class').css('width',window.innerWidth-30);
            var tds = document.querySelectorAll("td.contenteditable");
            tds.forEach(function (el, index) {
                employee.inlineEditable(el, function (response) {
                });
            });
        });

    </script>
@endpush
