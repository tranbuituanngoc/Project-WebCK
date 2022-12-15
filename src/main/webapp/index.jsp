<%@ page import="model.User" %>
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
        String url=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath();
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



<!-- Start slider  -->
<section id="aa-slider">
    <div class="aa-slider-area">

        <!-- Top slider -->
        <div class="aa-top-slider">

            <!-- Top slider single slide -->
            <div class="mySlider aa-top-slider-single ">
                <a href="properties-detail-akari-city.html">
                    <img src="img/slider/overview%20(1).jpg" alt="img">
                    <!-- Top slider content -->
                    <div class="aa-top-slider-content">
                        <span class="aa-top-slider-catg">Akari City</span>
                        <h2 class="aa-top-slider-title">35800m<sup>2</sup></h2>
                        <p class="aa-top-slider-location"><i class="fa fa-map-marker"></i>Quận Bình Tân, TP.HCM</p>
                        <span class="aa-top-slider-off">Thông Thường</span>
                        <p class="aa-top-slider-price">2,7 tỷ</p>
                        <!-- <a href="properties-detail-akari-city.html" class="aa-top-slider-btn">Xem Thêm<span class="fa fa-angle-double-right"></span></a> -->
                    </div>
                </a>
                <!-- / Top slider content -->
            </div>
            <!-- / Top slider single slide -->
            <!-- Top slider single slide -->
            <div class="mySlider aa-top-slider-single ">
                <a href="properties-detail-green-diamon.html">
                    <img src="img/slider/overview%20(2).jpeg" alt="img">
                    <!-- Top slider content -->
                    <div class="aa-top-slider-content">
                        <span class="aa-top-slider-catg">Green Diamond</span>
                        <h2 class="aa-top-slider-title">23500m<sup>2</sup></h2>
                        <p class="aa-top-slider-location"><i class="fa fa-map-marker"></i>Đống Đa, Hà Nội</p>
                        <span class="aa-top-slider-off">Studio</span>
                        <p class="aa-top-slider-price">2,5 tỷ</p>
                        <!-- <a href="properties-detail-green-diamon.html" class="aa-top-slider-btn">Xem Thêm<span class="fa fa-angle-double-right"></span></a> -->
                    </div>
                </a>
                <!-- / Top slider content -->
            </div>
            <!-- / Top slider single slide -->
            <!-- Top slider single slide -->
            <div class="mySlider aa-top-slider-single ">
                <a href="properties-detail-sunshine-city.html">
                    <img src="img/slider/overview%20(3).jpg" alt="img">
                    <!-- Top slider content -->
                    <div class="aa-top-slider-content">
                        <span class="aa-top-slider-catg">Sunshine City</span>
                        <h2 class="aa-top-slider-title">28900m<sup>2</sup></h2>
                        <p class="aa-top-slider-location"><i class="fa fa-map-marker"></i>Tây Hồ, Hà Nội</p>
                        <span class="aa-top-slider-off">Studio</span>
                        <p class="aa-top-slider-price">2,5 tỷ</p>
                        <!-- <a href="properties-detail-sunshine-city.html" class="aa-top-slider-btn">Xem Thêm<span class="fa fa-angle-double-right"></span></a> -->
                    </div>
                </a>
                <!-- / Top slider content -->
            </div>
            <!-- / Top slider single slide -->
            <!-- Top slider single slide -->
            <div class="mySlider aa-top-slider-single ">
                <a href="propertie-detail-sailing.html">
                    <img src="img/slider/overview%20(4).jpg" alt="img">
                    <!-- Top slider content -->
                    <div class="aa-top-slider-content">
                        <span class="aa-top-slider-catg">The Sailing</span>
                        <h2 class="aa-top-slider-title">19200m<sup>2</sup></h2>
                        <p class="aa-top-slider-location"><i class="fa fa-map-marker"></i>South Beach, Miami (USA)</p>
                        <span class="aa-top-slider-off">Văn Phòng</span>
                        <p class="aa-top-slider-price">3 tỷ</p>
                        <a href="propertie-detail-sailing.html" class="aa-top-slider-btn">Xem Thêm<span
                                class="fa fa-angle-double-right"></span></a>
                    </div>
                </a>
                <!-- / Top slider content -->
            </div>
            <!-- / Top slider single slide -->
            <!-- Top slider single slide -->
            <div class="mySlider aa-top-slider-single ">
                <a href="properties-detail-mizuki.html">
                    <img src="img/slider/overview%20(5).jpg" alt="img">
                    <!-- Top slider content -->
                    <div class="aa-top-slider-content">
                        <span class="aa-top-slider-catg">Mizuki Park</span>
                        <h2 class="aa-top-slider-title">21350m<sup>2</sup></h2>
                        <p class="aa-top-slider-location"><i class="fa fa-map-marker"></i>Đống Đa, Hà Nội</p>
                        <span class="aa-top-slider-off">Thông Tầng</span>
                        <p class="aa-top-slider-price">3,2 tỷ</p>
                        <!-- <a href="properties-detail-mizuki.html" class="aa-top-slider-btn">Xem Thêm<span class="fa fa-angle-double-right"></span></a> -->
                    </div>
                </a>
                <!-- / Top slider content -->
            </div>
            <!-- / Top slider single slide -->
            <!-- Top slider single slide -->

            <div class="mySlider aa-top-slider-single ">
                <a href="properties-detail-matrix-one.html">
                    <img src="img/slider/overview%20(6).jpg" alt="img">
                    <!-- Top slider content -->
                    <div class="aa-top-slider-content">
                        <span class="aa-top-slider-catg">The Matrix One</span>
                        <h2 class="aa-top-slider-title">19600m<sup>2</sup></h2>
                        <p class="aa-top-slider-location"><i class="fa fa-map-marker"></i>Hoàng Mai, Hà Nội</p>
                        <span class="aa-top-slider-off">Văn Phòng</span>
                        <p class="aa-top-slider-price">3 tỷ</p>
                        <!-- <a href="properties-detail-matrix-one.html" class="aa-top-slider-btn">Xem Thêm<span class="fa fa-angle-double-right"></span></a> -->
                    </div>
                </a>
                <!-- / Top slider content -->
            </div>
            <div class="mySlider aa-top-slider-single ">
                <a href="properties-detail-eco.html">
                    <img src="img/slider/overview%20(7).jpg" alt="img">
                    <!-- Top slider content -->
                    <div class="aa-top-slider-content">
                        <span class="aa-top-slider-catg">Eco Dream</span>
                        <h2 class="aa-top-slider-title">12300m<sup>2</sup></h2>
                        <p class="aa-top-slider-location"><i class="fa fa-map-marker"></i>Thanh Trì, Hà Nội</p>
                        <span class="aa-top-slider-off">Văn Phòng</span>
                        <p class="aa-top-slider-price">3 tỷ</p>
                        <!-- <a href="" class="aa-top-slider-btn">Xem Thêm<span class="fa fa-angle-double-right"></span></a> -->
                    </div>
                </a>
                <!-- / Top slider content -->
            </div>
            <div class="mySlider aa-top-slider-single ">
                <a href="properties-detail-lavita.html">
                    <img src="img/slider/overview%20(8).jpg" alt="img">
                    <!-- Top slider content -->
                    <div class="aa-top-slider-content">
                        <span class="aa-top-slider-catg">Lavita Charm</span>
                        <h2 class="aa-top-slider-title">31250m<sup>2</sup></h2>
                        <p class="aa-top-slider-location"><i class="fa fa-map-marker"></i>Quận 7, TP.HCM</p>
                        <span class="aa-top-slider-off">Sky Villa</span>
                        <p class="aa-top-slider-price">4,5 tỷ</p>
                        <!-- <a href="" class="aa-top-slider-btn">Xem Thêm<span class="fa fa-angle-double-right"></span></a> -->
                    </div>
                </a>
                <!-- / Top slider content -->

            </div>
            <div class="mySlider aa-top-slider-single ">
                <a href="properties-detail-sky-central.html">
                    <img src="img/slider/overview%20(9).jpg" alt="img">
                    <!-- Top slider content -->
                    <div class="aa-top-slider-content">
                        <span class="aa-top-slider-catg">Sky Central</span>
                        <h2 class="aa-top-slider-title">15430m<sup>2</sup></h2>
                        <p class="aa-top-slider-location"><i class="fa fa-map-marker"></i>Quận 1, TP.HCM</p>
                        <span class="aa-top-slider-off">Áp Mái</span>
                        <p class="aa-top-slider-price">2,8 tỷ</p>
                        <!-- <a href="" class="aa-top-slider-btn">Xem Thêm<span class="fa fa-angle-double-right"></span></a> -->
                    </div>
                </a>
                <!-- / Top slider content -->
            </div>
            <div class="mySlider aa-top-slider-single ">
                <a href="properties-detail-metro.html">
                    <img src="img/slider/overview%20(10).jpg" alt="img">
                    <!-- Top slider content -->
                    <div class="aa-top-slider-content">
                        <span class="aa-top-slider-catg">Metro Star</span>
                        <h2 class="aa-top-slider-title">15600m<sup>2</sup></h2>
                        <p class="aa-top-slider-location"><i class="fa fa-map-marker"></i>Quận Bình Thạnh, TP.HCM</p>
                        <span class="aa-top-slider-off">Dịch Vụ</span>
                        <p class="aa-top-slider-price">1,5 tỷ</p>
                        <!-- <a href="" class="aa-top-slider-btn">Xem Thêm<span class="fa fa-angle-double-right"></span></a> -->
                    </div>
                </a>
                <!-- / Top slider content -->
            </div>
            <!-- / Top slider single slide -->
        </div>
    </div>
