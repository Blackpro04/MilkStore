<%@page import="user.UserDTO"%>
<%@page import="Product.ProductDTO"%>
<%@page import="java.util.List"%>
<%@page import="Product.ProductDAO"%>
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
        <script>
            function show(msg, id) {
                if (msg == 'name') {
                    document.getElementById("checkName" + id).innerHTML = "Name  ";
                } else if (msg == 'description') {
                    document.getElementById("checkDescription" + id).innerHTML = "Description  ";
                } else if (msg == 'price') {
                    document.getElementById("checkPrice" + id).innerHTML = "Price  ";
                } else if (msg == 'type') {
                    document.getElementById("checkType" + id).innerHTML = "Category "
                }
            }
        </script>
    </head>
    <body>
        <%
            UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");

        %>    
        <%-- searh bar --%>
        <div class="site-wrap">
            <jsp:include page="HeaderAdmin.jsp" />

            <div class="bg-light py-3">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 mb-0"><a href="admin.jsp">Admin Home</a> <span class="mx-2 mb-0">/</span> <strong class="text-black">Product Management</strong></div>
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
                                    <div class="float-md-left mb-0"><h2 class="text-black h2"><strong>All product</strong></h2></div>
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
                            <div class="row mb-5">
                                <% int count = 0; %>
                                <% for (ProductDTO p : pList) {%>
                                <div class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up">
                                    <div class="block-4 text-center border">
                                        <figure class="block-4-image">
                                            <img src="images/<%= p.getImage()%>" alt="Image placeholder" class="img-fluid" style="width: 100%; height: 350px;">
                                        </figure>
                                        <form action="MainController" method="POST">
                                            <div class="block-4-text p-4">
                                                <div id="checkName<%=count%>"></div>
                                                <h3 class="mb-3"><input class="form-control" type="text" name="name" value="<%= p.getName()%>" onclick="show('name', '<%=count%>')" on/></h3>
                                                <div id="checkDescription<%=count%>"></div>
                                                <p class="mb-3"><input class="form-control" type="text" name="description" value="<%= p.getDescription()%>" onclick="show('description', '<%=count%>')"/></p>
                                                <div id="checkPrice<%=count%>"></div>
                                                <p class="text-primary font-weight-bold"><input class="form-control" type="text" name="price" value="<%= p.getPrice()%>" onclick="show('price', '<%=count%>')"/></p>
                                                <div id="checkType<%=count%>"></div>
                                                <p><input class="form-control" type="text" name="type" value="<%= p.getType()%>" onclick="show('type', '<%=count%>')"/></p>
                                                <input type="hidden" name="image" value="<%= p.getImage()%>">
                                                <input type="hidden" name="idProduct" value="<%= p.getIdProduct()%>">
                                                <button type="submit" name="action" value="Update" class="btn text-light" style="background-color:  #FF36AB;">Update</button>
                                                <input type="hidden" name="idProduct" value="<%= p.getIdProduct()%>">
                                                <button type="submit" name="action" value="Delete" class="btn text-light" style="background-color: black;">Delete</button>
                                            </div>
                                        </form>       
                                    </div>
                                </div>
                                <% count++; %>
                                <% }%>
                            </div>
                        </div>

                        <%--Searching bar--%>

                        <div class="col-md-3 order-1 mb-5 mb-md-0">
                            <div class="border p-4 rounded mb-4" style="background-color: white;;">
                                <h3 class="mb-3 h3 text-uppercase text-black d-block"><strong>Categories</strong></h3>
                                <ul class="list-unstyled mb-0">
                                    <form action="MainController" method="POST">
                                        <li class="mb-1"><a href="SearchCategoriesController2?category=Milk" class="d-flex h4"><span>Milk</span></a></li>
                                        <li class="mb-1"><a href="SearchCategoriesController2?category=Cooky" class="d-flex h4"><span>Cooky</span> </a></li>
                                        <li class="mb-1"><a href="SearchCategoriesController2?category=Yogurt" class="d-flex h4"><span>Yogurt</span></a></li>
                                        <li class="mb-1"><a href="SearchCategoriesController2?category=Cake" class="d-flex h4"><span>Cake</span></a></li>
                                        <li class="mb-1"><a href="SearchCategoriesController2?category=" class="d-flex h4"><span>All</span></a></li>
                                    </form>
                                </ul>
                                <hr>
                                <a href="createProduct.jsp" class="h4 text-dark">Add New Category</a>
                            </div>

                        </div>

                    </div>
                    <hr>

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