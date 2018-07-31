@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ "Edit "."'s Type" }}</div>

                <div class="card-body ">
                    <form method="PUT" action="{{ route('users.update', 'user->id') }}" >
                        @csrf

                        <div>
                            <select class="form-control" name="user_type">
                                @foreach($userType as $type)
                                    <option value="{{ $type->id }}"> {{ $type->type }}  </option>
                                @endforeach
                            </select>
                            
                        </div>
                       

                        <div class="form-group row mb-0">
                            <div class="col-md-6 offset-md-4">
                                <button style="margin-top: 5px" type="submit" class="btn btn-primary">
                                    Change Type
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