</section>
<!-- End slider  -->

<!-- Advance Search -->
<section id="aa-advance-search">
    <div class="container">
        <div class="aa-advance-search-area">
            <div class="form">
                <div class="aa-advance-search-top">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="aa-single-advance-search">
                                <input type="text" placeholder="Nhập dự án mà bạn muốn tìm kiếm">
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="aa-single-advance-search">
                                <select>
                                    <option value="0" selected>Khu Vực</option>
                                    <option value="1">Hà Nội</option>
                                    <option value="2">Hồ Chí Minh</option>
                                    <option value="3">Bình Dương</option>
                                    <option value="4">Hải Phòng</option>
                                    <option value="5">Quảng Ninh</option>
                                    <option value="6">Bà Rịa-Vũng Tàu</option>
                                    <option value="7">An Giang</option>
                                    <option value="8">Bình Phước</option>
                                    <option value="9">Bình Định</option>
                                    <option value="10">Cần Thơ</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="aa-single-advance-search">
                                <select>
                                    <option value="0" selected>Loại Hình</option>
                                    <option value="1">Thông Tầng</option>
                                    <option value="2">Áp Mái</option>
                                    <option value="3">Thông Thường</option>
                                    <option value="4">Văn Phòng</option>
                                    <option value="5">Dịch Vụ</option>
                                    <option value="6">Văn Phòng</option>
                                    <option value="7">Sky Villa</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="aa-single-advance-search">
                                <select>
                                    <option value="0" selected>Dịch Vụ</option>
                                    <option value="1">Hồ Bơi</option>
                                    <option value="2">Khu Vui Chơi</option>
                                    <option value="3">Phòng Gym</option>
                                    <option value="4"><label>Khu Picnic</option>
                                    <option value="5"><label>Công Viên</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="aa-single-advance-search">
                                <input class="aa-search-btn" type="submit" value="Tìm Kiếm">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="aa-advance-search-bottom">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="aa-single-filter-search">
                                <span>Diện Tích (m<sup>2</sup>)</span>
                                <span>Từ</span>
                                <span id="skip-value-lower" class="example-val">1 Tỷ</span>
                                <span>Đến</span>
                                <span id="skip-value-upper" class="example-val">10 Tỷ</span>
                                <div id="aa-sqrfeet-range" class="noUi-target noUi-ltr noUi-horizontal noUi-background">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="aa-single-filter-search">
                                <span>Giá (tỷ)</span>
                                <span>Từ</span>
                                <span id="skip-value-lower2" class="example-val">1 Tỷ</span>
                                <span>Đến</span>
                                <span id="skip-value-upper2" class="example-val">10 Tỷ</span>
                                <div id="aa-price-range" class="noUi-target noUi-ltr noUi-horizontal noUi-background">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- / Advance Search -->
