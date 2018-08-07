@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-8 offset-2">
                <a href="{{ route('employees') }}"> Employees </a>
                <br>
                <a href="{{ route('availability.add') }}"> Availability </a>
                
            </div>
            
        </div>
        
    </div>




@endsection