<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %>

<%@ page import="java.util.ArrayList" %>
<%@ page import="service.PropertieService" %>
<%@ page import="model.Propertie" %>

<%@ page contentType="text/html; charset=UTF-8" %>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Wealthuring | Dự Án</title>
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

    <%
        String url=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath();
    %>
    <link rel="stylesheet" href="<%=url%>/css/style.css">


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

<body class="aa-price-range">
<!-- Pre Loader -->
<div id="aa-preloader-area">
    <div class="pulse"></div>
</div>
<!-- SCROLL TOP BUTTON -->
<a class="scrollToTop" href="#"><i class="fa fa-angle-double-up"></i></a>
<!-- END SCROLL TOP BUTTON -->


<%--<!-- Start header and menu section -->--%>
<jsp:include page="header.jsp" />
<%--<!-- End header and menu section -->--%>

<!-- Start Proerty header  -->

<section id="aa-property-header">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="aa-property-header-inner">
                    <h2>DỰ ÁN</h2>
                    <ol class="breadcrumb">
                        <li><a href="#">Trang chủ</a></li>
                        <li class="active">Dự án</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End Proerty header  -->

<!-- Start Properties  -->
<section id="aa-properties">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <div class="aa-properties-content">
                    <!-- start properties content head -->
                    <div class="aa-properties-content-head">

                        <div class="aa-properties-content-head-left">
                            <form action="" class="aa-sort-form">
                                <label for="">Sắp xếp</label>
                                <select name="">
                                    <option href="properties.jsp?" value="1" selected="Default">Mặc định</option>
                                    <option value="2">Giá giảm dần</option>
                                    <option value="2">Giá tăng dần</option>
                                    <option value="3">Diện tích giảm dần</option>
                                    <option value="3">Diện tích tăng dần</option>
                                </select>
                            </form>
                        </div>
                        <div class="aa-properties-content-head-right">
                            <a id="aa-grid-properties" href="#"><span class="fa fa-th"></span></a>
                            <a id="aa-list-properties" href="#"><span class="fa fa-list"></span></a>
                        </div>
                    </div>

                    <%
                        PropertieService pds = new PropertieService();
                        List<Propertie> list1 = pds.getListPropertie();
                        int start = 0, end = 20;
                        if (list1.size() < 100) {
                            end = 20;
                        }
                        if (request.getParameter("start") != null) {
                            start = Integer.parseInt(request.getParameter("start"));
                        }
                        if (request.getParameter("end") != null) {
                            end = Integer.parseInt(request.getParameter("end"));
                        }
                        List<Propertie> list2 = pds.getListByPage(list1, start, end);
