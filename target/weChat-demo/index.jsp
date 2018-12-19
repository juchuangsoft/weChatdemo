<%--
  Created by IntelliJ IDEA.
  User: mask
  Date: 2018/12/19
  Time: 23:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="basePath" value="${pageContext.request.contextPath }"></c:set>
<%@ page import="AccessToken.AccessTokenInfo"%>
<html>
<head>
    <title>WeChat</title>
</head>
<body>
<h3>微信公众号测试!</h3>

<h3>微信公众号测试!</h3>
<form action="${pageContext.request.contextPath}/weChatServlet" method="get">
    <button onclick="submit">测试微信公众号</button>
</form>

<hr/>

<%--获取access_token--%>
<form action="${pageContext.request.contextPath}/accessTokenServlet" method="get">
    <button onclick="submit">获取access_token</button>
</form>
<c:if test="AccessTokenInfo.accessToken != null">
    access_token为：<%=AccessTokenInfo.accessToken.getTokenName()%>
</c:if>
</body>
</html>
