<nav class="navbar navbar-expand-md navbar-light navbar-laravel">
    <div class="container">
        <a class="navbar-brand" href="{{ url('/') }}">
            {{ config('app.name', 'PSI') }}
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <!-- Left Side Of Navbar -->
            <ul class="navbar-nav mr-auto" style="margin-left: 75px;">
                <li class="nav-item">
                    <div class="dropdown">
                      <button class="btn btn-default btn-sm dropdown-toggle" type="button" data-toggle="dropdown">Master Data
                      <span class="caret"></span></button>
                      <ul class="dropdown-menu">
                        <li><a href="{{ route('pages.users') }}">Users</a></li>
                        <li><a href="{{ route('pages.employee') }}">Employee</a></li>
                        <li><a href="{{ route('company.create') }}">Company</a></li>
                      </ul>
                    </div>                        
                </li>

                <li class="nav-item" style="margin-left: 10px;">
                    <div class="dropdown">
                      <button class="btn btn-default btn-sm dropdown-toggle" type="button" data-toggle="dropdown">Shift Management
                      <span class="caret"></span></button>
                      <ul class="dropdown-menu">
                        <li><a href="#">Company Shift</a></li>
                        <li><a href="#">Shift Entry</a></li>
                        <li><a href="#">Attendance Management</a></li>
                      </ul>
                    </div>                        
                </li>

                <li class="nav-item" style="margin-left: 10px;">
                    <div class="dropdown">
                      <button class="btn btn-default btn-sm dropdown-toggle" type="button" data-toggle="dropdown">Setting
                      <span class="caret"></span></button>
                      <ul class="dropdown-menu">
                        <li><a href="#">Alert Management</a></li>
                      </ul>
                    </div>                        
                </li>

            </ul>

            <!-- Right Side Of Navbar -->
            <ul class="navbar-nav ml-auto">
                <!-- Authentication Links -->
                @guest
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                    </li>
                @else
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('employees') }}">{{ __('Employees') }}</a>
                    </li>
                    
                    
                    <li class="nav-item dropdown">
                        <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                            {{ Auth::user()->name }} <span class="caret"></span>
                        </a>

                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="{{ route('logout') }}"
                                onclick="event.preventDefault();
                                                document.getElementById('logout-form').submit();">
                                {{ __('Logout') }}
                            </a>

                            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                @csrf
                            </form>
                        </div>
                    </li>
                @endguest
            </ul>
        </div>
    </div>
</nav>