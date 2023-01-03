
<%@ page import="java.util.List" %>
<%@ page import="service.BlogService" %>
<%@ page import="model.Blog_detail" %>
<%@ page import="model.Blog" %>
<%@ page import="model.BlogCategory" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Wealthuring | Tin Tức</title>

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


</head>
<body>

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

<%
    BlogService bs = new BlogService();
    List<Blog_detail> list2 = bs.getListBlogDetail(request.getParameter("id_blog"));
%>
<!-- Start Proerty header  -->
<section id="aa-property-header">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="aa-property-header-inner">
                    <h2>Tin Tức</h2>
                    <ol class="breadcrumb">
                        <li><a href="index.jsp">Trang chủ</a></li>
                        <li class="active"><a href="blog_archive.jsp">Tin tức</a></li>
                        <% for (Blog_detail bd : list2) { %>
                        <li class="active"><%=bd.getTitle()%></li>
                        <%}%>
                    </ol>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End Proerty header  -->

<!-- Start Blog  -->
<section id="aa-blog">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="aa-blog-area">
                    <div class="row">
                        <div class="col-md-8">
                            <div class="aa-blog-content">
                                <div class="row">
                                    <div class="col-md-12">
                                        <article class="aa-blog-single aa-blog-details">
                                            <% for (Blog_detail bd : list2) { %>
                                            <figure class="aa-blog-img">
                                                <a href="#"><img alt="img" src="<%=bd.getImg_1()%>"></a>
                                            </figure>
                                            <div class="aa-blog-single-content">
                                                <h2><%=bd.getTitle()%></h2>
                                                <p><strong><%=bd.getSubtitle()%></strong></p>
                                                <p><%=bd.getContent()%>
                                                </p>
                                            </div>
                                        </article>
                                        <%}%>

                                    </div>
                                    <!-- Post tags -->
                                    <div class="col-md-12">
                                        <div class="aa-blog-post-tag">
<%--                                            <%--%>
<%--                                                BlogService bc = new BlogService();--%>
<%--                                                List<BlogCategory> listCate = bc.getBlogCate();--%>
<%--                                            %>--%>
<%--                                            <ul>--%>
<%--                                                <li>Thẻ:</li>--%>
<%--                                                <% for(BlogCategory bl : listCate) {%>--%>
<%--                                                <li><a href="cateBlog.jsp?id_blog=<%=bl.getId_category()%>">Sức hút,</a></li>--%>
<%--                                                <%}%>--%>
<%--                                            </ul>--%>
                                        </div>
                                    </div>
                                    <!-- Social Share -->
                                    <div class="col-md-12">
                                        <div class="aa-properties-social">
                                            <ul>
                                                <li>Chia Sẻ</li>
                                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                                <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Start blog sidebar -->
                        <div class="col-md-4">
                            <aside class="aa-blog-sidebar">
                                <div class="aa-blog-sidebar-single">
                                    <h3>Bài viết mới nhất</h3>
                                    <%
                                        List<Blog> list = bs.getNewBlog();
                                    %>
                                    <div class="aa-blog-recent-post">
                                        <% for (Blog b1 : list) {%>
                                        <div class="media">
                                            <div class="media-left">
                                                <a href="blog-detail.jsp?id_blog=<%=b1.getId_blog()%>">
                                                    <img alt="img" src="<%=b1.getImg()%>" class="media-object">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <h5 class="media-heading"><a href="blog-detail.jsp?id_blog=<%=b1.getId_blog()%>"><%=b1.getTitle()%></a></h5>
                                            </div>
                                        </div>
                                        <%}%>
                                    </div>
                                </div>
<%--                                <div class="aa-blog-sidebar-single">--%>
<%--                                    <h3>Thẻ</h3>--%>
<%--                                    <div class="tag-cloud">--%>
<%--                                        <a href="#">Thông Thường</a>--%>
<%--                                        <a href="#">Áp Mái</a>--%>
<%--                                        <a href="#">Thông Tầng</a>--%>
<%--                                        <a href="#">Commercial</a>--%>
<%--                                        <a href="#">Văn Phòng</a>--%>
<%--                                        <a href="#">Sky Villa</a>--%>
<%--                                        <a href="#">Dịch vụ</a>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
                                <!-- Start single sidebar -->
                                <div class="aa-blog-sidebar-single">
                                    <div class="aa-banner-ads">
                                        <a href="#">
                                            <img src="https://chuyenstandee.com/wp-content/uploads/2019/11/banner-quang-cao-bat-dong-san.jpg"
                                                 alt="banner img">
                                        </a>
                                    </div>
                                </div>
                            </aside>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- / Blog  -->

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