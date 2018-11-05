@extends('layouts.app')
@section('content')
    @php
        $intervalType=['years', 'months', 'days', 'hours', 'minutes', 'seconds'];
    @endphp
    <div class="container-fluid">
        <div class="box box-info">
            <div class="box-header"><h3 style="text-align: center">Viber Alert Setting</h3></div>
            <div class="box-body">
                <div class="row" style="margin-top: 30px">
                    <div class="col-md-8 offset-2">
                        <form action="{{route('storeSetting')}}" method="POST">
                            @csrf
                            <div name="employee_master_data">
                                <h5 style="text-decoration: underline;">Employee Master Data</h5>
                                <div class="row" style="height: 50px;">
                                    <div class="col-md-4">
                                        <label for="card_expiry">Residence Card Expiry </label>
                                    </div>
                                    <div class="col-md-8">
                                        <div class="row">
                                            <div class="col-md-2">
                                                @if($expiry)
                                                    <input type="text" value="{{$expiry->interval_value}}" name="expiryInt" class="form-control">
                                                @else
                                                    <input type="text" name="expiryInt" class="form-control">
                                                @endif

                                            </div>
                                            <div class="col-md-3">

                                                <select name="expiryType" class="form-control">
                                                    @foreach($intervalType as $type)
                                                        @if($expiry)
                                                            <option value="{{$type}}"<?=($expiry->interval_types == $type)?'selected="selected"':''?>>{{$type}}</option>
                                                        @else
                                                            <option value="{{$type}}">{{$type}}</option>
                                                        @endif
                                                    @endforeach
                                                </select>
                                            </div>
                                            <div class="col-md-2">
                                                <i>
                                                    <small>before</small>
                                                </i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br>
                            <hr>

                            <h5 style="text-decoration: underline;">Dessert Sheet</h5>
                            <div name="dessert_sheet" style=" margin-top:10px; margin-bottom: 50px">
                                <div class="row" style="">
                                    <div class="col-md-4">
                                        <label for="card_expiry">Before 1 Day </label>
                                    </div>
                                    <div class="col-md-8">
                                        <div class="row">
                                            <div class="col-md-2">
                                                @if($one)
                                                    <input type="text" value="{{$one->interval_value}}" name="beforeOneInt" class="form-control">
                                                @else
                                                    <input type="text" name="beforeOneInt" class="form-control">
                                                @endif
                                            </div>
                                            <div class="col-md-3">
                                                <select name="beforeOneType" class="form-control">
                                                    @foreach($intervalType as $type)
                                                        @if($one)
                                                            <option value="{{$type}}"<?=($one->interval_types == $type)?'selected="selected"':''?>>{{$type}}</option>
                                                        @else
                                                            <option value="{{$type}}">{{$type}}</option>
                                                        @endif
                                                    @endforeach
                                                </select></div>
                                            <div class="col-md-1">
                                                <i>
                                                    <small>interval</small>
                                                </i>
                                            </div>
                                            <div class="col-md-2">
                                                @if($one)
                                                    <input value="{{$one->interval_endpoint}}" type="text" name="beforeOneCount" class="form-control">
                                                @else
                                                    <input type="text" name="beforeOneCount" class="form-control">
                                                @endif
                                            </div>
                                            <div class="col-md-2">
                                                <i>
                                                    <small>Total Count</small>
                                                </i>
                                            </div>

                                        </div>
                                    </div>
                                </div>

                                <div class="row" style="margin-top:10px">
                                    <div class="col-md-4">
                                        <label for="card_expiry">3 Hours Before </label>
                                    </div>
                                    <div class="col-md-8">
                                        <div class="row">
                                            <div class="col-md-2">
                                                @if($three)
                                                    <input value="{{$three->interval_value}}" type="text" name="beforeThreeInt" class="form-control">
                                                @else
                                                    <input type="text" name="beforeThreeInt" class="form-control">
                                                @endif
                                            </div>

                                            <div class="col-md-3">
                                                <select name="beforeThreeType" class="form-control">
                                                    @foreach($intervalType as $type)
                                                        @if($three)
                                                            <option value="{{$type}}"<?=($three->interval_types == $type)?'selected="selected"':''?>>{{$type}}</option>
                                                        @else
                                                            <option value="{{$type}}">{{$type}}</option>
                                                        @endif
                                                    @endforeach
                                                </select>
                                            </div>
                                            <div class="col-md-1">
                                                <i>
                                                    <small>interval</small>
                                                </i>
                                            </div>
                                            <div class="col-md-2">
                                                @if($three)
                                                    <input value="{{$three->interval_endpoint}}" type="text" name="beforeThreeCount" class="form-control">
                                                @else
                                                    <input type="text" name="beforeThreeCount" class="form-control">
                                                @endif
                                            </div>
                                            <div class="col-md-2">
                                                <i>
                                                    <small>Total Count</small>
                                                </i>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="row" style="margin-top: 10px">
                                    <div class="col-md-4">
                                        <label for="card_expiry">Arrival Confirmation </label>
                                    </div>
                                    <div class="col-md-8">
                                        <div class="row">
                                            <div class="col-md-2">
                                                @if($arrival)
                                                    <input value="{{$arrival->interval_value}}" type="text" name="arrivalInt" class="form-control">
                                                @else
                                                    <input type="text" name="arrivalInt" class="form-control">
                                                @endif
                                            </div>
                                            <div class="col-md-3">
                                                <select name="arrivalType" class="form-control">
                                                    @foreach($intervalType as $type)
                                                        @if($arrival)
                                                            <option value="{{$type}}"<?=($arrival->interval_types == $type)?'selected="selected"':''?>>{{$type}}</option>
                                                        @else
                                                            <option value="{{$type}}">{{$type}}</option>
                                                        @endif
                                                    @endforeach
                                                </select>
                                            </div>

                                            <div class="col-md-1">
                                                <i>
                                                    <small>interval</small>
                                                </i>
                                            </div>
                                            <div class="col-md-2">
                                                @if($arrival)
                                                    <input value="{{$arrival->interval_endpoint}}" type="text" name="arrivalCount" class="form-control">
                                                @else
                                                    <input type="text" name="arrivalCount" class="form-control">
                                                @endif
                                            </div>
                                            <div class="col-md-2">
                                                <i>
                                                    <small>Total Count</small>
                                                </i>
                                                <br>
                                                <div>
                                                    <input type="submit" value="Save" style="margin-top: 30px;" id="submit"
                                                           class="btn btn-primary">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection

@push('scripts')
    <script>

    </script>
@endpush
