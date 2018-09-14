@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-8 offset-2">
                <a href="{{ route('users.index') }}"> Users </a>
                <br>
                <a href="#"> Roles </a>
                
            </div>
            
        </div>
        
    </div>




@endsection
