<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    @yield('title')


    <!-- Styles -->
    <link href="/css/bootstrap.css" rel="stylesheet">

    <link href="/css/blog-home.css" rel="stylesheet">
    <link href="/css/default-theme.css" rel="stylesheet">
<!--
  <link href="/css/default-theme.css" rel="stylesheet">
    <link href="/css/light-theme.css" rel="stylesheet">
-->

    <!-- Fonts -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css" rel='stylesheet' type='text/css'>
    <link href="https://fonts.googleapis.com/css?family=Lato:100,300,400,700" rel='stylesheet' type='text/css'>


    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <!--[endif]-->



    @yield('style')
    <style>

        .fa-btn {
            margin-right: 6px;
        }
    </style>
</head>
<body id="app-layout">
    <nav class="navbar navbar-akash navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">

                <!-- Collapsed Hamburger -->
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#app-navbar-collapse">
                    <span class="sr-only">Toggle Navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>

                </button>

                <!-- Branding Image -->
                <a class="navbar-brand" href="{{ url('/') }}">
                    Amar Blog
                </a>
            </div>

            <div class="collapse navbar-collapse" id="app-navbar-collapse">
                <!-- Left Side Of Navbar -->


                <!-- Right Side Of Navbar -->
                <ul class="nav navbar-nav navbar-right">
                    <!-- Authentication Links -->
                    @if (Auth::guest())
                        <li><a href="{{ url('../login') }}">Login</a></li>
                        <li><a href="{{ url('../register') }}">Register</a></li>
                    @else
                        <li class="create-new"><a href="{{ url('../create') }}">Create New</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                                <img src="/images/blog-cover.JPG" alt="" width="20" height="17">
                                {{ Auth::user()->name }} <span class="caret"></span>
                            </a>

                            <ul class="dropdown-menu" role="menu">
                                <li><a href="{{ url('../myblog') }}"><i class=""></i>My Blogs</a></li>
                                <li><a href="../myprofile/{!! Auth::User()->id !!}"><i class=""></i>Profile</a></li>
                                <li><a href="{{ url('../logout') }}"><i class="fa fa-btn fa-sign-out"></i>Logout</a></li>
                            </ul>
                        </li>
                    @endif
                </ul>
            </div>
        </div>
    </nav>

    <div class="container">
        <div class="row" style="text-align: justify">

        @yield('content')

                <!-- Sidebar Widgets-->
            <div class="col-md-3">

                <!-- Blog Search well-custom -->
                <div class="well-custom">
                    <h4>Blog Search</h4>
                    <div class="input-group">
                        <input type="text" class="form-control">
                        <span class="input-group-btn">
                            <button class="btn btn-default" type="button">
                                <span class="glyphicon glyphicon-search"></span>
                            </button>
                        </span>
                    </div>
                    <!-- /.input-group -->
                </div>

                <!-- Blog Categories well-custom-custom -->
                <div class="well-custom">
                    <h4>Blog Categories</h4>


                            <ul class="list-unstyled well-custom-list">
                                @foreach($categories as $category)
                                    <li><a href="#">{!! $category->name !!}</a></li>

                                @endforeach
                            </ul>

                        <!-- /.col-lg-6 -->


                </div>

                <!-- Side Widget well-custom -->
                <div class="well-custom">
                    <p><center>Copyright &copy; <a href="http://akashakram.xyz">AkashAkram  - 2016</a></center></p>
                </div>

            </div>



      
        </div>
    </div>

    <!-- JavaScript

     -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

    <!--
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.js"></script>


    Nahid.co
    -->



</body>
</html>
