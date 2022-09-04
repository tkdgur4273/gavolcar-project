<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title>마이 페이지</title>
	<style type="text/css">
	#main{
	text-align: center;
	width: 700px;
	margin: 0 auto;
	}
	</style>
</head>

<body>
<div id="main">
<h1>마이페이지</h1>
<%
String user_id = (String) session.getAttribute("user_id");
%>

<p>안녕하세요 <sec:authentication property="principal.username"/>님!</p>
<h3 style=" text-align: left; margin: 0 30px;">내 정보</h3>
<table style="margin: 20px auto; font-size: 20px; width: 700px; text-align: left; color: rgb(70, 70, 70);"  cellpadding="10px" cellspacing="0">
	<tr height="50px">
		<td width="150px" style="border-bottom: 1px solid gray;border-top: 1px solid gray; background-color: rgb(235, 235, 235)">유저 아이디
		</td>
		<td style="border-bottom: 1px solid gray;border-top: 1px solid gray;">${info.user_id}
		</td>
	</tr>
	<tr height="50px">
		<td style="border-bottom: 1px solid gray; background-color: rgb(235, 235, 235)">이름
		</td>
		<td style="border-bottom: 1px solid gray;">${info.user_name}
		</td>
	</tr>
	<tr height="50px">
		<td style="border-bottom: 1px solid gray; background-color: rgb(235, 235, 235)">전화번호
		</td>
		<td style="border-bottom: 1px solid gray;">${info.user_phone_number}
		</td>
	</tr>
	<tr height="50px">
		<td style="border-bottom: 1px solid gray; background-color: rgb(235, 235, 235)">나이
		</td>
		<td style="border-bottom: 1px solid gray;">${info.user_age}
		</td>
	</tr>
	<tr height="50px">
		<td style="border-bottom: 1px solid gray; background-color: rgb(235, 235, 235)">이메일
		</td>
		<td style="border-bottom: 1px solid gray;">${info.user_email}
		</td>
	</tr>
	<tr height="50px">
		<td style="border-bottom: 1px solid gray; background-color: rgb(235, 235, 235)">쿠폰
		</td>
		<td style="border-bottom: 1px solid gray;"><input type="button" value="보유쿠폰 확인" class="btn" onclick="location.href='/user/couponInfo'" style="font-size: 20px;">
		</td>
	</tr>
</table>




<input type="button" value="내 정보 수정" class="btn" onclick="location.href='/user/info'">
</div>
</body>
</html>
