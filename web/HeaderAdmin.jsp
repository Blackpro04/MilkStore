<%-- 
    Document   : HeaderAdmin
    Created on : Jun 27, 2024, 4:47:19 PM
    Author     : ADMIN
--%>
<%@page import="user.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
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
                                                <% }%>

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
                        <li><a href="admin.jsp">Admin Home</a></li>
                        <li class="has-children dropdown" data-toggle="dropdown">
                            <a href="glasses.jsp" style="pointer-events: auto;">Product</a>
                            <ul class="dropdown" style="list-style-type: none;">
                                <form action="MainController" method="POST">
                                    <li class="nav-link"><a href="SearchCategoriesController2?category=Milk" class="d-flex">Milk</a></li>
                                    <li class="nav-link"><a href="SearchCategoriesController2?category=Cooky" class="d-flex">Cooky</a></li>
                                    <li class="nav-link"><a href="SearchCategoriesController2?category=Yogurt" class="d-flex">Yogurt</a></li>
                                    <li class="nav-link"><a href="SearchCategoriesController2?category=Cake" class="d-flex">Cake</a></li>
                                </form>
                            </ul>
                        </li>
                        <li><a href="product.jsp">Manage Product</a></li>
                        <li><a href="user.jsp">Manage User</a></li>
                        <li><a href="invoice.jsp">Manage Invoice</a></li>

                    </ul>
                </div>
            </nav>
        </header>

    </body>
</html>

