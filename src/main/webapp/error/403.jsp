<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Home Property | 404</title>

    <!-- Favicon -->
    <link rel="shortcut icon" href="../img/favicon.ico" type="image/x-icon">

    <!-- Font awesome -->
    <link href="../css/font-awesome.css" rel="stylesheet">
    <!-- Bootstrap -->
    <link href="../css/bootstrap.css" rel="stylesheet">
    <!-- slick slider -->
    <link rel="stylesheet" type="text/css" href="../css/slick.css">
    <!-- price picker slider -->
    <link rel="stylesheet" type="text/css" href="../css/nouislider.css">
    <!-- Fancybox slider -->
    <link rel="stylesheet" href="../css/jquery.fancybox.css" type="text/css" media="screen" />
    <!-- Theme color -->
    <link id="switcher" href="../css/theme-color/default-theme.css" rel="stylesheet">

    <!-- Main style sheet -->
    <link href="../css/style.css" rel="stylesheet">


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
    <jsp:include page="../header.jsp" />
    <%--<!-- End header and menu section -->--%>

    <!-- Start Proerty header  -->
    <section id="errorPage">
    </section>
    <!-- End Proerty header  -->
    <section id="aa-error">
        <div class="eImage">
            <img src="../img/error/e403.png" alt="error403Image">
        </div>
    </section>


    <!-- Footer -->
    <section id="aa-footer">
        <footer class="footer-distributed">
            <div class="footer-left">
                <h3>WEALTHU<span>RING</span></h3>
                <p class="footer-links">
                    <a href="#" class="link-1">TRANG CHỦ</a>
                    <a href="#">HỖ TRỢ</a>
                    <a href="#">GIẤY PHÉP</a>
                    <a href="#">FAQ</a>
                    <a href="#">QUYỀN RIÊNG TƯ & ĐIỀU KHOẢN</a>
                </p>
                <p class="footer-company-name">Wealthuring © 2022</p>
            </div>
            <div class="footer-center">
                <div>
                    <i class="fa fa-map-marker"></i>
                    <p><span>KHU PHỐ 6</span> PHƯỜNG LINH TRUNG, TP.THỦ ĐỨC</p>
                </div>
                <div>
                    <i class="fa fa-phone"></i>
                    <p>+0123456789</p>
                </div>
                <div>
                    <i class="fa fa-envelope"></i>
                    <p><a href="mailto:NLUt@GMAIL.COM">NLU@GMAIL.COM</a></p>
                </div>

            </div>

            <div class="footer-right">
                <p class="footer-company-about">
                    <span>VỀ CÔNG TY</span> Cảm ơn mọi đóng góp của bạn là sự phát triển của chúng tôi. Chúng tôi mong muốn sẽ là một trong những lựa chọn của bạn.
                </p>
                <div class="footer-icons">
                    <a href="#"><i class="fa fa-facebook"></i></a>
                    <a href="#"><i class="fa fa-twitter"></i></a>
                    <a href="#"><i class="fa fa-linkedin"></i></a>
                    <a href="#"><i class="fa fa-github"></i></a>
                </div>
            </div>
        </footer>
    </section>
    <!-- / Footer -->

    <!-- jQuery library -->
    <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> -->
    <script src="../js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="../js/bootstrap.js"></script>
    <!-- slick slider -->
    <script type="text/javascript" src="../js/slick.js"></script>
    <!-- Price picker slider -->
    <script type="text/javascript" src="../js/nouislider.js"></script>
    <!-- mixit slider -->
    <script type="text/javascript" src="../js/jquery.mixitup.js"></script>
    <!-- Add fancyBox -->
    <script type="text/javascript" src="../js/jquery.fancybox.pack.js"></script>
    <!-- Custom js -->
    <script src="../js/custom.js"></script>

</body>

</html>