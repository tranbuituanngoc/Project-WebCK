<%@ page import="model.User" %>
<%@ page import="service.PropertieService" %>
<%@ page import="model.Propertie" %>
<%@ page import="java.util.List" %>
<%@ page import="model.Blog" %>
<%@ page import="model.Blog_detail" %>
<%@ page import="service.BlogService" %>
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
    List<Propertie> list1 = pds.getListBestSeller();
%>
<!-- Start slider  -->
<section id="aa-slider">
    <div class="aa-slider-area">

        <!-- Top slider -->
        <div class="aa-top-slider">
            <% for (Propertie p : list1) {%>
            <!-- Top slider single slide -->
            <div class="mySlider aa-top-slider-single ">
                <a href="propertie-detail.jsp?id_duan=<%=p.getId_duan()%>">
                    <img src="<%=p.getImg()%>" alt="img">
                    <!-- Top slider content -->
                    <div class="aa-top-slider-content">
                        <span class="aa-top-slider-catg"><%=p.getName()%></span>
                        <h2 class="aa-top-slider-title"><%=p.getArea()%>m<sup>2</sup></h2>
                        <p class="aa-top-slider-location"><i class="fa fa-map-marker"></i><%=p.getAddress()%></p>
                        <span class="aa-top-slider-off"><%=p.getType()%></span>
                        <p class="aa-top-slider-price"><%=p.getbPrice()%> - <%=p.getePrice()%> Tỷ</p>
                        <!-- <a href="-detail-akari-city.html" class="aa-top-slider-btn">Xem Thêm<span class="fa fa-angle-double-right"></span></a> -->
                    </div>
                </a>
                <!-- / Top slider content -->
            </div>
            <%}%>
            <!-- / Top slider single slide -->
        </div>
    </div>
</section>
<!-- End slider  -->

<!-- Advance Search -->
<section id="aa-advance-search">
    <div class="container">
        <div class="aa-advance-search-area">
            <div class="form" action="search" method="post">
                <div class="aa-advance-search-top">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="aa-single-advance-search">
                                <input name="txt" type="text" placeholder="Nhập dự án mà bạn muốn tìm kiếm">
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
                                    <option value="4">Khu Picnic</option>
                                    <option value="5">Công Viên</option>
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
                <div class="col-md-12">
                <% for (Propertie p : list1) { %>
                <div class="col-md-4">
                    <div class="aa-properties-content-body">
                        <ul class="aa-properties-nav">

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
                                            <span class="aa-price"><%= p.getbPrice()%> - <%=p.getePrice()%>Tỷ</span>
                                            <a href="propertie-detail.jsp?id_duan=<%=p.getId_duan()%>" class="aa-secondary-btn">Xem Chi
                                                Tiết</a>
                                        </div>
                                    </div>
                                    <i class="fa-regular fa-heart btn" onclick="changeIcon(this)"></i>
                                </article>
                            </li>
                        </ul>
                    </div>
                </div>
                <%}%>
                </div>
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
                    <a href="properties.jsp" class="aa-view-btn">Xem Chi Tiết</a>
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
                <%
                    BlogService bs = new BlogService();
                    List<Blog> list = bs.getNewBlog();
                %>

                <div class="aa-latest-blog-area">
                    <div class="aa-title">
                        <h2>Bài Viết Mới Nhất</h2>
                        <span></span>
                        <p>Thông tin về các dự án Bất Động Sản mới nhất và các chia sẻ của các nhà đầu tư nổi tiếng
                            trong lĩnh vực.</p>
                    </div>
                    <div class="aa-latest-blog-content">
                            <!-- start single blog -->
                        <% for (Blog b : list) {%>
                            <div class="col-md-4">

                                <article class="aa-blog-single">
                                    <figure class="aa-blog-img">
                                        <a href="blog-detail.jsp?id_blog=<%=b.getId_blog()%>"><img src="<%=b.getImg()%>" alt="img"></a>
                                        <span class="aa-date-tag"><%=b.getDate_create()%></span>
                                    </figure>
                                    <div class="aa-blog-single-content">
                                        <h3><a href="blog-detail.jsp?id_blog=<%=b.getId_blog()%>"><%=b.getTitle()%></a></h3>
                                        <p><%=b.getSubtitle()%></p>
                                        <div class="aa-blog-single-bottom">
                                            <a href="#" class="aa-blog-author"><i class="fa fa-user"></i> Admin</a>
<%--                                            <a href="#" class="aa-blog-comments"><i class="fa fa-comment-o"></i>6</a>--%>
                                        </div>
                                    </div>

                                </article>
                            </div>
                        <%}%>
                        <!-- start single blog -->
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
    // document.getElementById("").classList.add('active');
    // document.getElementById("blog").classList.add('active');
    // document.getElementById("gellery").classList.add('active');
</script>

</body>

</html>