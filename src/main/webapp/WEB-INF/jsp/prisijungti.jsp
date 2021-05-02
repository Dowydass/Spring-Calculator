<%--
  Created by IntelliJ IDEA.
  User: Dovydas
  Date: 4/30/2021
  Time: 4:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!--Puslapio turinio keliui nustatyti-->
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Prisijungimas</title>
    <jsp:include page="header.jsp"/>
</head>

<body>
    <h1 class="text-center">Internetinis skaiciuotuvas</h1>
        <div class="container">
            <form method="POST" action="${contextPath}/prisijungti" class="form-signin">
                <h3 class="form-heading">Prisijungimas</h3>

                <div class="form-group ${error != null ? 'has-error' : ''}">
                <span>${message}</span>
                    <input name="username" type="text" class="form-control" placeholder="Slaptazodis"/>
                    <span>${error}</span>
                </div>



                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

                <button class="btn btn-lg btn-primary btn-block" type="submit">Prisijungti</button>
                <h4 class="text-center"><a href="${contextPath}/registruoti">Sukurti nauja paskyra</a></h4>

            </form>
        </div>
<jsp:include page="footer.jsp"/>
</body>
</html>
