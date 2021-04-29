<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="form." uri="http://www.springframework.org/tags/form" %>

<%--
  Created by IntelliJ IDEA.
  User: Dovydas
  Date: 3/30/2021
  Time: 7:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Skaiciuotuvas</title>
    <jsp:include page="header.jsp"/>
    <style>
        .error {
            color: red
        }
    </style>

    <link rel="stylesheet" type="text/css" href="webjars/bootstrap/4.6.0/css/bootstrap.min.css" />
    <spring:url value="/css/main.css" var="springCss" />
    <link href="${springCss}" rel="stylesheet" />
    <c:url value="/css/main.css" var="jstlCss" />
    <link href="${jstlCss}" rel="stylesheet" />

</head>
<body>


<nav class="navbar navbar-inverse">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand">Spring Boot Home Page</a>
        </div>

    </div>
</nav>
<form method="post" action="skaiciuoti">
    <form  method="post" action="skaiciuoti">


        <p>
                                <form:form method="post" action="skaiciuoti" modelAttribute="number">
                Pirmas skaicius:<form:input type="number" path="sk1"/>
                                <form.:errors path="sk1" cssClass="error"/><br><br>
                Antras skaicius:<form:input type="number" path="sk2"/>
                                <form.:errors path="sk2" cssClass="error"/><br><br>



            Operacinis zenklas:
            <select name="zenklas">
                <option selected="selected" value="+">Sudetis</option>
                <option value="-">Atimtis</option>
                <option value="*">Daugyba</option>
                <option value="/">Dalyba</option>

            </select>
            </p>
                <input  id = "color" type="submit" value="skaiciuoti">

        </form>

    </form:form>
    <script type="text/javascript" src="webjars/bootstrap/4.6.0/js/bootstrap.min.js"></script>

</body>
</html>
