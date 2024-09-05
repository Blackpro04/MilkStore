<%@page import="user.UserDTO"%>
<%@page import="Product.ProductDAO"%>
<%@page import="java.util.List"%>
<%@page import="Product.ProductDTO"%>
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
                                <a href="shop.jsp">Shop</a>
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
                                <%} %>
                        </ul>
                    </div>
                </nav>
            </header>

            <div class="bg-light py-3">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 mb-0"><a href="home.jsp">Home</a> <span class="mx-2 mb-0">/</span> <strong class="text-black">Shop</strong></div>
                    </div>
                </div>
            </div>

            <div class="site-section">
                <div class="container">

                    <div class="row mb-5">
                        <%--show case--%>    
                        <%
                            ProductDAO dao = new ProductDAO();
                            List<ProductDTO> pList = null;
                            if (request.getAttribute("Product_List") != null) {
                                pList = (List<ProductDTO>) request.getAttribute("Product_List");
                            } else {
                                pList = dao.getAllProduct();
                            }
                        %>
                        <div class="col-md-9 order-2">
                            <div class="row">
                                <div class="col-md-12 mb-5">
                                    <div class="float-md-left mb-1"><h2 class="text-black h2"><strong>Shop All</strong></h2></div>
                                                <%
                                                    String message = (String) request.getAttribute("message");
                                                    if (message == null) {
                                                        message = "";
                                                    }
                                                %>
                                    <div class="d-flex justify-content-center">
                                        <h3 style="color: red;"><%= message%></h3>
                                    </div> 
                                </div>
                            </div>
                            <!--Show Products -->
                            <div class="row mb-5">
                                <% for (ProductDTO glasses : pList) {%>
                                <div class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up">
                                    <div class=" block-4 text-center border">
                                        <figure class="block-4-image flex-fill">
                                            <img src="images/<%= glasses.getImage()%>" alt="Image placeholder" class="img-fluid" style="width: 100%; height: 300px;">
                                        </figure>
                                        <div class="block-4-text p-4">
                                            <h3><a href="#"><%= glasses.getName()%></a></h3>
                                            <p class="mb-0 text-center"><%= glasses.getDescription()%></p>
                                            <p class="text-primary font-weight-bold">$<%= glasses.getPrice()%></p>
                                            <form action="AddToCartController" method="POST">
                                                <input type="hidden" name="idProduct" value="<%= glasses.getIdProduct()%>">
                                                <input type="hidden" name="price" value="<%= glasses.getPrice()%>">
                                                <input type="hidden" name="image" value="<%= glasses.getImage()%>">
                                                <% if (loginUser == null) { %>
                                                <input type="hidden" name="userID" value="">
                                                <% } else {%>
                                                <input type="hidden" name="userID" value="<%= loginUser.getUserID()%>">
                                                <% } %>
                                                <input type="hidden" name="invId" value="null">
                                                <input type="hidden" name="quantity" value="1">
                                                <button type="submit" name="action" value="Add" class="btn btn-primary">Add to Cart</button>
                                            </form>   
                                        </div>
                                    </div>
                                </div>
                                <% }%>
                            </div>

                        </div>

                        <%--Searching bar--%>

                        <div class="col-md-3 order-1 mb-5 mb-md-0">
                            <div class="border p-4 rounded mb-4" style="background-color: white;">
                                <h2 class="mb-3 h3 text-uppercase text-black d-block"><strong>Categories</strong></h2>
                                <ul class="list-unstyled mb-0">
                                    <form action="MainController" method="POST">
                                        <li><a href="SearchCategoriesController?category=Milk" class="d-flex h4" >Milk</a></li>
                                        <li><a href="SearchCategoriesController?category=Cooky" class="d-flex h4">Cooky</a></li>
                                        <li><a href="SearchCategoriesController?category=Yogurt" class="d-flex h4">Yogurt</a></li>
                                        <li><a href="SearchCategoriesController?category=Cake" class="d-flex h4">Cake</a></li>
                                        <li class="mb-1"><a href="SearchCategoriesController?category=" class="d-flex h4"><span>All</span></a></li>
                                    </form>
                                </ul>

                            </div>

                            <div class="border p-4 rounded mb-4" style="background-color: white;">
                                <div class="mb-4">
                                    <form action="MainController" method="POST" id="priceForm">
                                        <h3 class="mb-3 h3 text-uppercase text-black d-block"><strong>Filter by Price</strong></h3>
                                        <input class="form-control mb-3" type="number" id="minPrice" name="minPrice" min="0" step="0.01" placeholder="Min Price">
                                        <input class="form-control" type="number" id="maxPrice" name="maxPrice" min="0" step="0.01" placeholder="Max Price">
                                        <input type="hidden" name="action" value="SearchPrice">
                                        <button class="mt-4 mb-1 btn btn-dark" type="submit">Filter</button>

                                    </form>
                                </div>
                            </div>

                        </div>

                    </div>


                    <div class="site-section site-blocks-2">
                        <div class="container">
                            <div class="row">
                                <div class="card-group" data-aos="fade" data-aos-delay="100" style="background-color: #FFE5EC;"> 
                                    <a class="block-2-item text-white mr-4" href="SearchCategoriesController?category=Milk" style="height: inherit;">
                                        <figure class="image">
                                            <img src="images/Milk.jpg" class="card-img" alt="milk" style="width: 250px; height: 350px;">    
                                        </figure>
                                        <div class="card-img-overlay text">
                                            <span>Category</span>
                                            <h3>Milk</h3>
                                        </div>
                                    </a>
                                    <a class="block-2-item text-white mr-4" href="SearchCategoriesController?category=Yogurt" style="height: inherit;">
                                        <figure class="image">
                                            <img src="images/Yogurt.jpg" class="card-img" alt="Yogurt" style="width: 250px; height: 350px;">    
                                        </figure>
                                        <div class="card-img-overlay text">
                                            <span class="text-uppercase">Category</span>
                                            <h3>Yogurt</h3>
                                        </div>
                                    </a>
                                    <a class="block-2-item text-white mr-4" href="SearchCategoriesController?category=Cooky" style="height: inherit;">
                                        <figure class="image">
                                            <img src="images/Cooky.jpg" class="card-img" alt="Cooky" style="width: 250px; height: 350px;">    
                                        </figure>
                                        <div class="card-img-overlay text">
                                            <span class="text-uppercase">Category</span>
                                            <h3>Cooky</h3>
                                        </div>
                                    </a>
                                    <a class="block-2-item text-white mr-4" href="SearchCategoriesController?category=Cake" style="height: inherit;">
                                        <figure class="image">
                                            <img src="images/Tiramisu.jpg" class="card-img" alt="milk" style="width: 250px; height: 350px;">    
                                        </figure>
                                        <div class="card-img-overlay text">
                                            <span class="text-uppercase">Category</span>
                                            <h3>Cake</h3>
                                        </div>
                                    </a>
                                </div>
                            </div>

                        </div>
                    </div>



                </div>

            </div>
            <footer class="site-footer border-top">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 mb-5 mb-lg-0">
                            <div class="row">
                                <div class="col-md-12">
                                    <h3 class="footer-heading mb-4">Navigations</h3>
                                </div>
                                <div class="col-md-6 col-lg-4">
                                    <ul class="list-unstyled">
                                        <li><a href="home.jsp">Home</a></li>
                                        <li><a href="register.jsp">Create new account</a></li>
                                        <li><a href="login.jsp">Login</a></li>


                                    </ul>
                                </div>
                                <div class="col-md-6 col-lg-4">
                                    <ul class="list-unstyled">
                                        <li><a href="shop.jsp">Shop</a></li>

                                        <li><a href="about.jsp">About</a></li>

                                    </ul>
                                </div>

                            </div>
                        </div>
                        <div class="col-md-6 col-lg-3 mb-4 mb-lg-0">

                        </div>
                        <div class="col-md-6 col-lg-3">
                            <div class="block-5 mb-5">
                                <h3 class="footer-heading mb-4">Contact Info</h3>
                                <ul class="list-unstyled">
                                    <li class="address">Meme paradise</li>
                                    <li class="phone"><a href="">+84 853 880 450</a></li>
                                    <li class="email">vy@gmail.com</li>
                                </ul>
                            </div>


                        </div>
                    </div>

                </div>
            </footer>
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