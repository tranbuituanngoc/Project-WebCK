<%@ page import="model.User" %><%--
  Created by IntelliJ IDEA.
  User: Alshie
  Date: 12/8/2022
  Time: 11:41 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Start header section -->
<header id="aa-header">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="aa-header-area">
                    <div class="row">
                        <div class="col-md-6 col-sm-6 col-xs-6">
                            <div class="aa-header-left">
                                <div class="aa-telephone-no">
                                    <span class="fa fa-phone"></span> 0123456789
                                </div>
                                <div class="aa-email hidden-xs">
                                    <span class="fa fa-envelope-o"></span> wealthuring@gmail.com
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6 col-sm-6 col-xs-6">
                            <div class="aa-header-right">
                                <%
                                    User user = (User) session.getAttribute("user");
                                    if (user == null) {
                                %>
                                <a href="user/signup.jsp" class="aa-register">Đăng kí</a>
                                <a href="user/signin.jsp" class="aa-login">Đăng nhập</a>
                                <%
                                } else {
                                %>
                                <div class="wel">
                                    <span>Xin chào </span> <span class="dropdown"><a class="dropdown-toggle"
                                                                                     data-toggle="dropdown"
                                                                                     href="properties.jsp"> <b><%=user.getUserName()%></b> <span
                                        class="caret"></span></a>
                                        <ul class="dropdown-menu" role="menu">
                                            <li><a href="wishlist.jsp">Dự án quan tâm</a></li>
                                            <li><a href="propertie-detail.jsp">PROPERTIES DETAIL</a></li>
                                            <li><a href="properties.jsp">PROPERTIES</a></li>
                                            <li><a href="propertie-detail.jsp">PROPERTIES DETAIL</a></li>
                                            <li><a href="user/changePass.jsp">Đổi mật khẩu</a></li>
                                            <li><a href="nguoi-dung?action=dang-xuat">Đăng xuất</a></li>
                                        </ul>
                                        </span>
                                </div>
                                <%
                                    }
                                %>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</header>
<!-- End header section -->

<%
//    String isPage=request.getAttribute("isPage")+"";
%>

<!-- Start menu section -->
<section id="aa-menu-area">
    <nav class="navbar navbar-default main-navbar" role="navigation">
        <div class="container">
            <div class="nav_menu">
                <div class="navbar-header">
                    <!-- FOR MOBILE VIEW COLLAPSED BUTTON -->
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                            aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <!-- LOGO -->
                    <!-- Text based logo -->
                    <!-- <a class="navbar-brand aa-logo" href="index.jsp"> <img src="img/wealthuring2_logo.png" alt="logo"></a> -->
                    <!-- Image based logo -->
                    <a class="navbar-brand aa-logo-img nav_logo" href="index.jsp"><img
                            src="img/wealthuring_bannerUpdate-removebg.png" alt="logo"></a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul id="top-menu" class="nav navbar-nav navbar-right aa-main-nav">
                        <li id="index"><a href="index.jsp">TRANG CHỦ</a></li>
                        <li id="properties"><a href="properties.jsp">DỰ ÁN </a></li>
                        <!-- <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="properties.html">PROPERTIES <span class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="properties.html">PROPERTIES</a></li>
                                <li><a href="properties-detail.html">PROPERTIES DETAIL</a></li>
                            </ul>
                        </li> -->
                        <li id="gellery"><a href="gallery.jsp">TỔNG QUAN</a></li>

                        <li id="blog"><a href="blog_archive.jsp">TIN TỨC</a></li>
                        <!-- <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="blog-archive.html">BLOG <span class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="blog-archive.html">BLOG</a></li>
                                <li><a href="blog-single.html">BLOG DETAILS</a></li>
                            </ul>
                        </li> -->
                        <li id="contact"><a href="contact.jsp">LIÊN HỆ</a></li>
                        <!-- <li><a href="404.jsp">404 PAGE</a></li> -->
                    </ul>
                </div>
                <!--/.nav-collapse -->
            </div>
        </div>
    </nav>
</section>
