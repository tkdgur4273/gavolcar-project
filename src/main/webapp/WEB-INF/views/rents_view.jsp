<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- C태그 쓰기 위해 넣은 taglib므로 반드시 확인 --> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약조회&예약하기 선택화면(임시)</title>
</head>
<body>
	<h1>예약탭</h1>
	<table>
			<tr>
				<td>
					<a href="../rez/reserve">예약하기</a>
				</td>
			</tr>
			<tr>
				<td>
					<a href="/user/rentscheck?user_id=<sec:authentication property='principal.username'/>" >예약조회</a>
				</td>
			</tr>
	</table>
</body>
</html>