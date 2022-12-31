
<%@ page import="java.util.List" %>
<%@ page import="service.BlogService" %>
<%@ page import="model.Blog" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link rel="stylesheet" href="css/jquery.fancybox.css" type="text/css" media="screen" />
    <!-- Theme color -->
    <link id="switcher" href="css/theme-color/default-theme.css" rel="stylesheet">

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

  <!-- Start Proerty header  -->
  <section id="aa-property-header">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="aa-property-header-inner">
            <h2>Tin Tức</h2>
            <ol class="breadcrumb">
            <li><a href="#">Trang chủ</a></li>
            <li class="active">Tin Tức</li>
          </ol>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- End Proerty header  -->

  <%
    BlogService bs = new BlogService();
    List<Blog> list1 = bs.getListBlog();
    int start = 0, end = 6;
    if (list1.size() < 30) {
      end = 6;
    }
    if (request.getParameter("start") != null) {
      start = Integer.parseInt(request.getParameter("start"));
    }
    if (request.getParameter("end") != null) {
      end = Integer.parseInt(request.getParameter("end"));
    }
    List<Blog> list2 = bs.getListByPage(list1, start, end);
  %>

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
                    <!-- 1 -->
                      <% for (Blog b : list2) { %>
                      <div class="col-md-6 col-sm-6">
                        <article class="aa-blog-single">
                          <figure class="aa-blog-imgs">
                            <a href="blog-detail.jsp?id_blog=<%=b.getId()%>"><img alt="img" src="<%= b.getImg() %>"></a>
                          </figure>
                          <div class="aa-blog-single-content">
                            <h4><a href="blog-detail.jsp?id_blog=<%=b.getId()%>"><%= b.getTitle() %></a></h4>
                            <p><%= b.getSubTitle()%></p>
                          </div>
                        </article>
                      </div>
                      <%}%>
                  </div>
                  <div class="row">
                    <div class="col-md-12">
                      <div class="aa-properties-content-bottom">
                        <nav>
                          <ul class="pagination">
                            <li><a aria-label="Previous" href="blog_archive.jsp?start=<%=start-1%>"><span aria-hidden="true">«</span></a></li>
                            <%
                              int a, b;
                              int limit = list1.size() / 6;
                              if (limit * 6 < list1.size()) {
                                limit += 1;
                              }
                              for (int i = 1; i <= limit; i++) {
                                a = (i - 1) * 6;
                                b = i * 6;
                                if (b > list1.size()) {
                                    b = list1.size();
                                }
                            %>
                            <li class="page-item current-page"><a class="page-link" href="blog_archive.jsp?start=<%=a%>&end=<%=b%>"><%=i%></a></li>
                            <%}%>
                            <li><a aria-label="Next" href="blog_archive.jsp?start=<%=start+1%>"><span aria-hidden="true">»</span></a></li>
                          </ul>
                        </nav>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- Start blog sidebar -->
              <div class="col-md-4">
                <aside class="aa-blog-sidebar">
                  <!-- Start single sidebar -->
                  <div class="aa-blog-sidebar-single">
                    <h3>Danh Mục Tin Tức</h3>
                    <ul class="aa-blog-catg">
                      <li><a>Điểm tin Bất động sản</a></li>
                      <li><a>Chính sách - Quy hoạch</a></li>
                      <li><a>Báo cáo thị trường</a></li>
                      <li><a>Kiến trúc - Phong Thủy</a></li>
                      <li><a>Tin tức khu vực</a></li>
                    </ul>
                  </div>
                  <!-- Start single sidebar -->
                  <div class="aa-blog-sidebar-single">
                    <h3>Thẻ</h3>
                    <div class="tag-cloud">
                      <a href="#">Bất động sản</a>
                      <a href="#">Đầu tư</a>
                      <a href="#">Địa ốc</a>
                      <a href="#">Căn hộ cao cấp</a>
                      <a href="#">Căn hộ thông thường</a>
                    </div>
                  </div>
                  <!-- Start single sidebar -->
                  <div class="aa-blog-sidebar-single">
                    <h3>Bài viết mới nhất</h3>
                    <div class="aa-blog-recent-post">
                      <div class="media">
                        <div class="media-left">
                          <a href="#">
                            <img alt="img" src="img/blog1 (1).jpg" class="media-object">
                          </a>
                        </div>
                        <div class="media-body">
                          <h5 class="media-heading"><a href="blog-detail-1.html">Sức hút của thị trường BĐS Duy Tiên và cơ hội cho giới địa ốc</a></h5>
                          <!-- <p>Hội tụ những tiềm năng về vị trí, hạ tầng, quy hoạch; Duy Tiên đang trở thành “ngôi sao sáng” trên bản đồ thị trường bất động sản, thu hút một lượng lớn các nhà đầu tư.</p>                 -->
                          <!-- <span>15 April, 16</span> -->
                        </div>
                      </div>
                      <div class="media">
                        <div class="media-left">
                          <a href="#">
                            <img alt="img" src="img/blog1 (2).png" class="media-object">
                          </a>
                        </div>
                        <div class="media-body">
                          <h5 class="media-heading"><a href="blog-detail-2.html">Tận hưởng “bữa tiệc thị giác” với tầm view triệu đô ngay tại trung tâm Hà Nội</a></h5>
                        </div>
                      </div>
                    </div>
                  </div>
                  <!-- Start single sidebar -->
                  <div class="aa-blog-sidebar-single">
                    <div class="aa-banner-ads">
                      <a href="#">
                        <img src="https://chuyenstandee.com/wp-content/uploads/2019/11/banner-quang-cao-bat-dong-san.jpg" alt="banner img">
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