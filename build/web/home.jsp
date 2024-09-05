<%@page import="user.UserDTO"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Shoppers &mdash; Colorlib e-Commerce Template</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Mukta:300,400,700"> 
        <link rel="stylesheet" href="fonts/icomoon/style.css">

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/magnific-popup.css">
        <link rel="stylesheet" href="css/jquery-ui.css">
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">


        <link rel="stylesheet" href="css/aos.css">

        <link rel="stylesheet" href="css/style.css">

    </head>
    <body>
        <%
            UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");

        %>    
        <%-- searh bar --%>
        <div class="site-wrap">
            <header class="site-navbar" role="banner">
                <div class="site-navbar-top">
                    <div class="container">
                        <div class="row align-items-center">

                            <div class="col-6 col-md-4 order-2 order-md-1 site-search-icon text-left">
                                <form action="MainController" method="POST" class="site-block-top-search">
                                    <span class="icon icon-search2"></span>
                                    <input type="text" name="search" class="form-control border-0" placeholder="Search">
                                    <input type="hidden" name="action" value="Search">
                                </form>
                            </div>

                            <div class="col-12 mb-3 mb-md-0 col-md-4 order-1 order-md-2 text-center">
                                <div class="site-logo">
                                    <a href="home.jsp" class="js-logo-clone">Mochi Milk</a>
                                </div>
                            </div>
                            <%--login-cart-update account information -logout--%>
                            <div class="col-6 col-md-4 order-3 order-md-3 text-right">
                                <form action="MainController" method="POST">
                                    <div class="site-top-icons">
                                        <ul>
                                            <% if (loginUser == null) { %>
                                            <li><a href="login.jsp"><span class="icon icon-person"></span> Login</a></li>
                                            <li><a href="register.jsp"><span class="icon icon-person"></span> Register</a></li>
                                                <% } else { %>
                                            <li><a href="LogoutController"></span>LOG OUT</a></li>
                                            <li><a href="update.jsp"><span class="icon icon-person"></span></a></li>
                                            <li>
                                                <a href="cart.jsp" class="site-cart">
                                                    <span class="icon icon-shopping_cart"></span>

                                                </a>
                                            </li> 
                                            <% } %>


                                            <li class="d-inline-block d-md-none ml-md-0"><a href="#" class="site-menu-toggle js-menu-toggle"><span class="icon-menu"></span></a></li>
                                        </ul>
                                    </div> 
                                </form>    
                            </div>

                        </div>
                    </div>
                </div> 
                <nav class="site-navigation text-right text-md-center" role="navigation">
                    <div class="container">
                        <ul class="site-menu js-clone-nav d-none d-md-block">
                            <li><a href="home.jsp">Home</a></li>
                            <li class="has-children dropdown" data-toggle="dropdown">
                                <a href="home.jsp" style="pointer-events: auto;">Shop</a>
                                <ul class="dropdown" style="list-style-type: none;">

                                    <form action="MainController" method="POST">
                                        <li class="nav-link"><a href="SearchCategoriesController?category=Milk">Milk</a></li>
                                        <li class="nav-link"><a href="SearchCategoriesController?category=Cooky" class="d-flex">Cooky</a></li>
                                        <li class="nav-link"><a href="SearchCategoriesController?category=Yogurt" class="d-flex">Yogurt</a></li>
                                        <li class="nav-link"><a href="SearchCategoriesController?category=Cake" class="d-flex">Cake</a></li>
                                    </form>
                                </ul>
                            </li>

                            <li><a href="about.jsp">About</a></li>
                                <% if (loginUser != null) { %>
                            <li><a href="update.jsp">Account</a></li>
                                <%}%>
                        </ul>
                    </div>
                </nav>
            </header>

            <div class="site-blocks-cover" style="background-image: url(images/Mochi.jpg);" data-aos="fade">
                <div class="container" style="position: relative;">
                    <div class="row align-items-start align-items-md-center justify-content-end" style="position: fixed; right: 180px;">
                        <div class="col-md-4 text-center text-md-left pt-5 pt-md-0" style="width: 900px;">
                            <h1 class="mb-2 text-justify">Welcome to Mochi Milk!</h1>
                            <div class="intro-text text-center text-md-left">
                                <p class="mb-4">We have a lot of delicious milk and cake.
                                    Let enjoy them!!!
                                </p>
                                <p>
                                    <a href="shop.jsp" class="btn btn-sm btn-primary">Shop now</a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="site-section site-section-sm site-blocks-1" style="background-color: white;">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6 col-lg-4 d-lg-flex mb-4 mb-lg-0 pl-4" data-aos="fade-up" data-aos-delay="">
                            <div class="icon mr-4 align-self-start">
                                <span class="icon-truck"></span>
                            </div>
                            <div class="text">
                                <h2 class="text-uppercase">Free Shipping</h2>
                                <p></p>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 d-lg-flex mb-4 mb-lg-0 pl-4" data-aos="fade-up" data-aos-delay="100">
                            <div class="icon mr-4 align-self-start">
                                <span class="icon-refresh2"></span>
                            </div>
                            <div class="text">
                                <h2 class="text-uppercase">Free Returns</h2>
                                <p></p>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 d-lg-flex mb-4 mb-lg-0 pl-4" data-aos="fade-up" data-aos-delay="200">
                            <div class="icon mr-4 align-self-start">
                                <span class="icon-help"></span>
                            </div>
                            <div class="text">
                                <h2 class="text-uppercase">Customer Support</h2>
                                <p></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <h1>
                <!-- This page was loaded on
                <%= (new java.util.Date()).toLocaleString()%> 
                -->
            </h1>
            <div class="site-section site-blocks-2 ml-4">
                <div class="container">
                    <div class="row">
                        <div class="card-group" data-aos="fade" data-aos-delay="100" style="background-color: #FFE5EC;"> 
                            <a class="block-2-item text-white mr-4" href="SearchCategoriesController?category=Milk" style="height: inherit;">
                                <figure class="image">
                                    <img src="images/Milk.jpg" class="card-img" alt="milk" style="width: 250px; height: 350px;">    
                                </figure>
                                <div class="card-img-overlay text">
                                    <span style="color: #052659;">Category</span>
                                    <h3 style="color: #052659;">Milk</h3>
                                </div>
                            </a>
                            <a class="block-2-item text-white mr-4" href="SearchCategoriesController?category=Yogurt" style="height: inherit;">
                                <figure class="image">
                                    <img src="images/Yogurt.jpg" class="card-img" alt="Yogurt" style="width: 250px; height: 350px;">    
                                </figure>
                                <div class="card-img-overlay text">
                                    <span class="text-uppercase" style="color: #052659;">Category</span>
                                    <h3 style="color: #052659;">Yogurt</h3>
                                </div>
                            </a>
                            <a class="block-2-item text-white mr-4" href="SearchCategoriesController?category=Cooky" style="height: inherit;">
                                <figure class="image">
                                    <img src="images/Cooky.jpg" class="card-img" alt="Cooky" style="width: 250px; height: 350px;">    
                                </figure>
                                <div class="card-img-overlay text">
                                    <span class="text-uppercase" style="color: #052659;">Category</span>
                                    <h3 style="color: #052659;">Cooky</h3>
                                </div>
                            </a>
                            <a class="block-2-item text-white" href="SearchCategoriesController?category=Cake" style="height: inherit;">
                                <figure class="image">
                                    <img src="images/cakephomai.jpg" class="card-img" alt="milk" style="width: 250px; height: 350px;">    
                                </figure>
                                <div class="card-img-overlay text">
                                    <span class="text-uppercase" style="color:#052659;">Category</span>
                                    <h3 style="color: #052659;">Cake</h3>
                                </div>
                            </a>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <jsp:include page="scss/Footer.jsp" />
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/jquery-ui.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/jquery.magnific-popup.min.js"></script>
        <script src="js/aos.js"></script>

        <script src="js/main.js"></script>

    </body>
</html>