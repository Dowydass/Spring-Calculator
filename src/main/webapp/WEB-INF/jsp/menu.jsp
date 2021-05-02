<%--
  Created by IntelliJ IDEA.
  User: Dovydas
  Date: 4/30/2021
  Time: 3:36 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--Puslapio turinio keliui nustatyti-->


<jsp:include page="header.jsp"/>

<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header ">
            <a class="navbar-brand" href="http://localhost:8080/">Skaiciuotuvas</a>
        </div>
    <ul class="nav navbar-nav navbar-left">
        <li class="active"><a href="/skaiciai">Atliktos operacijos</a></li>
    </ul>
    <ul class="nav navbar-nav"></ul>
        <c:if test="${pageContext.request.userPrincipal.name !=null}" > <!--Vartotojo vardo gavimas is uzklausos-->
            <form id="logoutForm" method="POST" action="${contextPath}/logout">
                <!--A cross-site Request Forgery (CSRF) -arba vieno paspaudimo ataka  (one - click - attack),
                yra paplitusi saugumo problema, kai is aukos narsykles jam nepastebint yra
                siunciamos uzklausos i svetaine prie kurios jis prisijunges.
                Praktikoje daznai isnaudojamas slaptazodzio keitimo funkcionalumas
                Pagalvokite jog daznai visu naudotoju, nepriklausomai nuo jo roles,
                slaptazodzio keitimo parametrai yra tokie patys.
                Del sios priezasties piktavaliui pakankamai nesudetinga padirbti uzklausa,
                o jei naujo slaptazodzio nustatymui nereikia ivesti senojo,
                piktavalis nesunkiai gali perimti aukos paskyra.
                WEB aplikaciju naudotojui turetu isduoti papildoma parametra, kuris nebutu nuspejamas piktavaliui.
                Paprastai naudotojui yra isduodamas unikalus CSRF zetonas (token)
                kuris turi buti validuojamas back-end'e su kiekviena duomenis keicia uzklausa.
                -->
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
            </form>
                <a onclick="document.forms['logoutForm'].submit()">Logout, ${pageContext.request.userPrincipal.name}</a>
        </c:if>
    </div>
</nav>