<!-- Latest property -->
<section id="aa-latest-property">
    <div class="container">
        <div class="aa-latest-property-area">
            <div class="aa-title">
                <h2>Các Dự Án Nổi Bật</h2>
                <span></span>
                <p>Hãy Lựa Chọn Căn Hộ Phù Hợp Với Bạn Nhất</p>
            </div>
            <div class="row">
                <a href="properties-detail-akari-city.html">
                    <div class="col-md-4">
                        <article class="aa-properties-item">
                            <a href="#" class="aa-properties-item-img">
                                <img src="img/slider/overview%20(1).jpg" alt="img">
                            </a>
                            <div class="aa-tag for-sale">
                                Đang Bán
                            </div>
                            <div class="aa-properties-item-content">
                                <div class="aa-properties-about">
                                    <h3><a href="#">Akari City</a></h3>
                                    <p>Quận Bình Tân, Hồ Chí Minh</p>
                                </div>
                                <div class="aa-properties-detial">
                                        <span class="aa-price">
              2,7 tỷ
            </span>
                                    <a href="properties-detail-akari-city.html" class="aa-secondary-btn">Xem Chi
                                        Tiết</a>
                                </div>
                            </div>
                            <i class="fa-regular fa-heart btn" onclick="changeIcon(this)"></i>
                        </article>
                    </div>
                </a>
                <div class="col-md-4">
                    <article class="aa-properties-item">
                        <a href="#" class="aa-properties-item-img">
                            <img src="img/slider/overview%20(2).jpeg" alt="img">
                        </a>
                        <div class="aa-tag for-sale">
                            Đang Bán
                        </div>
                        <div class="aa-properties-item-content">
                            <div class="aa-properties-about">
                                <h3><a href="">Green Diamond</a></h3>
                                <p>Đống Đa, Hà Nội</p>
                            </div>
                            <div class="aa-properties-detial">
                                    <span class="aa-price">
              2,5 tỷ
            </span>
                                <a href="properties-detail-green-diamon.html" class="aa-secondary-btn">Xem Chi Tiết</a>
                            </div>
                        </div>
                        <i class="fa-regular fa-heart btn" onclick="changeIcon(this)"></i>
                    </article>
                </div>
                <div class="col-md-4">
                    <article class="aa-properties-item">
                        <a href="#" class="aa-properties-item-img">
                            <img src="img/slider/overview%20(3).jpg" alt="img">
                        </a>
                        <div class="aa-tag sold-out">
                            Đã Bán
                        </div>
                        <div class="aa-properties-item-content">
                            <div class="aa-properties-about">
                                <h3><a href="#">Sunshine City</a></h3>
                                <p>Linh Trung, Thủ Đức</p>
                            </div>
                            <div class="aa-properties-detial">
                                    <span class="aa-price">
              2,5 tỷ
            </span>
                                <a href="properties-detail-sunshine-city.html" class="aa-secondary-btn">Xem Chi Tiết</a>
                            </div>
                        </div>
                        <i class="fa-regular fa-heart btn" onclick="changeIcon(this)"></i>
                    </article>
                </div>
                <div class="col-md-4">
                    <article class="aa-properties-item">
                        <a href="#" class="aa-properties-item-img">
                            <img src="img/slider/overview%20(4).jpg" alt="img">
                        </a>
                        <div class="aa-tag for-sale">
                            Đang Bán
                        </div>
                        <div class="aa-properties-item-content">
                            <div class="aa-properties-about">
                                <h3><a href="#">The Sailing</a></h3>
                                <p>Dĩ An, Bình Dương</p>
                            </div>
                            <div class="aa-properties-detial">
                                    <span class="aa-price">
              3 tỷ
            </span>
                                <a href="propertie-detail-sailing.html" class="aa-secondary-btn">Xem Chi Tiết</a>
                            </div>
                        </div>
                        <i class="fa-regular fa-heart btn" onclick="changeIcon(this)"></i>
                    </article>
                </div>
                <div class="col-md-4">
                    <article class="aa-properties-item">
                        <a href="#" class="aa-properties-item-img">
                            <img src="img/slider/overview%20(5).jpg" alt="img">
                        </a>
                        <div class="aa-tag sold-out">
                            Đã Bán
                        </div>
                        <div class="aa-properties-item-content">
                            <div class="aa-properties-about">
                                <h3><a href="#">Mizuki Park</a></h3>
                                <p>Đống Đa, Hà Nội</p>
                            </div>
                            <div class="aa-properties-detial">
                                    <span class="aa-price">
              3,2 tỷ
            </span>
                                <a href="properties-detail-mizuki.html" class="aa-secondary-btn">Xem Chi Tiết</a>
                            </div>
                        </div>
                        <i class="fa-regular fa-heart btn" onclick="changeIcon(this)"></i>
                    </article>
                </div>
                <div class="col-md-4">
                    <article class="aa-properties-item">
                        <a href="#" class="aa-properties-item-img">
                            <img src="img/slider/overview%20(6).jpg" alt="img">
                        </a>
                        <div class="aa-tag for-sale">
                            Đang Bán
                        </div>
                        <div class="aa-properties-item-content">
                            <div class="aa-properties-about">
                                <h3><a href="#">The Matrix One</a></h3>
                                <p>Quận Gò Vấp, Hồ Chí Minh</p>
                            </div>
                            <div class="aa-properties-detial">
                                    <span class="aa-price">
              3 tỷ
            </span>
                                <a href="properties-detail-matrix-one.html" class="aa-secondary-btn">Xem Chi Tiết</a>
                            </div>
                        </div>
                        <i class="fa-regular fa-heart btn" onclick="changeIcon(this)"></i>
                    </article>
                </div>
                <div class="col-md-4">
                    <article class="aa-properties-item">
                        <a href="#" class="aa-properties-item-img">
                            <img src="img/slider/overview%20(7).jpg" alt="img">
                        </a>
                        <div class="aa-tag for-sale">
                            Đang Bán
                        </div>
                        <div class="aa-properties-item-content">
                            <div class="aa-properties-about">
                                <h3><a href="#">Eco Dream</a></h3>
                                <p>Thanh Trì, Hà Nội</p>
                            </div>
                            <div class="aa-properties-detial">
                                    <span class="aa-price">
              3 tỷ
            </span>
                                <a href="properties-detail-eco.html" class="aa-secondary-btn">Xem Chi Tiết</a>
                            </div>
                        </div>
                        <i class="fa-regular fa-heart btn" onclick="changeIcon(this)"></i>
                    </article>
                </div>
                <div class="col-md-4">
                    <article class="aa-properties-item">
                        <a href="#" class="aa-properties-item-img">
                            <img src="img/slider/overview%20(8).jpg" alt="img">
                        </a>
                        <div class="aa-tag for-sale">
                            Đang Bán
                        </div>
                        <div class="aa-properties-item-content">
                            <div class="aa-properties-about">
                                <h3><a href="#">Lavita Charm</a></h3>
                                <p>Quận 7, Hồ Chí Minh</p>
                            </div>
                            <div class="aa-properties-detial">
                                    <span class="aa-price">
              4,5 tỷ
            </span>
                                <a href="properties-detail-lavita.html" class="aa-secondary-btn">Xem Chi Tiết</a>
                            </div>
                        </div>
                        <i class="fa-regular fa-heart btn" onclick="changeIcon(this)"></i>
                    </article>
                </div>
                <div class="col-md-4">
                    <article class="aa-properties-item">
                        <a href="#" class="aa-properties-item-img">
                            <img src="img/slider/overview%20(9).jpg" alt="img">
                        </a>
                        <div class="aa-tag for-sale">
                            Đang Bán
                        </div>
                        <div class="aa-properties-item-content">
                            <div class="aa-properties-about">
                                <h3><a href="#">Sky Central</a></h3>
                                <p>Quận 1, Hồ Chí Minh</p>
                            </div>
                            <div class="aa-properties-detial">
                                    <span class="aa-price">
              2,8 tỷ

            </span>
                                <a href="properties-detail-sky-central.html" class="aa-secondary-btn">Xem Chi Tiết</a>
                            </div>
                        </div>
                        <i class="fa-regular fa-heart btn" onclick="changeIcon(this)"></i>
                    </article>
                </div>
                <div class="col-md-4">
                    <article class="aa-properties-item">
                        <a href="properties-detail-metro.html" class="aa-properties-item-img">
                            <img src="img/slider/overview (10).jpg" alt="img">
                        </a>
                        <div class="aa-tag for-sale">
                            Đang Bán
                        </div>
                        <div class="aa-properties-item-content">
                            <div class="aa-properties-about">
                                <h3><a href="properties-detail-metro.html">Metro Star</a></h3>
                                <div class="b__main--rows">
                                    <p class="b__address">Quận Bình Thạnh, Hồ Chí Minh</p>
                                    <label>Chung Cư</label>
                                </div>
                            </div>
                            <div class="aa-properties-detial">
                                    <span class="aa-price">
                            1,5 tỷ
                          </span>
                                <a href="properties-detail-metro.html" class="aa-secondary-btn">Xem Chi Tiết</a>
                            </div>
                        </div>
                        <i class="fa-regular fa-heart btn" onclick="changeIcon(this)"></i>
                    </article>
                </div>
                <!-- 11 -->
                <div class="col-md-4">
                    <article class="aa-properties-item">
                        <a href="properties-detail-akari-city.html" class="aa-properties-item-img">
                            <img src="img/slider/overview (11).jpg" alt="img">
                        </a>
                        <div class="aa-tag for-sale">
                            Đang Bán
                        </div>
                        <div class="aa-properties-item-content">
                            <div class="aa-properties-about">
                                <h3><a href="properties-detail-akari-city.html">Le Grand Jardin</a></h3>
                                <div class="b__main--rows">
                                    <p class="b__address">Long Biên, Hà Nội</p>
                                    <label>Chung Cư</label>
                                </div>
                            </div>
                            <div class="aa-properties-detial">
                                    <span class="aa-price">
                            2,7 tỷ
                          </span>
                                <a href="properties-detail-akari-city.html" class="aa-secondary-btn">Xem Chi Tiết</a>
                            </div>
                        </div>
                        <i class="fa-regular fa-heart btn" onclick="changeIcon(this)"></i>
                    </article>
                </div>
                <!-- 12 -->
                <div class="col-md-4">
                    <article class="aa-properties-item">
                        <a href="properties-detail-akari-city.html" class="aa-properties-item-img">
                            <img src="img2/12.jpg" alt="img">
                        </a>
                        <div class="aa-tag for-sale">
                            Đang Bán
                        </div>
                        <div class="aa-properties-item-content">
                            <div class="aa-properties-about">
                                <h3><a href="properties-detail-akari-city.html">C-Sky View</a></h3>
                                <div class="b__main--rows">
                                    <p class="b__address">Thủ Dầu Một, Bình Dương</p>
                                    <label>Chung Cư</label>
                                </div>
                            </div>
                            <div class="aa-properties-detial">
                                    <span class="aa-price">
                            3,3 tỷ
                          </span>
                                <a href="properties-detail-akari-city.html" class="aa-secondary-btn">Xem Chi Tiết</a>
                            </div>
                        </div>
                        <i class="fa-regular fa-heart btn" onclick="changeIcon(this)"></i>
                    </article>
                </div>
                <!-- 10 -->
                <!--            <div class="col-md-4">-->
                <!--                <article class="aa-properties-item">-->
                <!--                    <a href="properties-detail-metro.html" class="aa-properties-item-img">-->
                <!--                        <img src="img/slider/overview (10).jpg" alt="img">-->
                <!--                    </a>-->
                <!--                    <div class="aa-tag for-sale">-->
                <!--                        Đang Bán-->
                <!--                    </div>-->
                <!--                    <div class="aa-properties-item-content">-->
                <!--                        <div class="aa-properties-about">-->
                <!--                            <h3><a href="properties-detail-metro.html">Metro Star</a></h3>-->
                <!--                            <div class="b__main&#45;&#45;rows">-->
                <!--                                <p class="b__address">Quận Bình Thạnh, Hồ Chí Minh</p>-->
                <!--                                <label>Chung Cư</label>-->
                <!--                            </div>-->
                <!--                        </div>-->
                <!--                        <div class="aa-properties-detial">-->
                <!--                            <span class="aa-price">-->
                <!--                      2,7 tỷ-->
                <!--                    </span>-->
                <!--                            <a href="properties-detail-metro.html" class="aa-secondary-btn">Xem Chi Tiết</a>-->
                <!--                        </div>-->
                <!--                    </div>-->
                <!--                </article>-->
                <!--            </div>-->
                <!--            &lt;!&ndash; 11 &ndash;&gt;-->
                <!--            <div class="col-md-4">-->
                <!--                <article class="aa-properties-item">-->
                <!--                    <a href="properties-detail-akari-city.html" class="aa-properties-item-img">-->
                <!--                        <img src="img/slider/overview (11).jpg" alt="img">-->
                <!--                    </a>-->
                <!--                    <div class="aa-tag for-sale">-->
                <!--                        Đang Bán-->
                <!--                    </div>-->
                <!--                    <div class="aa-properties-item-content">-->
                <!--                        <div class="aa-properties-about">-->
                <!--                            <h3><a href="properties-detail-akari-city.html">Le Grand Jardin</a></h3>-->
                <!--                            <div class="b__main&#45;&#45;rows">-->
                <!--                                <p class="b__address">Long Biên, Hà Nội</p>-->
                <!--                                <label>Chung Cư</label>-->
                <!--                            </div>-->
                <!--                        </div>-->
                <!--                        <div class="aa-properties-detial">-->
                <!--                            <span class="aa-price">-->
                <!--                      4,2 tỷ-->
                <!--                    </span>-->
                <!--                            <a href="properties-detail-akari-city.html" class="aa-secondary-btn">Xem Chi Tiết</a>-->
                <!--                        </div>-->
                <!--                    </div>-->
                <!--                </article>-->
                <!--            </div>-->
                <!--            &lt;!&ndash; 12 &ndash;&gt;-->
                <!--            <div class="col-md-4">-->
                <!--                <article class="aa-properties-item">-->
                <!--                    <a href="properties-detail-akari-city.html" class="aa-properties-item-img">-->
                <!--                        <img src="img2/12.jpg" alt="img">-->
                <!--                    </a>-->
                <!--                    <div class="aa-tag for-rent">-->
                <!--                        Cho Thuê-->
                <!--                    </div>-->
                <!--                    <div class="aa-properties-item-content">-->
                <!--                        <div class="aa-properties-about">-->
                <!--                            <h3><a href="properties-detail-akari-city.html">C-Sky View</a></h3>-->
                <!--                            <div class="b__main&#45;&#45;rows">-->
                <!--                                <p class="b__address">Thủ Dầu Một, Bình Dương</p>-->
                <!--                                <label>Chung Cư</label>-->
                <!--                            </div>-->
                <!--                        </div>-->
                <!--                        <div class="aa-properties-detial">-->
                <!--                            <span class="aa-price">-->
                <!--                      3,3 tỷ-->
                <!--                    </span>-->
                <!--                            <a href="properties-detail-akari-city.html" class="aa-secondary-btn">Xem Chi Tiết</a>-->
                <!--                        </div>-->
                <!--                    </div>-->
                <!--                </article>-->
                <!--            </div>-->
            </div>
        </div>
    </div>
