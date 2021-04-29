<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="form." uri="http://www.springframework.org/tags/form" %>

<%--
  Created by IntelliJ IDEA.
  User: Dovydas
  Date: 4/5/2021
  Time: 9:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Atnaujinimas</title>
    <jsp:include page="header.jsp"/>
</head>
<body>
<<form:form name="skaicius" action="/atnaujintiSkaiciu" method="post">

    <input type="hidden" name="id" value="${skaicius.id}">
    Pirmas skaicius: <br>
    <input type="number" name="sk1" value="${skaicius.sk1}">
    Pirmas skaicius: <br>

</form:form>
</body>
</html>
