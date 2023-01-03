<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Wealthuring | Liên Hệ</title>

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

  <!-- Main style sheet -->
  <link href="css/style.css" rel="stylesheet">


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
          <h2>Liên Hệ</h2>
          <ol class="breadcrumb">
            <li><a href="#">Trang chủ</a></li>
            <li class="active">Liên hệ</li>
          </ol>
        </div>
      </div>
    </div>

  </div>
</section>
<!-- End Proerty header  -->

<section id="aa-contact">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="aa-contact-area">
          <div class="aa-contact-top">
            <div class="aa-contact-top-left">
              <iframe width="100%" height="450" frameborder="0" allowfullscreen="" style="border:0" src="https://www.google.com/maps/d/u/0/embed?mid=171zhXzpq0HEsDVlHRlO4kmyGLrY&msa=0&ll=10.871840013815003%2C106.78921200000002&spn=0.005742%2C0.008401&output=embed&z=17"></iframe>
            </div>
            <div class="aa-contact-top-right">
              <h2>Xem dự án</h2>
              <p>Nếu bạn muốn xem trực tiếp các dự án hãy liên hệ với chúng tôi</p>
              <ul class="contact-info-list">
                <li> <i class="fa fa-phone"></i> 0123456789</li>
                <li> <i class="fa fa-envelope-o"></i> nlu@gmail.com</li>
                <li> <i class="fa fa-map-marker"></i> Khu phố 6, phường Linh Trung, thành phố Thủ Đức</li>
              </ul>
            </div>
          </div>
          <div class="aa-contact-bottom">
            <div class="aa-title">
              <h2>LIÊN HỆ XEM DỰ ÁN</h2>
              <span></span>
              <p>Ngày hẹn để xem dự án phải sau ngày hiện tại ít nhất 3 ngày.</p>
            </div>
            <div class="aa-contact-form">
              <form class="contactform">
                <p class="comment-form-author">
                  <label for="name">Tên: <span class="required">*</span></label>
                  <input type="text" name="author" value="" size="30" required="required">
                </p>
                <p class="comment-form-url">
                  <label for="sex">Giới tính:</label>
                <div class="container">
                  <div class="squaredcheck">
                    <input type="checkbox" value="None" id="squaredcheck" class="checkbox1" name="check" />
                    <label for="squaredcheck"><span>Nam</span></label>
                  </div>
                  <div class="squaredcheck">
                    <input type="checkbox" value="None" id="squaredcheck2" class="checkbox2" name="check" />
                    <label for="squaredcheck2"><span>Nữ</span></label>
                  </div>
                </div>
                <input id="contact-input-diff" type="text" name="subject" style="display: none;">
                </p>
                <p class="comment-form-author">
                  <label for="birthdaytime">Ngày hẹn xem dự án:</label>
                  <input type="datetime-local" id="birthdaytime" name="birthdaytime">
                </p>
                <p class="form-submit">
                  <input type="submit" name="submit" class="aa-browse-btn" value="GỬI">
                </p>
              </form>
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
<!-- My Script -->
<script src="js/script.js"></script>
<script>
  // document.getElementById("index").classList.add('active');
  document.getElementById("contact").classList.add('active');
  // document.getElementById("properties").classList.add('active');
  // document.getElementById("blog").classList.add('active');
  // document.getElementById("gellery").classList.add('active');
</script>
</body>

</html>