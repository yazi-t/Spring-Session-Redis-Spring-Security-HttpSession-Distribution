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
<div class="loginmodal-container">
    <h1>Login to Your Account</h1><br>

    <p>Demo credentials: username:user, password: 1234</p>
    <c:if test="${not empty SPRING_SECURITY_LAST_EXCEPTION}">
        <div class="jumbotron"><p class="text-danger"><c:out
                value="${SPRING_SECURITY_LAST_EXCEPTION.message.toLowerCase()}"/></p></div>
    </c:if>
    <form action="<c:url value="/login"/>" method="post">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <input type="text" name="username" placeholder="Username">
        <input type="password" name="password" placeholder="Password">
        <input type="submit" name="login" class="login loginmodal-submit" value="Login">
    </form>
</div>
</body>
</html>
