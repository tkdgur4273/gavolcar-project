<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title>마이 페이지</title>
</head>

<body>

<h1>회원 마이페이지 입니다.</h1>
<%
String user_id = (String) session.getAttribute("user_id");
%>

<p><sec:authentication property="principal.username"/>님 환영합니다.</p>

<h3>[<a href="<c:url value="/" />">메인페이지</a>]</h3>

<input type="button" value="회원쿠폰정보" class="btn" onclick="location.href='/user/couponInfo'">
<input type="button" value="회원상세정보" class="btn" onclick="location.href='/user/info'">

</body>
</html>