</section>
<!-- / Latest property -->

<!-- Service section -->
<section id="aa-service">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="aa-service-area">
                    <div class="aa-title">
                        <h2>Thông Tin Về Chúng Tôi</h2>
                        <span></span>
                        <p>Nơi buôn bán các dự án bất động sản đáng tin cậy và uy tính hàng đầu hiện nay.</p>
                    </div>
                    <!-- service content -->
                    <div class="aa-service-content">
                        <div class="row">
                            <div class="col-md-3">
                                <div class="aa-single-service">
                                    <div class="aa-service-icon">
                                        <span class="fa fa-home"></span>
                                    </div>
                                    <div class="aa-single-service-content">
                                        <h4><a href="#">Bán Căn Hộ</a></h4>
                                        <p>Nơi chứa tất cả các dự án được quan tâm nhiều nhất hiện nay với mức giá vô
                                            cùng hợp lí và ưu đãi đối với mọi người.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="aa-single-service">
                                    <div class="aa-service-icon">
                                        <span class="fa fa-check"></span>
                                    </div>
                                    <div class="aa-single-service-content">
                                        <h4><a href="#">Chi Phí Ưu Đãi</a></h4>
                                        <p>Nơi giúp bạn nhanh chóng, thuận tiện và dễ dàng có thể sở hữu một căn hộ cho
                                            chính mình với mức chi phí ưu đãi hàng đầu hiện nay.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="aa-single-service">
                                    <div class="aa-service-icon">
                                        <span class="fa fa-crosshairs"></span>
                                    </div>
                                    <div class="aa-single-service-content">
                                        <h4><a href="#">Mục Tiêu Phát Triển</a></h4>
                                        <p>Luôn lấy những đánh giá và phản hồi của khách hàng làm động lực để có thể
                                            tiếp tục nâng cao và phát triển.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="aa-single-service">
                                    <div class="aa-service-icon">
                                        <span class="fa fa-bar-chart-o"></span>
                                    </div>
                                    <div class="aa-single-service-content">
                                        <h4><a href="#">Phân Tích Thị Trường</a></h4>
                                        <p>Với đội ngũ nhân viên đông đảo và kĩ năng chuyên môn cao sẵn sàng hỗ trợ
                                            khách hàng và tư vấn mọi nhu cầu, thắc mắc của khách hàng trong lĩnh vựng
                                            Bất Động Sản.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- / Service section -->