//                        request.setAttribute("list2", list2);
                    %>
                    <!-- Start properties content body -->
                    <div class="aa-properties-content-body">
                        <ul class="aa-properties-nav">
                                <% for (Propertie p : list2) { %>
                            <!-- 1 -->
                            <li>
                                <article class="aa-properties-item">
                                    <a href="propertie-detail.jsp?id_duan=<%=p.getId_duan()%>" class="aa-properties-item-img">
                                        <img src="<%= p.getImg() %>" alt="img">
                                    </a>
                                    <% if (p.isSoldOut()) { %>
                                    <div class="aa-tag sold-out">Đã Bán</div>
                                    <%} else { %>
                                    <div class="aa-tag for-sale">Đang Bán</div>
                                    <% } %>

                                    <div class="aa-properties-item-content">

                                        <div class="aa-properties-about">
                                            <h3><a href="propertie-detail.jsp?id_duan=<%=p.getId_duan()%>"><%= p.getName()%>
                                            </a></h3>
                                            <div class="b__main--rows">
                                                <p class="b__address"><%=p.getAddress()%>
                                                </p>
                                                <label><%= p.getType()%>
                                                </label>
                                            </div>
                                        </div>
                                        <div class="aa-properties-detial">
                                            <span class="aa-price"><%= p.getPrice()%> Tỷ</span>
                                            <a href="propertie-detail.jsp?id_duan=<%=p.getId_duan()%>" class="aa-secondary-btn">Xem Chi
                                                Tiết</a>
                                        </div>
                                    </div>
                                    <i class="fa-regular fa-heart btn" onclick="changeIcon(this)"></i>
                                </article>
                                <%}%>
                            </li>
                    </div>
                    <!-- Start properties content bottom -->
                    <div class="aa-properties-content-bottom">
                        <nav>
                                <div class="pagination">
                                    <li class="page-item previous-page <%=(start==0)?"disabled":""%>"><a href="#" aria-label="Previous">&laquo;</a></li>
                                    <%
                                        int a, b;
                                        int limit = list1.size() / 20;
                                        if (limit * 20 < list1.size()) {
                                            limit += 1;
                                        }
                                        for (int i = 1; i <= limit; i++) {
                                            a = (i - 1) * 20;
                                            b = i * 20;
                                            if (b > list1.size()) {
                                                b = list1.size();
                                            }
                                    %>
                                    <li class="page-item current-page active"><a class="page-link" href="properties.jsp?start=<%=a%>&end=<%=b%>"><%=i%></a></li>
                                    <%}%>
                                    <li class="page-item next-page <%= (start+limit>=end)?"disabled":""%>"><a href="#" aria-label="Next">&raquo;</a></li>
                                </div>
                        </nav>
                    </div>
                </div>
            </div>
            <!-- Start properties sidebar -->
            <div class="col-md-4">
                <aside class="aa-properties-sidebar">
                    <!-- Start Single properties sidebar -->
                    <div class="aa-properties-single-sidebar">
                        <h3>Tìm Kiếm</h3>
                        <form action="">
                            <div class="aa-single-advance-search">
                                <input type="text" placeholder="Nhập dự án mà bạn muốn tìm kiếm">
                            </div>
                            <div class="aa-single-advance-search">
                                <select id="" name="">
                                    <option selected="" value="0">Khu Vực</option>
                                    <option value="1">Hà Nội</option>
                                    <option value="2">Hồ Chí Minh</option>
                                    <option value="3">Bình Dương</option>
                                    <option value="4">Hải Phòng</option>
                                    <option value="5">Quảng Ninh</option>
                                    <option value="6">Bà Rịa - Vũng Tàu</option>
                                    <option value="7">An Giang</option>
                                    <option value="8">Bình Phước</option>
                                    <option value="9">Bình Định</option>
                                    <option value="10">Cần Thơ</option>


                                </select>
                            </div>
                            <div class="aa-single-advance-search">
                                <select id="" name="">
                                    <option selected="" value="0">Loại Hình</option>
                                    <option value="1">Thông Tầng</option>
                                    <option value="2">Áp Mái</option>
                                    <option value="3">Thông Thường</option>
                                    <option value="4">Văn Phòng</option>
                                    <option value="5">Dịch Vụ</option>
                                    <option value="6">Sky Villa</option>

                                </select>
                            </div>
                            <div class="aa-single-advance-search">
                                <select id="1" name="">
                                    <option selected="" value="0">Dịch Vụ</option>
                                    <option value="1">Hồ Bơi</option>
                                    <option value="2">Khu Vui Chơi</option>
                                    <option value="3">Phòng Gym</option>
                                    <option value="4">Khu Picnic</option>
                                    <option value="5">Công Viên</option>

                                </select>
                            </div>
                            <div class="aa-single-filter-search">
                                <span>Diện Tích (m<sup>2</sup>)</span>
                                <span>Từ</span>
                                <span id="skip-value-lower" class="example-val">1 Tỷ</span>
                                <span>Đến</span>
                                <span id="skip-value-upper" class="example-val">10 Tỷ</span>
                                <div id="aa-sqrfeet-range"
                                     class="noUi-target noUi-ltr noUi-horizontal noUi-background"></div>
                            </div>
                            <div class="aa-single-filter-search">
                                <span>Giá (Tỷ)</span>
                                <span>Từ</span>
                                <span id="skip-value-lower2" class="example-val">1 Tỷ</span>
                                <span>Đến</span>
                                <span id="skip-value-upper2" class="example-val">10 Tỷ</span>
                                <div id="aa-price-range" class="noUi-target noUi-ltr noUi-horizontal noUi-background">
                                </div>
                            </div>
                            <div class="aa-single-advance-search">
                                <input type="submit" value="Tìm Kiếm" class="aa-search-btn">
                            </div>
                        </form>
                    </div>
                    <!-- Start Single properties sidebar -->
                    <div class="aa-properties-single-sidebar">
                        <h3>Dự Án Nổi Bật</h3>
                        <div class="media">
                            <div class="media-left">
                                <a href="properties-detail-metro.html">
                                    <img class="media-object" src="img/slider/overview%20(10).jpg" alt="img">
                                </a>
                            </div>
                            <div class="media-body">
                                <h4 class="media-heading"><a href="properties-detail-metro.html">Metro Star</a></h4>
                                <p>Quận Bình Thạnh, TP.HCM</p>
                                <span>1,5 Tỷ</span>
                            </div>
                        </div>
                        <div class="media">
                            <div class="media-left">
                                <a href="properties-detail-lavita.html">
                                    <img class="media-object" src="img/slider/overview%20(8).jpg" alt="img">
                                </a>
                            </div>
                            <div class="media-body">
                                <h4 class="media-heading"><a href="properties-detail-lavita.html">Lavita Charm</a></h4>
                                <p>Quận 7, TP.HCM</p>
                                <span>4,5 Tỷ</span>
                            </div>
                        </div>
                        <div class="media">
                            <div class="media-left">
                                <a href="properties-detail-sunshine-city.html">
                                    <img class="media-object" src="img/slider/overview%20(3).jpg" alt="img">
                                </a>
                            </div>
                            <div class="media-body">
                                <h4 class="media-heading"><a href="properties-detail-sunshine-city.html">Sunshine
                                    City</a></h4>
                                <p>Linh Trung, Thủ Đức</p>
                                <span>2,5 Tỷ</span>
                            </div>
                        </div>
                    </div>
                </aside>
            </div>
        </div>
    </div>
</section>
<!-- / Properties  -->

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
<!-- my Script -->
<script src="js/script.js"></script>
<!-- icon -->
<script src="https://kit.fontawesome.com/9212eb0180.js" crossorigin="anonymous"></script>


</body>

</html>