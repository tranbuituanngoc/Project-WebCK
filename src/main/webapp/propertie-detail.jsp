<%@ page import="java.util.List" %>
<%@ page import="service.PropertieService" %>
<%@ page import="model.Properties_detail" %>
<%@ page import="model.Service" %>
<%@ page import="database.ServiceDAO" %>
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
        String url = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath();
    %>
    <link rel="stylesheet" href="<%=url%>/css/style.css">

    <!-- Google Font -->
    <link href='https://fonts.googleapis.com/css?family=Vollkorn' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>


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
<jsp:include page="header.jsp"/>
<%--<!-- End header and menu section -->--%>

<%
    PropertieService pds = new PropertieService();
    List<Properties_detail> list2 = pds.getListPropertieDetail(request.getParameter("id_duan"));
%>

<!-- Start Proerty header  -->
<section id="aa-property-header">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="aa-property-header-inner">
                    <h2>CHI TIẾT DỰ ÁN</h2>
                    <ol class="breadcrumb">
                        <li><a href="index.jsp">Trang Chủ</a></li>
                        <li class="active"><a href="properties.jsp">Dự Án</a></li>
                        <% for (Properties_detail p2 : list2) {%>
                        <li class="active"><%=p2.getPropertie().getName()%></li>
                        <%}%>
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
                    <!-- Start properties content body -->
                    <div class="aa-properties-details">
                        <% for (Properties_detail p : list2) {
                            Service s = new Service();
                            s.setId_ctda(p.getId_ctda());
                            ServiceDAO serviceDAO = new ServiceDAO();
                            Service service = serviceDAO.findByID(s);
                        %>
                        <div class="aa-properties-details-img">
                            <img src="img/slider/overview%20(1).jpg" alt="img">
                            <img src="img/slider/living_1.jpg" alt="img">
                            <img src="img/slider/kitchen_1.jpg" alt="img">
                            <img src="img/slider/bed_1.jpg" alt="img">
                            <img src="img/slider/bath_1.jpg" alt="img">
                        </div>
                        <div class="aa-properties-info">
                            <h2><%=p.getPropertie().getName()%></h2>
                            <button class="btn-contact" ><a href="form.jsp">Liên hệ xem dự án</a></button>
                            <span class="aa-price"><%=p.getPropertie().getbPrice()%> - <%=p.getPropertie().getePrice()%> Tỷ</span>
                            <h4>Tổng Quan</h4>
                            <ul>
                                <li>Loại Hình: <%=p.getPropertie().getType()%>
                                </li>
                                <li><%=p.getSoPhong().getNum_living()%> Phòng Khách</li>
                                <li><%=p.getSoPhong().getNum_bed()%> Phòng Ngủ</li>
                                <li><%=p.getSoPhong().getNum_kitchen()%> Nhà Bếp</li>
                                <li><%=p.getSoPhong().getNum_living()%> Phòng Khách</li>
                            </ul>
                            <h4>Tiện Ích Của <%=p.getPropertie().getName()%>:</h4>
                            <ul>
                                <% if (service.isHoboi()) {%>
                                <li>Hồ Bơi</li>
                                <%}%>
                                <% if (service.isKhuvuichoi()) {%>
                                <li>Khu Vui Chơi Trẻ Em</li>
                                <%}%>
                                <% if (service.isGym()) {%>
                                <li>Phòng Tập Gym</li>
                                <%}%>
                                <% if (service.isPicnic()) {%>
                                <li>Khu Picnic</li>
                                <%}%>
                                <% if (service.isCongvien()) {%>
                                <li>Công Viên</li>
                                <%}%>
                            </ul>
                            <h4>Xem Bản Đồ</h4>
                            <iframe src="<%=p.getMap()%>" width="100%" height="450" style="border:0;" allowfullscreen=""
                                    loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                        </div>
                        <%}%>
                        <!-- Properties social share -->
                        <div class="aa-properties-social">
                            <ul>
                                <li>Chia Sẻ</li>
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                            </ul>
                        </div>
                        <!-- Nearby properties -->
                        <!-- Nearby properties -->
                        <%
                            List<Propertie> list3 = pds.getListDifferentProduct();
                        %>
                        <div class="aa-nearby-properties">
                            <div class="aa-title">
                                <h2>Dự Án Khác</h2>
                                <span></span>
                            </div>
                            <div class="aa-nearby-properties-area">
                                <div class="row">
                                    <% for (Propertie p : list3) {%>
                                    <div class="col-md-6">
                                        <article class="aa-properties-item">
                                            <a class="aa-properties-item-img" href="propertie-detail.jsp?id_duan=<%=p.getId_duan()%>">
                                                <img alt="img" src="<%=p.getImg()%>">
                                            </a>
                                            <% if (p.isSoldOut()) { %>
                                            <div class="aa-tag sold-out">Đã Bán</div>
                                            <%} else { %>
                                            <div class="aa-tag for-sale">Đang Bán</div>
                                            <% } %>
                                            <div class="aa-properties-item-content">
                                                <div class="aa-properties-about">
                                                    <h3><a href="propertie-detail.jsp?id_duan=<%=p.getId_duan()%>"><%=p.getName()%></a></h3>
                                                    <div class="b__main--rows">
                                                        <p class="b__address"><%=p.getAddress()%></p>
                                                        <label><%=p.getType()%></label>
                                                    </div>
                                                </div>
                                                <div class="aa-properties-detial">
                                                   <span class="aa-price">
                                                     <%=p.getbPrice()%> - <%=p.getePrice()%>tỷ
                                                   </span>
                                                    <a class="aa-secondary-btn" href="properties-detail-eco.html">Xem
                                                        Chi Tiết</a>
                                                </div>
                                            </div>
                                        </article>
                                    </div>
                                    <div class="col-md-6">
                                        <article class="aa-properties-item">
                                            <a class="aa-properties-item-img" href="#">
                                                <img alt="img" src="img/item/living_5.jpg">
                                            </a>
                                            <div class="aa-tag for-sale">
                                                For Sale
                                            </div>
                                            <div class="aa-properties-item-content">
                                                <div class="aa-properties-about">
                                                    <h3><a href="#">Mizuki Park</a></h3>
                                                    <div class="b__main--rows">
                                                        <p class="b__address">Đống Đa, Hà Nội</p>
                                                        <label>Chung Cư</label>
                                                    </div>
                                                </div>
                                                <div class="aa-properties-detial">
                                                     <span class="aa-price">
                                                       3,2 tỷ
                                                     </span>
                                                    <a class="aa-secondary-btn" href="properties-detail-mizuki.html">Xem
                                                        Chi Tiết</a>
                                                </div>
                                            </div>
                                        </article>
                                    </div>
                                    <%}%>
                                </div>
                            </div>
                        </div>
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
                                <select id="" name="">
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
                                <span>Giá (tỷ)</span>
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

                    <%
                        List<Propertie> list4 = pds.getListHighLight();
                    %>
                    <!-- Start Single properties sidebar -->
                    <div class="aa-properties-single-sidebar">
                        <h3>Dự Án Phổ Biến</h3>
                        <%for (Propertie pt : list4) {%>
                        <div class="media">
                            <div class="media-left">
                                <a href="propertie-detail.jsp?id_duan=<%=pt.getId_duan()%>">
                                    <img class="media-object" src="<%=pt.getImg()%>" alt="img">
                                </a>
                            </div>
                            <div class="media-body">
                                <h4 class="media-heading"><a href="propertie-detail.jsp?id_duan=<%=pt.getId_duan()%>"><%=pt.getName()%></a></h4>
                                <p><%=pt.getAddress()%></p>
                                <span><%=pt.getbPrice()%> - <%=pt.getePrice()%></span>
                            </div>
                        </div>
                        <%}%>
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

</body>

</html>