<!-- Promo Banner Section -->
<section id="aa-promo-banner">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="aa-promo-banner-area">
                    <h3>Tìm Cho Mình Một Căn Hộ Ưng Ý</h3>
                    <p>Wealthuring sàn buôn bán bất động sản và căn hộ uy tính hàng đầu Việt Nam hiện nay, với các mức
                        giá ưu đãi và dịch vụ chăm sóc khách hàng tốt nhất.</p>
                    <a href="properties.html" class="aa-view-btn">Xem Chi Tiết</a>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- / Promo Banner Section -->


<!-- Latest blog -->
<section id="aa-latest-blog">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="aa-latest-blog-area">
                    <div class="aa-title">
                        <h2>Bài Viết Mới Nhất</h2>
                        <span></span>
                        <p>Thông tin về các dự án Bất Động Sản mới nhất và các chia sẻ của các nhà đầu tư nổi tiếng
                            trong lĩnh vực.</p>
                    </div>
                    <div class="aa-latest-blog-content">
                        <div class="row">
                            <!-- start single blog -->
                            <div class="col-md-4">
                                <article class="aa-blog-single">
                                    <figure class="aa-blog-img">
                                        <a href="blog-detail-1.html"><img src="img/blog1 (1).jpg" alt="img"></a>
                                        <span class="aa-date-tag">10/9/2022</span>
                                    </figure>
                                    <div class="aa-blog-single-content">
                                        <h3><a href="blog-detail-1.html">Sức hút của thị trường BĐS Duy Tiên và cơ hội
                                            cho giới địa ốc.</a></h3>
                                        <p>Hội tụ những tiềm năng về vị trí, hạ tầng, quy hoạch; Duy Tiên đang trở thành
                                            “ngôi sao sáng” trên bản đồ thị trường bất động sản, thu hút một lượng lớn
                                            các nhà đầu tư.</p>
                                        <div class="aa-blog-single-bottom">
                                            <a href="#" class="aa-blog-author"><i class="fa fa-user"></i> Admin</a>
                                            <a href="#" class="aa-blog-comments"><i class="fa fa-comment-o"></i>6</a>
                                        </div>
                                    </div>

                                </article>
                            </div>
                            <!-- start single blog -->
                            <div class="col-md-4">
                                <article class="aa-blog-single">
                                    <figure class="aa-blog-img">
                                        <a href="blog-detail-2.html"><img src="img/blog1 (2).png" alt="img"></a>
                                        <span class="aa-date-tag">8/9/2022</span>
                                    </figure>
                                    <div class="aa-blog-single-content">
                                        <h3><a href="blog-detail-2.html">Tận hưởng “bữa tiệc thị giác” với tầm view
                                            triệu đô ngay tại trung tâm Hà Nội.</a></h3>
                                        <p>Khai Sơn City - dự án căn hộ mang phong cách hiện đại tại trung tâm Hà Nội
                                            đang được các nhà đầu tư săn đón khi mang đến cho tầng lớp tinh hoa tầm nhìn
                                            “triệu đô” đắt giá.</p>
                                        <div class="aa-blog-single-bottom">
                                            <a href="#" class="aa-blog-author"><i class="fa fa-user"></i> Admin</a>
                                            <a href="#" class="aa-blog-comments"><i class="fa fa-comment-o"></i>6</a>
                                        </div>
                                    </div>
                                </article>
                            </div>
                            <!-- start single blog -->
                            <div class="col-md-4">
                                <article class="aa-blog-single">
                                    <figure class="aa-blog-img">
                                        <a href="#"><img src="img/blog1 (3).png" alt="img"></a>
                                        <span class="aa-date-tag">6/9/2022</span>
                                    </figure>
                                    <div class="aa-blog-single-content">
                                        <h3><a href="#">Thị trường bất động sản khan hiếm nguồn cung, đâu là tâm điểm
                                            ?</a></h3>
                                        <p>Nguồn cung hạn chế, lượng tiêu thụ không ngừng tăng khiến người mua nhà, giới
                                            đầu tư, kinh doanh bước vào “cuộc đua” săn tìm sản phẩm.</p>
                                        <div class="aa-blog-single-bottom">
                                            <a href="#" class="aa-blog-author"><i class="fa fa-user"></i> Admin</a>
                                            <a href="#" class="aa-blog-comments"><i class="fa fa-comment-o"></i>6</a>
                                        </div>
                                    </div>
                                </article>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- / Latest blog -->

