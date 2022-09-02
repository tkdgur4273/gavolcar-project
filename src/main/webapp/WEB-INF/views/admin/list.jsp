<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- C태그 쓰기 위해 넣은 taglib므로 반드시 확인 --> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 목록</title>
</head>
<body>
<h2>회원 목록</h2>
	<table width="900" border="1">
		<tr>
			<td>아이디</td>
			<td>비밀번호</td>
			<td>이름</td>
			<td>전화번호</td>
			<td>나이</td>
			<td>이메일</td>
		</tr>
	
        <!--forEach문을 이용해 데이터를 꺼낼 수 있다.-->
		<c:forEach var="member" items="${MemberList}">
			<tr>
				<td>${member.user_id}</td>
				<td>${member.user_pw}</td>
				<td><a href="info?user_id=${member.user_id}">${member.user_name}</td>
				<td>${member.user_phone_number}</td>
				<td>${member.user_age}</td>
				<td>${member.user_email}</td>				
			</tr>
		</c:forEach>
		
	</table>
	<h3>[<a href="<c:url value="/admin/adminHome" />">관리자 홈</a>]</h3>
</body>
</html>