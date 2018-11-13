@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-5">
                <div class="card">
                    <div class='card-header'>
                            {!!
                                Form::open(['method' => 'POST', 'route' => 'changelocale',
                                'class' => 'form-inline navbar-select pull-right']) !!}

                            {!! Form::select( 'locale',
                             ['en' => 'EN', 'ja' => 'JA'], \App::getLocale(), [ 'id' =>
                             'locale', 'class' => 'form-control', 'required' => 'required','onchange'
                             => 'this.form.submit()', ] ) !!} <a id="master_data"
                                                                        class=""
                                                                        id="navbarDropdown"
                                                                        role="button" data-toggle="dropdown"
                                                                        aria-haspopup="true"
                                                                        aria-expanded="false"> {{ $errors->first('locale') }} </a>

                            <div class="btn-group pull-right sr-only">{!!
									Form::submit("Change", ['class' => 'btn btn-success']) !!}</div>
                            {!! Form::close() !!}
                        </div>
                    <div class="card-header">@lang('employee.Employee') {{ __('login.Login') }}</div>

                    <div class="card-body">
                        <form method="POST" action="{{ route('employee.login') }}" aria-label="{{ __('login.Login') }}">
                            @csrf

                            <div class="form-group row">
                                <label for="email"
                                       class="col-sm-4 col-form-label text-md-right">@lang('dashboard.user')</label>
                                <div class="col-md-6">
                                    <input id="psi_number" type="text"
                                           class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}"
                                           name="psi_number" value="{{ old('email') }}" required autofocus>

                                    @if ($errors->has('email'))
                                        <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="password"
                                       class="col-md-4 col-form-label text-md-right">@lang('dashboard.pass')</label>

                                <div class="col-md-6">
                                    <input id="password" type="password"
                                           class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}"
                                           name="password" required>

                                    @if ($errors->has('password'))
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $errors->first('password') }}</strong>
                                        </span>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-md-6 offset-md-4">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" name="remember"
                                               id="remember" {{ old('remember') ? 'checked' : '' }}>

                                        <label class="form-check-label" for="remember">
                                            {{ __('login.remember_me') }}
                                        </label>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group row mb-0">
                                <div class="col-md-8 offset-md-4">
                                    <button type="submit" class="btn btn-primary">
                                        {{ __('login.Login') }}
                                    </button>

                                    <a class="btn btn-link" href="{{ route('password.request') }}">
                                        {{ __('login.forgot_pass') }}
                                    </a>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
