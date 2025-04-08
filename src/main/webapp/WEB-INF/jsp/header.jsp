<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/header.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css"
    integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">
</head>
<body>

<header>
    <div class="outer">
        <div class="items">
            <a href=""><img class="gov-gr-logo" src="${pageContext.request.contextPath}/img/gov_header_logo.svg"
            alt="" width="40" height="auto"></a>
            <span class="title">Coding Factory - Education Reinvented </span>
        </div>
        <div class="login-name">
<%--            <span>${sessionScope.firstname}</span>--%>
<%--            <span>${sessionScope.lastname</span>--%>
            <span>${sessionScope.username}</span>
            <c:if test="${sessionScope.username != null}">
                <a class="log-out" href="${pageContext.request.contextPath}/logout">Έξοδος</a>
            </c:if>
        </div>
    </div>
    <div class="line">

    </div>
</header>
</body>
</html>