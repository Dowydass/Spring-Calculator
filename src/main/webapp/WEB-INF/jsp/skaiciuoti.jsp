<%--
  Created by IntelliJ IDEA.
  User: Dovydas
  Date: 4/1/2021
  Time: 1:19 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Atsakymas</title>
    <jsp:include page="header.jsp"/>
    <jsp:include page="menu.jsp"/>
</head>
<body class="container">
<h4> ${sk1} ${zenklas} ${sk2} = ${rezultatas}</h4>
</body>
<jsp:include page="footer.jsp"/>
</html>
