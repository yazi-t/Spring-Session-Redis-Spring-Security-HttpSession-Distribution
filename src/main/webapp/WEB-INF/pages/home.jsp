<%--
  This application demonstrates usage of Spring Session with redis to distribute
  httpSession over multiple nodes. Need up and running redis server for this
  application. Spring security has been used to implement login functionality.

  Author:Yasitha Thilakaratne
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Redis Session Distribution</title>
    <link rel="stylesheet" href="<c:url value="css/bootstrap.min.css"/> "/>
    <link rel="stylesheet" href="<c:url value="css/styles.css"/> "/>
</head>
<body>
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">Spring MVC + Spring security + Redis Session Distribution</a>
        </div>

        <ul class="nav navbar-nav navbar-right">
            <li><a href="#" onclick="document.getElementById('form-logout').submit();">Logout</a></li>
        </ul>
        <form id="form-logout" action="<c:url value="/logout"/>" method="post">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>
    </div>
</nav>
<p class="text-info">spring-session-data-redis provides a way to create distributed session with redis to back a web
    application’s HttpSession.</p>

<p class="text-muted">You need javascript working browser for this demo.</p>
</body>
</html>
