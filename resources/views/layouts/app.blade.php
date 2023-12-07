<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>RS Konawe</title>
    <link rel="icon" href="{{ asset('img/blud.png') }}" type="image/png">

    <!-- Scripts -->

    <script src="{{ asset('js/app.js') }}" defer></script>

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
</head>
<body>
<!-- NAVBAR -->
    <nav id="main-navbar" class="navbar navbar-expand-md navbar-dark bg-dark 22 py-0">
        <div class="container">
            <a class="navbar-brand" href="{{ route('home') }}">
                <span class="d-none" >ILKOOM</span>
                <img src="{{ asset('img/blud.png') }}" class="main-logo d-none d-md-inline" alt="Blud logo">
                <img src="{{ asset('img/blud.png') }}" class="small-logo d-inline d-md-none" alt="Blud logo">
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <!-- Left Side Of Navbar -->
                <ul class="navbar-nav">
                    <li class="nav-item">
                    <a class="nav-link p-4 active" href="{{ route('home') }}">Home</a>
                    </li>
                    <li class="nav-item">
                    <a class="nav-link p-4" href="#">Blog</a>
                    </li>
                    <li class="nav-item">
                    <a class="nav-link p-4" href="#">Article</a>
                    </li>
                    <li class="nav-item">
                    <a class="nav-link p-4" href="#">Gallery</a>
                    </li>
                </ul>

                <!-- Right Side Of Navbar -->
                <ul class="navbar-nav ml-auto">
                <!-- Authentication Links -->
                    @guest
                    <li class="nav-item">
                    <a class="nav-link p-4" href="{{ route('login') }}">Login</a>
                    </li>
                    @if (Route::has('register'))
                    <li class="nav-item">
                    <a class="nav-link p-4" href="{{ route('register') }}"> Register</a>
                    </li>
                    @endif
                    @else
                    <li class="nav-item dropdown">
                    <a id="navbarDropdown" class="nav-link dropdown-toggle p-4" href="#" role="button" data-toggle="dropdown" v-pre>{{ Auth::user()->nama }} <span class="caret"></span></a>
                        <div class="dropdown-menu dropdown-menu-right p-0 border-0">
                            <a class="dropdown-item bg-dark text-white p-2 text-center" href="{{ route('logout') }}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">Logout
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

    @yield('content')

    <!-- FOOTER -->
    <footer id="main-footer" class="text-white bg-dark py-4">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    <h5> Hubungi Kami</h5>
                        <div class="text-nowrap"><i class="fas fa-envelope fa-fw mr-3"></i>bludrskabkonawe@gmail.com</div>
                        <div class="text-nowrap"><i class="fas fa-phone fa-fw mr-3"></i> (021) 123456</div>
                        <div class="text-nowrap"><i class="fas fa-globe fa-fw mr-3"></i> www.bludrskabkonawe.co.id</div>
                </div>
            </div>
        </div>
    </footer>
</body>
</html>
