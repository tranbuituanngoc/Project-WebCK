<%@ page import="service.PropertieService" %>
<%@ page import="model.Propertie" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Wealthuring | Trang Chủ</title>

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

    <!-- Main style sheet -->
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
    <%--    <style>--%>
    <%--        #aa-header .aa-header-area .aa-header-right .wel,--%>
    <%--        #aa-header .aa-header-area .aa-header-right .wel a.dropdown-toggle {--%>
    <%--            color: #fff;--%>
    <%--        }--%>
    <%--    </style>--%>
</head>

<body>

    <!-- Pre Loader -->
    <div id="aa-preloader-area">
        <div class="pulse"></div>
    </div>
    <!-- SCROLL TOP BUTTON -->
    <a class="scrollToTop" href="#"><i class="fa fa-angle-double-up"></i></a>
    <!-- END SCROLL TOP BUTTON -->


    <!-- Start header section -->
    <jsp:include page="header.jsp"/>
    <!-- End header section -->

    <!-- Start Proerty header  -->
    <section id="aa-property-header">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="aa-property-header-inner">
                        <h2>Tổng Quan</h2>
                        <ol class="breadcrumb">
                            <li><a href="gallery.jsp">Tổng quan</a></li>
                            <li class="active">Các dự án căn hộ nổi bật </li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Proerty header  -->
    <%
        PropertieService pds = new PropertieService();
        List<Propertie> list = pds.getListPropertie();
    %>
    <section id="aa-gallery">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="aa-gallery-area">
                        <div class="aa-title">
                            <h2>Các Dự Án Căn Hộ Nổi Bật</h2>
                            <span></span>
                        </div>
                        <!-- Start gallery -->
                        <div class="aa-gallery-content">
                            <div class="aa-gallery-top">
                                <!-- Start gallery menu -->
                                <ul>
                                    <li class=" active"><a href="gallery.jsp">Tất Cả</a></li>
                                    <li class=""><a href="pricedown.jsp">Giá thấp đến cao</a></li>
                                    <li class=""><a href="priceup.jsp">Giá cao đến thấp</a></li>
<%--                                    <li data-filter=".duplex" class="filter">Thông Tầng</li>--%>
<%--                                    <li data-filter=".skyvilla" class="filter">Sky Villa</li>--%>
<%--                                    <li data-filter=".studio" class="filter">Studio</li>--%>
<%--                                    <li data-filter=".office" class="filter">Văn Phòng</li>--%>
<%--                                    <li data-filter=".penthouse" class="filter">Áp Mái</li>--%>
                                </ul>
                            </div>
                            <!-- Start gallery image -->
                            <div id="mixit-container" class="aa-gallery-body">
                                <!-- start single gallery image -->
                                <%for (Propertie p : list) {%>
                                <div class="aa-single-gallery mix apartment">
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
                                                <span class="aa-price"><%= p.getbPrice()%> - <%=p.getePrice()%>  Tỷ</span>
                                                <a href="propertie-detail.jsp?id_duan=<%=p.getId_duan()%>" class="aa-secondary-btn">Xem Chi
                                                    Tiết</a>
                                            </div>
                                        </div>
                                        <i class="fa-regular fa-heart btn" onclick="changeIcon(this)"></i>
                                    </article>
                                </div>
                                <%}%>
                                <!-- start single gallery image -->
