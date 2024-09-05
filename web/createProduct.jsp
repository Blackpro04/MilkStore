<%@page import="user.UserDTO"%>
<%@page import="Product.ProductError"%>
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
            <jsp:include page="HeaderAdmin.jsp" />
            <div class="bg-light py-3">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 mb-0"><a href="admin.jsp">Admin Home</a> <span class="mx-2 mb-0">/</span> <strong class="text-black">Create Product</strong></div>
                    </div>
                </div>
            </div>  

            <div class="site-section">
                <%             ProductError pError = (ProductError) request.getAttribute("Product_ERROR");
                    if (pError == null) {
                        pError = new ProductError();
                    }
                %>
                <div class="container">
                    <form action="MainController" method="POST" enctype="multipart/form-data">
                        <div class="row">
                            <div class="col-md-12">
                                <h2 class="h3 mb-3 text-black">Create Product</h2>
                            </div>

                            <div class="col-md-7">

                                <div class="p-3 p-lg-5 border">
                                    <div class="form-group row">
                                        <div class="col-md-12">
                                            <label for="id" class="text-black">ID <span class="text-danger">*</span></label>
                                            <input type="text" class="form-control" id="id" name="id">
                                            <span class="text-danger"><%= pError.getIdProduct()%></span></br>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col-md-12">
                                            <label for="name" class="text-black">Name <span class="text-danger">*</span></label>
                                            <input type="text" class="form-control" id="name" name="name">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col-md-12">
                                            <label for="description" class="text-black">Description </label>
                                            <input type="text" class="form-control" id="description" name="description">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col-md-12">
                                            <label for="type" class="text-black">Type </label>
                                            <input type="text" class="form-control" id="type" name="type">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col-md-12">
                                            <label for="price" class="text-black">Price <span class="text-danger">*</span></label>
                                            <input type="number" step="0.01" class="form-control" id="price" name="price">
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div class="col-md-5 ml-auto">
                                <div class="form-group row">
                                    <div class="col-md-12">
                                        <label for="image" class="text-black">Image </label>
                                        <input type="file" class="form-control" id="image" name="image" onchange="previewImage(event)">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-md-12">
                                        <div style="width: 300px; height: 300px; overflow: hidden;">
                                            <img id="preview" src="" alt="Image preview..." style="max-width: 100%; max-height: 100%; display: none;">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-lg-12">
                                        <input type="submit" class="btn btn-primary btn-lg btn-block" value="Create" name="action">
                                    </div>


                                </div>
                                <div class="form-group row">   
                                    <div class="col-lg-12">
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
                            </div>

                        </div>
                    </form>    
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
                                            <li><a href="admin.jsp">Admin Home</a></li>
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
            </div>
            <script>
                function previewImage(event) {
                    var reader = new FileReader();
                    reader.onload = function () {
                        var output = document.getElementById('preview');
                        output.src = reader.result;
                        output.style.display = 'block';
                    };
                    reader.readAsDataURL(event.target.files[0]);
                }
            </script>   
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