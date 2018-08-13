<nav class="navbar navbar-expand-md navbar-light navbar-laravel">
    <div class="container-fluid">
          <div class="navbar-header">
      <a class="navbar-brand" href="#">
  @auth
    <img alt="PSI-S" src="../images/logo_small.png">
  @else
    <img alt="PSI-S" src="../images/logo.png">
  @endauth
      </a>
    </div>
          @auth
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
            <span class="navbar-toggler-icon"></span>
        </button>  
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <!-- Left Side Of Navbar -->
            <ul class="navbar-nav mr-auto" style="margin-left: 75px;">
                <li class="nav-item dropdown">
                  <a id="master_data" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                      Master Data <span class="caret"></span>
                  </a>

                  <div class="dropdown-menu dropdown-menu-left" aria-labelledby="master_data">
                      <a class="dropdown-item" href="{{ route('users.index') }}">Users</a>
                      <a class="dropdown-item" href="{{ route('pages.employee') }}">Employee</a>
                      <a class="dropdown-item" href="{{ route('company.create') }}">Company</a>
                  </div>
                </li>

                <li class="nav-item dropdown">
                  <a id="shift_management" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                      Shift Management <span class="caret"></span>
                  </a>

                  <div class="dropdown-menu dropdown-menu-left" aria-labelledby="shift_management">
                      <a class="dropdown-item" href="#"> Company Shift </a>
                      <a class="dropdown-item" href="#"> Shift Entry </a>
                      <a class="dropdown-item" href="#"> Attendance Management </a>
                  </div>
                </li>

                <li class="nav-item dropdown">
                  <a id="setting" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                      Setting <span class="caret"></span>
                  </a>

                  <div class="dropdown-menu dropdown-menu-left" aria-labelledby="setting">
                      <a class="dropdown-item" href="#">
                        Alert Management
                      </a>
                  </div>
                </li>
            </ul>
 @endauth
            <!-- Right Side Of Navbar -->
            <ul class="navbar-nav ml-auto">
                <!-- Authentication Links -->
                @guest
                    <!-- <li class="nav-item">
                        <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                    </li> -->
                @else
                   <!--  <li class="nav-item">
                        <a class="nav-link" href="{{ route('employees') }}">{{ __('Employees') }}</a>
                    </li> -->
                    
                    
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