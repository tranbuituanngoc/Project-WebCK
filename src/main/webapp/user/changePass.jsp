<%@ page import="model.User" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Wealthuring | Đổi Mật Khẩu</title>

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
    <link rel="stylesheet" href="../css/jquery.fancybox.css" type="text/css" media="screen"/>
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
<%
    String url = "";
    User user = (User) session.getAttribute("user");
    if (user == null) {
        response.sendRedirect(url + "/401.jsp");
    }
%>
<section id="aa-signin">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="aa-signin-area">
                    <div class="row">
                        <div class="aa-signin-form">
                            <div class="aa-signin-form-title">
                                <a class="aa-property-home, banner" href="../index.jsp"><img src="../img/bannerWeb.png"
                                                                                             alt="banner"
                                                                                             style="max-width: 100%; height: auto; padding-bottom: 10px;border-bottom: 1px solid #404040 ;"></a>
                                <div class="row">
                                    <div class="title">
                                        <span><h2>Đổi mật khẩu</h2></span>
                                        <!-- <span><h5>để có những trải nghiệm tốt nhất</h5></span> -->
                                        <%
                                            String error = request.getAttribute("error") + "";
                                            if (error.equals("null")) error = "";
                                        %>
                                        <div style="color: #e31414;font-weight: bold;font-size: 12pt;" id="error">
                                            <%=error%>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <form class="changePassForm" action="../nguoi-dung" method="post" id="changePassForm">
                                <input type="hidden" name="action" value="changePass">
                                <div class="aa-single-field">
                                    <label for="oldPassword">Mật khẩu cũ: <span class="required">*</span></label>
                                    <input type="password" name="oldPassword" id="oldPassword">
                                </div>
                                <div class="aa-single-field">
                                    <label for="newPassword">Mật khẩu mới: <span class="required">*</span></label>
                                    <input type="password" name="newPassword" id="newPassword">
                                </div>
                                <div class="aa-single-field">
                                    <label for="comNewPass">Nhập lại mật khẩu mới: <span
                                            class="required">*</span></label>
                                    <input type="password" name="comNewPass" id="comNewPass">
                                </div>
                                <div class="aa-single-field">
                                    <label>
                                        <input type="checkbox"> Nhớ mật khẩu
                                    </label>
                                </div>
                                <div class="aa-single-submit">
                                    <input type="submit" value="Đổi Mật Khẩu" class="aa-browse-btn" name="submit"
                                           onclick="signIn()">
                                    <p>Bạn chưa có tài khoản? <a href="signup.html" style="color: #59abe3 ;">Tạo tài
                                        khoản tại đây!</a></p>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

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
<!-- My script -->
<script src="../js/script.js"></script>
</body>

</html>