<!-- Client Testimonial -->
<section id="aa-client-testimonial">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="aa-client-testimonial-area">
                    <div class="aa-title">
                        <h2>Phản Hồi Của Người Dùng</h2>
                        <span></span>
                        <p>Lời nhận xét của những người dùng sau khi trải nghiệm và mua căn hộ của chúng tôi.</p>
                    </div>
                    <!-- testimonial content -->
                    <div class="aa-testimonial-content">
                        <!-- testimonial slider -->
                        <ul class="aa-testimonial-slider">
                            <li>
                                <div class="aa-testimonial-single">
                                    <div class="aa-testimonial-img">
                                        <img src="img/User1.png" alt="testimonial img">
                                    </div>
                                    <div class="aa-testimonial-info">
                                        <p>Một trang web rất uy tính và có đội ngũ nhân viên vô cùng thân thiện với tôi,
                                            họ giúp tôi có thể chọn lựa chỗ ở cho mình một cách rất tận tình và chu đáo.
                                            Mọi thứ đều mang lại cho tôi cảm giác rất hài lòng.</p>
                                    </div>
                                    <div class="aa-testimonial-bio">
                                        <p>Kevin Freeman</p>
                                        <span>Nhân Viên Bất Động Sản</span>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="aa-testimonial-single">
                                    <div class="aa-testimonial-img">
                                        <img src="img/User3.png" alt="testimonial img">
                                    </div>
                                    <div class="aa-testimonial-info">
                                        <p>Tại sao tôi lại không biết đến trang web này sớm hơn cơ chứ! Tất cả mọi thứ
                                            từ trang web đến đội ngũ nhân viên đều tạo cho tôi một cảm giác rất thân
                                            thiện. Điều đó càng làm tôi thấy hối hận vì không biết đến
                                            trang web này sớm hơn.</p>
                                    </div>
                                    <div class="aa-testimonial-bio">
                                        <p>Jessica Brown</p>
                                        <span>Cố Vấn Tài Chính</span>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="aa-testimonial-single">
                                    <div class="aa-testimonial-img">
                                        <img src="img/User2.png" alt="testimonial img">
                                    </div>
                                    <div class="aa-testimonial-info">
                                        <p>Cách họ giới thiệu và tư vấn cho tôi về các căn hộ của họ làm cho tôi rất hài
                                            lòng. Mọi người đều rất thân thiện và nhiệt tình với các khách hàng của mình
                                            chứ không chỉ riêng mình tôi.</p>
                                    </div>
                                    <div class="aa-testimonial-bio">
                                        <p>David Muller</p>
                                        <span>Quản Lí Dự Án</span>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Client Testimonial -->


