@extends('layouts.app') 
@section('content')
<div class="row">

    <div class="col-md-3">
        <div class="box box-primary">
            <div class="box-body">
                <div class="btn btn-link" href=""> New Messages</div>
                <hr>
                <div class="btn btn-link"> Read Messages</div>
                <hr>
                <div class="btn btn-link"> Unread Messages</div>
            </div>
        </div>
    </div>
    <div class="col-md-8">
        <div class="box box-primary">
            <div class="box-header with-border">
                <center>
                    <h4 class="box-title" style="color:#3399ff">Request Message</h4>
                </center>
            </div>
            <div class="box-body">
                <ul style="list-style-type:none">
                    <li>
                        <div style="color:#004d99;font-weight:bold">Bina Maharjan</div>
                        I wont be able to perform my tasks as i will be busy on my personal works. &nbsp <i class="fas fa-clock"
                            style="color:#004d99">10:44am</i></li>
                    <hr>
                    <li>
                        <div style="color:#004d99;font-weight:bold">Bina Maharjan</div>
                        I wont be able to perform my tasks as i will be busy on my personal works. &nbsp <i class="fas fa-clock"
                            style="color:#004d99">10:44am</i></li>
                    <hr>
                    <li>
                        <div style="color:#004d99;font-weight:bold">Bina Maharjan</div>
                        I wont be able to perform my tasks as i will be busy on my personal works. &nbsp <i class="fas fa-clock"
                            style="color:#004d99">10:44am</i></li>
                    <hr>

                </ul>
            </div>


        </div>
    </div>
@endsection