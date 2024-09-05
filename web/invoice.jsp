<%@page import="Invoice.InvoiceDTO"%>
<%@page import="Invoice.InvoiceDAO"%>
<%@page import="java.util.List"%>
<%@page import="user.UserDAO"%>
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
            <jsp:include page="HeaderAdmin.jsp" />

            <div class="bg-light py-3">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 mb-0"><a href="admin.jsp">Admin Home</a> <span class="mx-2 mb-0">/</span> <strong class="text-black">Invoice Management</strong></div>
                    </div>
                </div>
            </div>  
            <%                InvoiceDAO dao = new InvoiceDAO();
                List<InvoiceDTO> invoiceList = dao.getAllInvoices();
                if (request.getAttribute("Invoice_List") != null) {
                    invoiceList = (List<InvoiceDTO>) request.getAttribute("Invoice_List");
                }
            %>
            <div class="row mt-4 mb-4 ml-5">
                <div class="col-12">
                    <div class="col-6 col-md-4 order-2 order-md-1 site-search-icon text-left">
                        <form action="MainController" method="POST" class="site-block-top-search">
                            <span class="icon icon-search2 ml-2"></span>
                            <input type="text" name="search" class="form-control border-0 " placeholder="Search by userID">
                            <input type="hidden" name="action" value="SearchInvoice">
                        </form>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <table class="table table-striped table-responsive-md">
                        <thead class="thead-dark">
                            <tr>
                                <th scope="col">Invoice ID</th>
                                <th scope="col">User ID</th>
                                <th scope="col">Date</th>
                                <th scope="col">Email</th>
                                <th scope="col">Address</th>
                                <th scope="col">Total</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% for (InvoiceDTO invoice : invoiceList) {%>
                            <tr>
                                <td><%= invoice.getInvId()%></td>
                                <td><%= invoice.getUserID()%></td>
                                <td><%= invoice.getDateBuy()%></td>
                                <td><%= invoice.getGmail()%></td>
                                <td><%= invoice.getAddress()%></td>
                                <td>$<%= invoice.getTotal()%></td>
                            </tr>
                            <% } %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
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