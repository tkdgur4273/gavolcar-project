<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- C태그 쓰기 위해 넣은 taglib므로 반드시 확인 --> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약조회</title>
</head>
<body>
	<tr>
		<h2>예약확인</h2>
			<td>예약번호</td><br/>
			<td id="rez_no">${cno.rez_no }</td> <br/>
			<td>예약자 이름</td><br/>
				<td id="name">${cno.user_name }</td> <br/>
		<h3>예약 정보</h3>		
			<td>예약시작일</td><br/>
				<td id="rent_start_date">${cno.rent_start_date }</td> <br/>
			<td>예약 종료일</td><br/>
				<td id="rent_end_date">${cno.rent_end_date }</td><br/>
		<h3>차량 정보</h3>
			<td>차량번호</td><br/>
				<td id="car_no">${cno.car_no }</td> <br/>
			<td>차량종류</td><br/>
				<td id="car_type">${cno.car_type }</td> <br/>
			<td>탑승가능인원</td><br/>
				<td id="car_volume">${cno.car_volume }</td> <br/>
			<td>하이패스</td><br/>
				<td id="hipass">${cno.hipass }</td><br/>
			<td>카시트</td><br/>
				<td id="baby_car_seat">${cno.baby_car_seat }</td><br/>
	</tr>
</body>
</html>