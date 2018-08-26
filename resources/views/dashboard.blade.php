@extends('layouts.app')

@section('content')
    <div class="row justify-content-center">
              <div class="col-md-6">
            <div class="card">
                <div class="card-header">@lang('dashboard.cardExpire')</div>
                <div class="card-body">
                      <table class="table">
                        <tr>
                            <th>@lang('dashboard.psisno')</th>
                            <th>@lang('dashboard.name')</th>
                            <th>@lang('dashboard.cellno')</th>
                            <th>@lang('dashboard.expiredate')</th>
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
                     <div style="float:right">  <a href="#" class="btn btn-primary btn-sm">View All</a></div>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="card">
                <div class="card-header">@lang('Activity Feed')</div>
                <div class="card-body">
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
                        <div class="date">Sep 23</div>
                        <div class="text">Joined the group <a href="single-group.php">“Boardsmanship Forum”</a></div>
                      </div>
                      <div class="feed-item">
                        <div class="date">Sep 21</div>
                        <div class="text">Responded to need <a href="single-need.php">“In-Kind Opportunity”</a></div>
                      </div>
                      <div class="feed-item">
                        <div class="date">Sep 18</div>
                        <div class="text">Created need <a href="single-need.php">“Volunteer Opportunity”</a></div>
                      </div>
                      <div class="feed-item">
                        <div class="date">Sep 17</div>
                        <div class="text">Attending the event <a href="single-event.php">“Some New Event”</a></div>
                      </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
