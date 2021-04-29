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
</head>
<body class="container">
    <div>
        <caption>Skaiciaus informacija</caption>
            <table>
                <Tr>
                    <td><b>Id:</b></td>
                    <td>${skaicius.id}</td>
                </Tr>
                <tr>
                    <td><b>Pirmas skaicius:</b></td>
                    <td>${skaicius.id}</td>
                </tr>

            </table>
    </div>
</body>
</html>
