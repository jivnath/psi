@extends('layouts.app')

@section('content')
<section class="content">
<div class="row">
        <div class="col-md-3 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon bg-aqua"><i class="ion ion-ios-gear-outline"></i></span>

            <div class="info-box-content">
              <span class="info-box-text">Schedule Accuracy</span>
              <span class="info-box-number">90<small>%</small></span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->
        <div class="col-md-3 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon bg-red"><i class="ios-checkmark-circle"></i></span>

            <div class="info-box-content">
              <span class="info-box-text">Confirmation</span>
              <span class="info-box-number">41,410</span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->

        <!-- fix for small devices only -->
        <div class="clearfix visible-sm-block"></div>

        <div class="col-md-3 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon bg-green"><i class="ion ion-volume-mute"></i></span>

            <div class="info-box-content">
              <span class="info-box-text">Not Response</span>
              <span class="info-box-number">760</span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->
        <div class="col-md-3 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon bg-yellow"><i class="ion ion-ios-people-outline"></i></span>

            <div class="info-box-content">
              <span class="info-box-text">New Members</span>
              <span class="info-box-number">2,000</span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->
      </div>
    <div class="row">
           <div class="col-md-6">
            <div class="box box-info">
                <div class="box-header with-border">
                      <h3 class="box-title">@lang('dashboard.cardExpire')</h3>
                    </div>
                <div class="box-body">
                      <table class="table">
                        <tr>
                            <th>@lang('dashboard.psisno')</th>
                            <th>@lang('dashboard.name')</th>
                            <th>@lang('dashboard.cellno')</th>
                            <th>@lang('dashboard.expiredate')   </th>
                            <th>@lang('dashboard.action')</th>
                        </tr>
                        @foreach ($dashboard as $card)
                        <tr>
                            <td>{{$card->psi_number}}</td>
                            <td>{{$card->name}}</td>
                            <td>{{$card->cell_no}}</td>
                            <td>{{$card->residence_card_exp_date}}</td>
                             <td><span class=""><a href="#"><i class="far fa-comment-dots"></i></a></span>&nbsp;&nbsp;<span class=""><a href="#"><i class="fas fa-phone"></i></a></span></td>
                        </tr>
                        @endforeach
                     </table>
                </div>
                 <div class="box-footer text-center">
             	 <a href="javascript:void(0)" class="uppercase">View All</a>
            </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="box box-info">
                <div class="box-header with-border">
                      <h3 class="box-title">@lang('dashboard.tn')</h3>
                    </div>
                <div class="box-body">
                      <table class="table">
                        <tr>
                            <th>@lang('dashboard.psisno')</th>
                            <th>@lang('dashboard.name')</th>
                            <th>@lang('dashboard.cellno')</th>
                            <th>@lang('dashboard.expiredate')   </th>
                            <th>@lang('dashboard.action')</th>
                        </tr>
                        @foreach ($dashboard as $card)
                        <tr>
                            <td>{{$card->psi_number}}</td>
                            <td>{{$card->name}}</td>
                            <td>{{$card->cell_no}}</td>
                            <td>{{$card->residence_card_exp_date}}</td>
                             <td><span class=""><a href="#"><i class="far fa-comment-dots"></i></a></span>&nbsp;&nbsp;<span class=""><a href="#"><i class="fas fa-phone"></i></a></span></td>
                        </tr>
                        @endforeach
                     </table>
                </div>
                 <div class="box-footer text-center">
             	 <a href="javascript:void(0)" class="uppercase">View All</a>
            </div>
            </div>
        </div>
    </div>
    <div class="row">
           <div class="col-md-6">
            <div class="box box-info">
                <div class="box-header with-border">
                      <h3 class="box-title">@lang('dashboard.rda')</h3>
                    </div>
                <div class="box-body">
                      <table class="table">
                        <tr>
                            <th>@lang('dashboard.psisno')</th>
                            <th>@lang('dashboard.name')</th>
                            <th>@lang('dashboard.cellno')</th>
                            <th>@lang('dashboard.expiredate')   </th>
                            <th>@lang('dashboard.action')</th>
                        </tr>
                        @foreach ($dashboard as $card)
                        <tr>
                            <td>{{$card->psi_number}}</td>
                            <td>{{$card->name}}</td>
                            <td>{{$card->cell_no}}</td>
                            <td>{{$card->residence_card_exp_date}}</td>
                             <td><span class=""><a href="#"><i class="far fa-comment-dots"></i></a></span>&nbsp;&nbsp;<span class=""><a href="#"><i class="fas fa-phone"></i></a></span></td>
                        </tr>
                        @endforeach
                     </table>
                </div>
                 <div class="box-footer text-center">
             	 <a href="javascript:void(0)" class="uppercase">View All</a>
            </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="box box-info">
                <div class="box-header with-border">
                      <h3 class="box-title">@lang('Activity Feed')</h3>
                    </div>
                <div class="box-body">
                <div class="activity-feed">
                      <div class="feed-item">
                        <div class="date">Sep 25</div>
                        <div class="text">Responded to need <a href="single-need.php">“Volunteer opportunity”</a></div>
                      </div>
                      <div class="feed-item">
                        <div class="date">Sep 24</div>
                        <div class="text">Added an interest “Volunteer Activities”</div>
                      </div>
                       <div class="feed-item">
                        <div class="date">Sep 24</div>
                        <div class="text">Added an interest “Volunteer Activities”</div>
                      </div>
                    </div>
                </div>
                <div class="box-footer text-center">
             	 <a href="javascript:void(0)" class="uppercase">View All</a>
            </div>
            </div>
        </div>
    </div>
    </section>
@endsection
