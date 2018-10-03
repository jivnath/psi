@extends('layouts.app')
@section('content')
    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="box box-info" style="overflow: auto">
                    <div class="box-header with-border">
                        <h3 class="box-title">Company Shift</h3>
                    </div>
                    <div class='box-body container_class'>
                        <table class="table table-striped" id='example'>
                            <thead>
                            <th> Time</th>
                            <th> Subsection</th>
                            <th> Type</th>
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
                                                $doesTimeExist = App\Http\Controllers\PagesController::doesTimeExist($time->time, $company->company_id);
                                            @endphp
                                            @if($doesTimeExist)
                                                <td> {{ $company->comp->name }} </td>
                                                <td>
                                                    @if($type=='normal')
                                                        Necessary
                                                    @else
                                                        {{ ucfirst($type) }}
                                                    @endif
                                                </td>

                                                @foreach($dates as $date)
                                                    @php
                                                        $ctt = App\Http\Controllers\PagesController::getCtt($time->time, $company->id, $date->date);
                                                    @endphp
                                                    @if($ctt)
                                                        @if ($ctt->$type !=0 && $ctt->$type!=null)
                                                            <td class="contenteditable"
                                                                contenteditable="true"
                                                                data-company_id="{{$company->company_id}}"
                                                                data-company_tt_id="{{$company->id}}"
                                                                data-schedule_date="{{ $date->date}}"
                                                                data-job_type="{{$type}}" data-app_source="shift_update"
                                                                data-ctt_id="{{$ctt->id}}"> {{ $ctt->$type }} </td>
                                                        @else
                                                            <td class="contenteditable"
                                                                contenteditable="true"
                                                                data-company_id="{{$company->company_id}}"
                                                                data-company_tt_id="{{$company->id}}"
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
            var tds = document.querySelectorAll("td.contenteditable");
            tds.forEach(function (el, index) {
                employee.inlineEditable(el, function (response) {
                });
            });
        });

    </script>
@endpush
