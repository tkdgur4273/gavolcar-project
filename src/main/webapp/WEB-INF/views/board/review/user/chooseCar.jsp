<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>후기 고객 게시글 작성</title>
<script>
	function calc() {
		document.getElementById('result').value = document
				.getElementById('b_contents').value.length;
	}
</script>

</head>
<body>
	<table width="700" cellpadding="0" cellspacing="0" border="1">
		<tr>
				<td>차량 번호</td>
				
				<td>차종</td>
				<td></td>

			</tr>
	<c:forEach var="car" items="${cars}">
			<tr>
				<td>${car.car_no}</td>
				
				<td>${car.car_type}</td>
				<td><a href="/review/userWriteView?car_type=${car.car_type}">리뷰를 쓴다</a></td>

			</tr>
		</c:forEach>
		</table>
</body>
</html>