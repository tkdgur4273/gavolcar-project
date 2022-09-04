<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>후기 고객 게시글 작성</title>
<style type="text/css">
#main{
	padding: 60px;
}
#tableTitle{
	width: 1100px;
	height: 50px;
	line-height: 50px;
	font-size: 50px;
	font-weight: 900;
	text-align: left;
	margin: 30px auto;
	border-radius: 25px;
}
#table{
	width: 1200px;
	background-color: rgba(255, 255, 255);
	margin: 0 auto;
}
</style>
<script>
	function calc() {
		document.getElementById('result').value = document
				.getElementById('b_contents').value.length;
	}
</script>

</head>
<body>
<div id="tableTitle">후기 작성 차량 선택</div>
	<table id="table" width="700" cellpadding="0" cellspacing="0">
		<tr style=" height: 50px;font-size: 25px;">
				<td style=" border-bottom: 4px solid black; border-top:  4px solid black;">차량 번호</td>
				
				<td style=" border-bottom: 4px solid black; border-top:  4px solid black;">차종</td>
				<td style=" border-bottom: 4px solid black; border-top:  4px solid black;"></td>

			</tr>
	<c:forEach var="car" items="${cars}">
			<tr style="height: 50px; font-size: 20px;">
				<td style="border-bottom:2px solid gray;">${car.car_no}</td>
				
				<td style="border-bottom:2px solid gray;">${car.car_type}</td>
				<td style="border-bottom:2px solid gray;"><a href="/review/userWriteView?car_type=${car.car_type}">리뷰를 쓴다</a></td>

			</tr>
		</c:forEach>
		</table>
</body>
</html>