<%--                                <div class="aa-single-gallery mix studio">--%>
<%--                                    <article class="aa-properties-item">--%>
<%--                                        <a href="../../../../../LapTrinh/LTW/ProjectWeb_BDS/properties-detail-green-diamon.html" class="aa-properties-item-img">--%>
<%--                                            <img src="../../../../../LapTrinh/LTW/ProjectWeb_BDS/img/slider/overview%20(2).jpeg" alt="img">--%>
<%--                                        </a>--%>
<%--                                        <div class="aa-tag for-sale">--%>
<%--                                            Đang Bán--%>
<%--                                        </div>--%>
<%--                                        <div class="aa-properties-item-content">--%>
<%--                                            <div class="aa-properties-about">--%>
<%--                                                <h3><a href="../../../../../LapTrinh/LTW/ProjectWeb_BDS/properties-detail-green-diamon.html">Green Diamond</a></h3>--%>
<%--                                                <div class="b__main--rows">--%>
<%--                                                    <p class="b__address">Đống Đa, Hà Nội</p>--%>
<%--                                                    <label>Chung Cư</label>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                            <div class="aa-properties-detial">--%>
<%--                                                <span class="aa-price">--%>
<%--                          2,5 tỷ--%>
<%--                        </span>--%>
<%--                                                <a href="../../../../../LapTrinh/LTW/ProjectWeb_BDS/properties-detail-green-diamon.html" class="aa-secondary-btn">Xem Chi Tiết</a>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </article>--%>
<%--                                </div>--%>
<%--                                <!-- start single gallery image -->--%>
<%--                                <div class="aa-single-gallery mix service">--%>
<%--                                    <article class="aa-properties-item">--%>
<%--                                        <a href="../../../../../LapTrinh/LTW/ProjectWeb_BDS/properties-detail-sunshine-city.html" class="aa-properties-item-img">--%>
<%--                                            <img src="../../../../../LapTrinh/LTW/ProjectWeb_BDS/img/slider/overview%20(3).jpg" alt="img">--%>
<%--                                        </a>--%>
<%--                                        <div class="aa-tag sold-out">--%>
<%--                                            Đã Bán--%>
<%--                                        </div>--%>
<%--                                        <div class="aa-properties-item-content">--%>
<%--                                            <div class="aa-properties-about">--%>
<%--                                                <h3><a href="../../../../../LapTrinh/LTW/ProjectWeb_BDS/properties-detail-sunshine-city.html">Sunshine City</a></h3>--%>
<%--                                                <div class="b__main--rows">--%>
<%--                                                    <p class="b__address">Linh Trung, Thủ Đức</p>--%>
<%--                                                    <label>Chung Cư</label>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                            <div class="aa-properties-detial">--%>
<%--                                                <span class="aa-price">--%>
<%--                          2,5 tỷ--%>
<%--                        </span>--%>
<%--                                                <a href="../../../../../LapTrinh/LTW/ProjectWeb_BDS/properties-detail-sunshine-city.html" class="aa-secondary-btn">Xem Chi Tiết</a>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </article>--%>
<%--                                </div>--%>
<%--                                <!-- start single gallery image -->--%>
<%--                                <div class="aa-single-gallery mix office">--%>
<%--                                    <article class="aa-properties-item">--%>
<%--                                        <a href="../../../../../LapTrinh/LTW/ProjectWeb_BDS/propertie-detail-sailing.html" class="aa-properties-item-img">--%>
<%--                                            <img src="../../../../../LapTrinh/LTW/ProjectWeb_BDS/img/slider/overview%20(4).jpg" alt="img">--%>
<%--                                        </a>--%>
<%--                                        <div class="aa-tag for-sale">--%>
<%--                                            Đang Bán--%>
<%--                                        </div>--%>
<%--                                        <div class="aa-properties-item-content">--%>
<%--                                            <div class="aa-properties-about">--%>
<%--                                                <h3><a href="../../../../../LapTrinh/LTW/ProjectWeb_BDS/propertie-detail-sailing.html">The Sailing</a></h3>--%>
<%--                                                <div class="b__main--rows">--%>
<%--                                                    <p class="b__address">Dĩ An, Bình Dương</p>--%>
<%--                                                    <label>Chung Cư</label>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                            <div class="aa-properties-detial">--%>
<%--                                                <span class="aa-price">--%>
<%--                          3 tỷ--%>
<%--                        </span>--%>
<%--                                                <a href="../../../../../LapTrinh/LTW/ProjectWeb_BDS/propertie-detail-sailing.html" class="aa-secondary-btn">Xem Chi Tiết</a>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </article>--%>
<%--                                </div>--%>
<%--                                <!-- start single gallery image -->--%>
<%--                                <div class="aa-single-gallery mix duplex">--%>
<%--                                    <article class="aa-properties-item">--%>
<%--                                        <a href="../../../../../LapTrinh/LTW/ProjectWeb_BDS/properties-detail-mizuki.html" class="aa-properties-item-img">--%>
<%--                                            <img src="../../../../../LapTrinh/LTW/ProjectWeb_BDS/img/slider/overview%20(5).jpg" alt="img">--%>
<%--                                        </a>--%>
<%--                                        <div class="aa-tag sold-out">--%>
<%--                                            Đã Bán--%>
<%--                                        </div>--%>
<%--                                        <div class="aa-properties-item-content">--%>
<%--                                            <div class="aa-properties-about">--%>
<%--                                                <h3><a href="../../../../../LapTrinh/LTW/ProjectWeb_BDS/properties-detail-mizuki.html">Mizuki Park</a></h3>--%>
<%--                                                <div class="b__main--rows">--%>
<%--                                                    <p class="b__address">Đống Đa, Hà Nội</p>--%>
<%--                                                    <label>Chung Cư</label>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                            <div class="aa-properties-detial">--%>
<%--                                                <span class="aa-price">--%>
<%--                          3,2 tỷ--%>
<%--                        </span>--%>
<%--                                                <a href="../../../../../LapTrinh/LTW/ProjectWeb_BDS/properties-detail-mizuki.html" class="aa-secondary-btn">Xem Chi Tiết</a>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </article>--%>
<%--                                </div>--%>
<%--                                <!-- start single gallery image -->--%>
<%--                                <div class="aa-single-gallery mix skyvilla">--%>
<%--                                    <article class="aa-properties-item">--%>
<%--                                        <a href="../../../../../LapTrinh/LTW/ProjectWeb_BDS/properties-detail-matrix-one.html" class="aa-properties-item-img">--%>
<%--                                            <img src="../../../../../LapTrinh/LTW/ProjectWeb_BDS/img/slider/overview%20(6).jpg" alt="img">--%>
<%--                                        </a>--%>
<%--                                        <div class="aa-tag for-sale">--%>
<%--                                            Đang Bán--%>
<%--                                        </div>--%>
<%--                                        <div class="aa-properties-item-content">--%>
<%--                                            <div class="aa-properties-about">--%>
<%--                                                <h3><a href="../../../../../LapTrinh/LTW/ProjectWeb_BDS/properties-detail-matrix-one.html">The Matrix One</a></h3>--%>
<%--                                                <div class="b__main--rows">--%>
<%--                                                    <p class="b__address">Quận Gò Vấp, Hồ Chí Minh</p>--%>
<%--                                                    <label>Chung Cư</label>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                            <div class="aa-properties-detial">--%>
<%--                                                <span class="aa-price">--%>
<%--                          3 tỷ--%>
<%--                        </span>--%>
<%--                                                <a href="../../../../../LapTrinh/LTW/ProjectWeb_BDS/properties-detail-matrix-one.html" class="aa-secondary-btn">Xem Chi Tiết</a>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </article>--%>
<%--                                </div>--%>
<%--                                <!-- start single gallery image -->--%>
<%--                                <div class="aa-single-gallery mix office">--%>
<%--                                    <article class="aa-properties-item">--%>
<%--                                        <a href="../../../../../LapTrinh/LTW/ProjectWeb_BDS/properties-detail-eco.html" class="aa-properties-item-img">--%>
<%--                                            <img src="../../../../../LapTrinh/LTW/ProjectWeb_BDS/img/slider/overview%20(7).jpg" alt="img">--%>
<%--                                        </a>--%>
<%--                                        <div class="aa-tag for-sale">--%>
<%--                                            Đang Bán--%>
<%--                                        </div>--%>
<%--                                        <div class="aa-properties-item-content">--%>
<%--                                            <div class="aa-properties-about">--%>
<%--                                                <h3><a href="../../../../../LapTrinh/LTW/ProjectWeb_BDS/properties-detail-eco.html">Eco Dream</a></h3>--%>
<%--                                                <div class="b__main--rows">--%>
<%--                                                    <p class="b__address">Thanh Trì, Hà Nội</p>--%>
<%--                                                    <label>Chung Cư</label>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                            <div class="aa-properties-detial">--%>
<%--                                                <span class="aa-price">--%>
<%--                          3 tỷ--%>
<%--                        </span>--%>
<%--                                                <a href="../../../../../LapTrinh/LTW/ProjectWeb_BDS/properties-detail-eco.html" class="aa-secondary-btn">Xem Chi Tiết</a>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </article>--%>
<%--                                </div>--%>
<%--                                <!-- start single gallery image -->--%>
<%--                                <div class="aa-single-gallery mix skyvilla">--%>
<%--                                    <article class="aa-properties-item">--%>
<%--                                        <a href="../../../../../LapTrinh/LTW/ProjectWeb_BDS/properties-detail-lavita.html" class="aa-properties-item-img">--%>
<%--                                            <img src="../../../../../LapTrinh/LTW/ProjectWeb_BDS/img/slider/overview%20(8).jpg" alt="img">--%>
<%--                                        </a>--%>
<%--                                        <div class="aa-tag for-sale">--%>
<%--                                            Đang Bán--%>
<%--                                        </div>--%>
<%--                                        <div class="aa-properties-item-content">--%>
<%--                                            <div class="aa-properties-about">--%>
<%--                                                <h3><a href="../../../../../LapTrinh/LTW/ProjectWeb_BDS/properties-detail-lavita.html">Lavita Charm</a></h3>--%>
<%--                                                <div class="b__main--rows">--%>
<%--                                                    <p class="b__address">Quận 7, Hồ Chí Minh</p>--%>
<%--                                                    <label>Chung Cư</label>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                            <div class="aa-properties-detial">--%>
<%--                                                <span class="aa-price">--%>
<%--                         4,5 tỷ--%>
<%--                        </span>--%>
<%--                                                <a href="../../../../../LapTrinh/LTW/ProjectWeb_BDS/properties-detail-lavita.html" class="aa-secondary-btn">Xem Chi Tiết</a>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </article>--%>
<%--                                </div>--%>
<%--                                <!-- start single gallery image -->--%>
<%--                                <div class="aa-single-gallery mix penthouse">--%>
<%--                                    <article class="aa-properties-item">--%>
<%--                                        <a href="../../../../../LapTrinh/LTW/ProjectWeb_BDS/properties-detail-sky-central.html" class="aa-properties-item-img">--%>
<%--                                            <img src="../../../../../LapTrinh/LTW/ProjectWeb_BDS/img/slider/overview%20(9).jpg" alt="img">--%>
<%--                                        </a>--%>
<%--                                        <div class="aa-tag for-sale">--%>
<%--                                            Đang Bán--%>
<%--                                        </div>--%>
<%--                                        <div class="aa-properties-item-content">--%>
<%--                                            <div class="aa-properties-about">--%>
<%--                                                <h3><a href="../../../../../LapTrinh/LTW/ProjectWeb_BDS/properties-detail-sky-central.html">Sky Central</a></h3>--%>
<%--                                                <div class="b__main--rows">--%>
<%--                                                    <p class="b__address">Quận 1, Hồ Chí Minh</p>--%>
<%--                                                    <label>Chung Cư</label>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                            <div class="aa-properties-detial">--%>
<%--                                                <span class="aa-price">--%>
<%--                          2,8 tỷ--%>
<%--                        </span>--%>
<%--                                                <a href="../../../../../LapTrinh/LTW/ProjectWeb_BDS/properties-detail-sky-central.html" class="aa-secondary-btn">Xem Chi Tiết</a>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </article>--%>
<%--                                </div>--%>
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
    <!-- my Script -->
    <script src="js/script.js"></script>
    <!-- icon -->
    <script src="https://kit.fontawesome.com/9212eb0180.js" crossorigin="anonymous"></script>
    <script>
        document.getElementById("index").classList.add('active');
        // document.getElementById("contact").classList.add('active');
        // document.getElementById("").classList.add('active');
        // document.getElementById("blog").classList.add('active');
        // document.getElementById("gellery").classList.add('active');
    </script>


</body>

</html>