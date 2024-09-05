package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import user.UserDTO;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <title>Shoppers &mdash; Colorlib e-Commerce Template</title>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Mukta:300,400,700\"> \n");
      out.write("        <link rel=\"stylesheet\" href=\"fonts/icomoon/style.css\">\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/magnific-popup.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/jquery-ui.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/owl.carousel.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/owl.theme.default.min.css\">\n");
      out.write("\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/aos.css\">\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");

        
      out.write("    \n");
      out.write("        ");
      out.write("\n");
      out.write("        <div class=\"site-wrap\">\n");
      out.write("            <header class=\"site-navbar\" role=\"banner\">\n");
      out.write("                <div class=\"site-navbar-top\">\n");
      out.write("                    <div class=\"container\">\n");
      out.write("                        <div class=\"row align-items-center\">\n");
      out.write("\n");
      out.write("                            <div class=\"col-6 col-md-4 order-2 order-md-1 site-search-icon text-left\">\n");
      out.write("                                <form action=\"MainController\" method=\"POST\" class=\"site-block-top-search\">\n");
      out.write("                                    <span class=\"icon icon-search2\"></span>\n");
      out.write("                                    <input type=\"text\" name=\"search\" class=\"form-control border-0\" placeholder=\"Search\">\n");
      out.write("                                    <input type=\"hidden\" name=\"action\" value=\"Search\">\n");
      out.write("                                </form>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            <div class=\"col-12 mb-3 mb-md-0 col-md-4 order-1 order-md-2 text-center\">\n");
      out.write("                                <div class=\"site-logo\">\n");
      out.write("                                    <a href=\"home.jsp\" class=\"js-logo-clone\">Mochi Milk</a>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            ");
      out.write("\n");
      out.write("                            <div class=\"col-6 col-md-4 order-3 order-md-3 text-right\">\n");
      out.write("                                <form action=\"MainController\" method=\"POST\">\n");
      out.write("                                    <div class=\"site-top-icons\">\n");
      out.write("                                        <ul>\n");
      out.write("                                            ");
 if (loginUser == null) { 
      out.write("\n");
      out.write("                                            <li><a href=\"login.jsp\"><span class=\"icon icon-person\"></span> Login</a></li>\n");
      out.write("                                            <li><a href=\"register.jsp\"><span class=\"icon icon-person\"></span> Register</a></li>\n");
      out.write("                                                ");
 } else { 
      out.write("\n");
      out.write("                                            <li><a href=\"LogoutController\"></span>LOG OUT</a></li>\n");
      out.write("                                            <li><a href=\"update.jsp\"><span class=\"icon icon-person\"></span></a></li>\n");
      out.write("                                            <li>\n");
      out.write("                                                <a href=\"cart.jsp\" class=\"site-cart\">\n");
      out.write("                                                    <span class=\"icon icon-shopping_cart\"></span>\n");
      out.write("\n");
      out.write("                                                </a>\n");
      out.write("                                            </li> \n");
      out.write("                                            ");
 } 
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                                            <li class=\"d-inline-block d-md-none ml-md-0\"><a href=\"#\" class=\"site-menu-toggle js-menu-toggle\"><span class=\"icon-menu\"></span></a></li>\n");
      out.write("                                        </ul>\n");
      out.write("                                    </div> \n");
      out.write("                                </form>    \n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div> \n");
      out.write("                <nav class=\"site-navigation text-right text-md-center\" role=\"navigation\">\n");
      out.write("                    <div class=\"container\">\n");
      out.write("                        <ul class=\"site-menu js-clone-nav d-none d-md-block\">\n");
      out.write("                            <li><a href=\"home.jsp\">Home</a></li>\n");
      out.write("                            <li class=\"has-children dropdown\" data-toggle=\"dropdown\">\n");
      out.write("                                <a href=\"home.jsp\" style=\"pointer-events: auto;\">Shop</a>\n");
      out.write("                                <ul class=\"dropdown\" style=\"list-style-type: none;\">\n");
      out.write("\n");
      out.write("                                    <form action=\"MainController\" method=\"POST\">\n");
      out.write("                                        <li class=\"nav-link\"><a href=\"SearchCategoriesController?category=Milk\">Milk</a></li>\n");
      out.write("                                        <li class=\"nav-link\"><a href=\"SearchCategoriesController?category=Cooky\" class=\"d-flex\">Cooky</a></li>\n");
      out.write("                                        <li class=\"nav-link\"><a href=\"SearchCategoriesController?category=Yogurt\" class=\"d-flex\">Yogurt</a></li>\n");
      out.write("                                        <li class=\"nav-link\"><a href=\"SearchCategoriesController?category=Cake\" class=\"d-flex\">Cake</a></li>\n");
      out.write("                                    </form>\n");
      out.write("                                </ul>\n");
      out.write("                            </li>\n");
      out.write("\n");
      out.write("                            <li><a href=\"about.jsp\">About</a></li>\n");
      out.write("                                ");
 if (loginUser != null) { 
      out.write("\n");
      out.write("                            <li><a href=\"update.jsp\">Account</a></li>\n");
      out.write("                                ");
}
      out.write("\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                </nav>\n");
      out.write("            </header>\n");
      out.write("\n");
      out.write("            <div class=\"site-blocks-cover\" style=\"background-image: url(images/Mochi.jpg);\" data-aos=\"fade\">\n");
      out.write("                <div class=\"container\" style=\"position: relative;\">\n");
      out.write("                    <div class=\"row align-items-start align-items-md-center justify-content-end\" style=\"position: fixed; right: 180px;\">\n");
      out.write("                        <div class=\"col-md-4 text-center text-md-left pt-5 pt-md-0\" style=\"width: 900px;\">\n");
      out.write("                            <h1 class=\"mb-2 text-justify\">Welcome to Mochi Milk!</h1>\n");
      out.write("                            <div class=\"intro-text text-center text-md-left\">\n");
      out.write("                                <p class=\"mb-4\">We have a lot of delicious milk and cake.\n");
      out.write("                                    Let enjoy them!!!\n");
      out.write("                                </p>\n");
      out.write("                                <p>\n");
      out.write("                                    <a href=\"shop.jsp\" class=\"btn btn-sm btn-primary\">Shop now</a>\n");
      out.write("                                </p>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"site-section site-section-sm site-blocks-1\" style=\"background-color: white;\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-md-6 col-lg-4 d-lg-flex mb-4 mb-lg-0 pl-4\" data-aos=\"fade-up\" data-aos-delay=\"\">\n");
      out.write("                            <div class=\"icon mr-4 align-self-start\">\n");
      out.write("                                <span class=\"icon-truck\"></span>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"text\">\n");
      out.write("                                <h2 class=\"text-uppercase\">Free Shipping</h2>\n");
      out.write("                                <p></p>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-md-6 col-lg-4 d-lg-flex mb-4 mb-lg-0 pl-4\" data-aos=\"fade-up\" data-aos-delay=\"100\">\n");
      out.write("                            <div class=\"icon mr-4 align-self-start\">\n");
      out.write("                                <span class=\"icon-refresh2\"></span>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"text\">\n");
      out.write("                                <h2 class=\"text-uppercase\">Free Returns</h2>\n");
      out.write("                                <p></p>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-md-6 col-lg-4 d-lg-flex mb-4 mb-lg-0 pl-4\" data-aos=\"fade-up\" data-aos-delay=\"200\">\n");
      out.write("                            <div class=\"icon mr-4 align-self-start\">\n");
      out.write("                                <span class=\"icon-help\"></span>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"text\">\n");
      out.write("                                <h2 class=\"text-uppercase\">Customer Support</h2>\n");
      out.write("                                <p></p>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <!-- This page was loaded on\n");
      out.write("            ");
      out.print( (new java.util.Date()).toLocaleString());
      out.write(" \n");
      out.write("            -->\n");
      out.write("\n");
      out.write("            <div class=\"site-section site-blocks-2 ml-4\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"card-group\" data-aos=\"fade\" data-aos-delay=\"100\" style=\"background-color: #FFE5EC;\"> \n");
      out.write("                            <a class=\"block-2-item text-white mr-4\" href=\"SearchCategoriesController?category=Milk\" style=\"height: inherit;\">\n");
      out.write("                                <figure class=\"image\">\n");
      out.write("                                    <img src=\"images/Milk.jpg\" class=\"card-img\" alt=\"milk\" style=\"width: 250px; height: 350px;\">    \n");
      out.write("                                </figure>\n");
      out.write("                                <div class=\"card-img-overlay text\">\n");
      out.write("                                    <span style=\"color: #052659;\">Category</span>\n");
      out.write("                                    <h3 style=\"color: #052659;\">Milk</h3>\n");
      out.write("                                </div>\n");
      out.write("                            </a>\n");
      out.write("                            <a class=\"block-2-item text-white mr-4\" href=\"SearchCategoriesController?category=Yogurt\" style=\"height: inherit;\">\n");
      out.write("                                <figure class=\"image\">\n");
      out.write("                                    <img src=\"images/Yogurt.jpg\" class=\"card-img\" alt=\"Yogurt\" style=\"width: 250px; height: 350px;\">    \n");
      out.write("                                </figure>\n");
      out.write("                                <div class=\"card-img-overlay text\">\n");
      out.write("                                    <span class=\"text-uppercase\" style=\"color: #052659;\">Category</span>\n");
      out.write("                                    <h3 style=\"color: #052659;\">Yogurt</h3>\n");
      out.write("                                </div>\n");
      out.write("                            </a>\n");
      out.write("                            <a class=\"block-2-item text-white mr-4\" href=\"SearchCategoriesController?category=Cooky\" style=\"height: inherit;\">\n");
      out.write("                                <figure class=\"image\">\n");
      out.write("                                    <img src=\"images/Cooky.jpg\" class=\"card-img\" alt=\"Cooky\" style=\"width: 250px; height: 350px;\">    \n");
      out.write("                                </figure>\n");
      out.write("                                <div class=\"card-img-overlay text\">\n");
      out.write("                                    <span class=\"text-uppercase\" style=\"color: #052659;\">Category</span>\n");
      out.write("                                    <h3 style=\"color: #052659;\">Cooky</h3>\n");
      out.write("                                </div>\n");
      out.write("                            </a>\n");
      out.write("                            <a class=\"block-2-item text-white\" href=\"SearchCategoriesController?category=Cake\" style=\"height: inherit;\">\n");
      out.write("                                <figure class=\"image\">\n");
      out.write("                                    <img src=\"images/cakephomai.jpg\" class=\"card-img\" alt=\"milk\" style=\"width: 250px; height: 350px;\">    \n");
      out.write("                                </figure>\n");
      out.write("                                <div class=\"card-img-overlay text\">\n");
      out.write("                                    <span class=\"text-uppercase\" style=\"color:#052659;\">Category</span>\n");
      out.write("                                    <h3 style=\"color: #052659;\">Cake</h3>\n");
      out.write("                                </div>\n");
      out.write("                            </a>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "scss/Footer.jsp", out, false);
      out.write("\n");
      out.write("        <script src=\"js/jquery-3.3.1.min.js\"></script>\n");
      out.write("        <script src=\"js/jquery-ui.js\"></script>\n");
      out.write("        <script src=\"js/popper.min.js\"></script>\n");
      out.write("        <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"js/owl.carousel.min.js\"></script>\n");
      out.write("        <script src=\"js/jquery.magnific-popup.min.js\"></script>\n");
      out.write("        <script src=\"js/aos.js\"></script>\n");
      out.write("\n");
      out.write("        <script src=\"js/main.js\"></script>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