<!-- Client brand -->
<!-- <section id="aa-client-brand">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="aa-client-brand-area">
                    <ul class="aa-client-brand-slider">
                        <li>
                            <div class="aa-client-single-brand">
                                <img src="img/client-brand-1.png" alt="brand image">
                            </div>
                        </li>
                        <li>
                            <div class="aa-client-single-brand">
                                <img src="img/client-brand-2.png" alt="brand image">
                            </div>
                        </li>
                        <li>
                            <div class="aa-client-single-brand">
                                <img src="img/client-brand-3.png" alt="brand image">
                            </div>
                        </li>
                        <li>
                            <div class="aa-client-single-brand">
                                <img src="img/client-brand-5.png" alt="brand image">
                            </div>
                        </li>
                        <li>
                            <div class="aa-client-single-brand">
                                <img src="img/client-brand-4.png" alt="brand image">
                            </div>
                        </li>
                        <li>
                            <div class="aa-client-single-brand">
                                <img src="img/client-brand-1.png" alt="brand image">
                            </div>
                        </li>
                        <li>
                            <div class="aa-client-single-brand">
                                <img src="img/client-brand-2.png" alt="brand image">
                            </div>
                        </li>
                        <li>
                            <div class="aa-client-single-brand">
                                <img src="img/client-brand-3.png" alt="brand image">
                            </div>
                        </li>
                        <li>
                            <div class="aa-client-single-brand">
                                <img src="img/client-brand-5.png" alt="brand image">
                            </div>
                        </li>
                        <li>
                            <div class="aa-client-single-brand">
                                <img src="img/client-brand-4.png" alt="brand image">
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section> -->
<!-- / Client brand -->


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
    // document.getElementById("properties").classList.add('active');
    // document.getElementById("blog").classList.add('active');
    // document.getElementById("gellery").classList.add('active');
</script>

</body>

</html>