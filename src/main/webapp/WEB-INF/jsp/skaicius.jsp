<%--
  Created by IntelliJ IDEA.
  User: Dovydas
  Date: 4/29/2021
  Time: 2:50 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Skaicius</title>
    <jsp:include page="header.jsp"/>
    <jsp:include page="footer.jsp"/>
</head>
<body class="container">
    <div class="table-responsive">
        <caption>Skaiciaus informacija</caption>
            <table class="table table-striped">
                <Tr>
                    <td><b>Id:</b></td>
                    <td>${skaicius.id}</td>
                </Tr>
                <tr>
                    <td><b>Pirmas skaicius:</b></td>
                    <td>${skaicius.sk1}</td>
                </tr>
                <tr>
                    <td><b>Zenklas:</b></td>
                    <td>${skaicius.zenklas}</td>
                </tr>
                <tr>
                    <td><b>Antras skaicius:</b></td>
                    <td>${skaicius.sk2}</td>
                </tr>
                <tr>
                    <td><b>Rezultatas:</b></td>
                    <td>${skaicius.rezult}</td>
                </tr>
            </table>
    </div>
<a type="button" href="/skaiciai" class="button">Atgal</a>
</body>
<jsp:include page="footer.jsp"/>
</html>
