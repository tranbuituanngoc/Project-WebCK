<%--
  Created by IntelliJ IDEA.
  User: Alshie
  Date: 12/4/2022
  Time: 5:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%=request.getAttribute("msg")+""%>
<script>
    setTimeout(function (){
        window.location.href="index.jsp";
    },5000)
</script>
</body>
</html>
