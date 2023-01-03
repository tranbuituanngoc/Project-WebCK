<%@ page import="database.WishListDAO" %>
<%@ page import="model.User" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.Propertie" %>
<%@ page import="model.WishList" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Wealthuring | Dự Án Quan Tâm</title>

    <!-- Favicon -->
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">

    <!-- Font awesome -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <!-- Bootstrap -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <!-- slick slider -->
    <link rel="stylesheet" type="text/css" href="css/slick.css">
    <!-- price picker slider -->
    <link rel="stylesheet" type="text/css" href="css/nouislider.css">
    <!-- Fancybox slider -->
    <link rel="stylesheet" href="css/jquery.fancybox.css" type="text/css" media="screen"/>
    <!-- Theme color -->
    <link id="switcher" href="css/theme-color/default-theme.css" rel="stylesheet">

    <link href="css/style.css" rel="stylesheet">


    <!-- Google Font -->
    <link href='https://fonts.googleapis.com/css?family=Vollkorn' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
            integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
            crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
<%
    String url = "";
    User user = (User) session.getAttribute("user");
    if (user == null) {
        response.sendRedirect(url + "/401.jsp");
    }
%>
<!-- Pre Loader -->
<div id="aa-preloader-area">
    <div class="pulse"></div>
</div>
<!-- SCROLL TOP BUTTON -->
<a class="scrollToTop" href="#"><i class="fa fa-angle-double-up"></i></a>
<!-- END SCROLL TOP BUTTON -->


<%--<!-- Start header and menu section -->--%>
<jsp:include page="header.jsp"/>
<%--<!-- End header and menu section -->--%>

<!-- Start Proerty header  -->

<section id="aa-property-header">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="aa-property-header-inner">
                    <h2>Dự Án Quan Tâm</h2>
                    <ol class="breadcrumb">
                        <li><a href="index.jsp">Trang chủ</a></li>
                        <li><a href="gallery.html">Dự án quan tâm</a></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End Proerty header  -->

<section id="aa-gallery">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="aa-gallery-area">
                    <!-- Start gallery -->
                    <%
                        WishListDAO wishListDAO = new WishListDAO();
                        WishList w = new WishList();
                        w.setId_user(user.getId_User());
                        ArrayList<Propertie> list = wishListDAO.selectByUserId(w);
                    %>
                    <div class="aa-gallery-content">
                        <!-- Start gallery image -->
                        <div id="mixit-container" class="aa-gallery-body">
                            <%
                                for (Propertie p : list) {
                            %>
                            <!-- start single gallery image -->
                            <div class="aa-single-gallery mix apartment">
                                <article class="aa-properties-item">
                                    <a href="propertie-detail.jsp?id_duan=<%=p.getId_duan()%>"
                                       class="aa-properties-item-img">
                                        <img src="<%= p.getImg() %>" alt="img">
                                    </a>
                                    <% if (p.isSoldOut()) { %>
                                    <div class="aa-tag sold-out">Đã Bán</div>
                                    <%} else { %>
                                    <div class="aa-tag for-sale">Đang Bán</div>
                                    <% } %>
                                    <div class="aa-properties-item-content">
                                        <div class="aa-properties-about">
                                            <h3>
                                                <a href="propertie-detail.jsp?id_duan=<%=p.getId_duan()%>"><%= p.getName()%>
                                                </a>
                                            </h3>
                                            <div class="b__main--rows">
                                                <p class="b__address"><%=p.getAddress()%>
                                                </p>
                                                <label>Chung Cư</label>
                                            </div>
                                        </div>
                                        <div class="aa-properties-detial">
                                            <span class="aa-price"><%= p.getbPrice()%> - <%=p.getePrice()%> Tỷ</span>
                                            <a href="propertie-detail.jsp?id_duan=<%=p.getId_duan()%>"
                                               class="aa-secondary-btn">Xem Chi
                                                Tiết</a>
                                        </div>
                                    </div>
                                    <i class="fa-regular fa-heart fa-solid btn"></i>
                                </article>
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
</section>


<!-- Footer -->
<jsp:include page="footer.jsp"/>
<!-- / Footer -->

<!-- jQuery library -->
<!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> -->
<script src="js/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.js"></script>
<!-- slick slider -->
<script type="text/javascript" src="js/slick.js"></script>
<!-- Price picker slider -->
<script type="text/javascript" src="js/nouislider.js"></script>
<!-- mixit slider -->
<script type="text/javascript" src="js/jquery.mixitup.js"></script>
<!-- Add fancyBox -->
<script type="text/javascript" src="js/jquery.fancybox.pack.js"></script>
<!-- Custom js -->
<script src="js/custom.js"></script>
<!-- icon -->
<script src="https://kit.fontawesome.com/9212eb0180.js" crossorigin="anonymous"></script>
</body>

</html>