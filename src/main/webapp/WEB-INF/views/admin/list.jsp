<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!-- C태그 쓰기 위해 넣은 taglib므로 반드시 확인 --> 

    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>admin Main</title>



<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

<title>회원 목록</title>
<style type="text/css">
#warp {
	text-align: center;
	font-size: 40px;
	background: url(../기어.png);
	background-size: cover;
}

#footbar {
	text-align: center;
}

#foottxt {
	color: gray;
	line-height: 30px;
	font-size: 15px;
}
#pagetitle{
	background: url(../기어.png);
	background-size: cover;
}

</style>
</head>
<body>

	<div class="container col-12" id="headbar" style="background: gray;">
		<div class="row">
			<div class="col-3">
				<a id="headlogo" href="/adminmain"><img src="../투명로고.png"
					height="100em"></a>
			</div>

			<table class="col-4" id="headerpotal">

			</table>

			<div class="col-2"></div>
			<div id="headlogin" class="col-2"></div>
		</div>
	</div>



	<div class="container col-12">
		<div class="row">
			<div id="warp" class="col-2" style="margin: 1em 0;">
				<table style="width: 100%; background-color: white; opacity: 0.7;" border="5px solid black;">
					<tr style="border: 1px solid black; height: 120px;">
						<td><a href="../admin/list" style="text-decoration: none; color: black; wid">회원정보 관리</a></td>
					</tr>
					<tr style="border: 1px solid black; height: 120px;">
						<td><a href="../admin/carlist" style="text-decoration: none; color: black;">차량 관리</a></td>
					</tr>
					<tr style="border: 1px solid black; height: 120px;">
						<td><a href="../admin/rentscheck" style="text-decoration: none; color: black;">예약 관리</a></td>
					</tr>
					<tr style="border: 1px solid black; height: 120px;">
						<td><a href="../admin/transEdit" style="text-decoration: none; color: black;">통계 관리</a></td>
					</tr>
					<tr style="border: 1px solid black; height: 120px;">
						<td><a href="../admin/arealist" style="text-decoration: none; color: black;">지역정보 관리</a></td>
					</tr>
					<tr style="border: 1px solid black; height: 120px;">
						<td><a href="/adminCustommerService" style="text-decoration: none; color: black;">고객지원 관리</a></td>
					</tr>
					<tr style="border: 1px solid black; height: 120px;">
						<td><a href="/review/adminList" style="text-decoration: none; color: black;">후기 관리</a></td>
					</tr>
				</table>
			</div>
			<div class="col-10" style="border-left: 5px solid gray;">
<div id="pagetitle" style="text-align: center; height: 120px; line-height: 120px; font-size: 50px; font-weight: 700;">회원정보 관리</div>
			
<h2 style="margin: 60px auto;width: 1200px;">회원 목록</h2>
	<table id="table" width="1400px;" style=" margin: 30px auto;text-align: center; border-spacing: 0px;">
		<tr style=" height: 50px;font-size: 25px;">
			<td style=" border-bottom: 4px solid black; border-top:  4px solid black;">아이디</td>
			<td style=" border-bottom: 4px solid black; border-top:  4px solid black;">비밀번호</td>
			<td style=" border-bottom: 4px solid black; border-top:  4px solid black;">이름</td>
			<td style=" border-bottom: 4px solid black; border-top:  4px solid black;">전화번호</td>
			<td style=" border-bottom: 4px solid black; border-top:  4px solid black;">나이</td>
			<td style=" border-bottom: 4px solid black; border-top:  4px solid black;">이메일</td>
		</tr>
	
        <!--forEach문을 이용해 데이터를 꺼낼 수 있다.-->
		<c:forEach var="member" items="${MemberList}">
			<tr>
				<td style="border-bottom:2px solid gray; height: 50px;">${member.user_id}</td>
				<td style="border-bottom:2px solid gray; height: 50px;">${member.user_pw}</td>
				<td style="border-bottom:2px solid gray; height: 50px;"><a href="info?user_id=${member.user_id}">${member.user_name}</td>
				<td style="border-bottom:2px solid gray; height: 50px;">${member.user_phone_number}</td>
				<td style="border-bottom:2px solid gray; height: 50px;">${member.user_age}</td>
				<td style="border-bottom:2px solid gray; height: 50px;">${member.user_email}</td>				
			</tr>
		</c:forEach>
		
	</table>
	
	
	
		</div>
		</div>
	</div>
	<footer id="footbar" style="background-color: black;">

		<div class="container col-11">
			<div class="row">
				<div class="col-3">
					<img src="../회색로고.png" height="100em" width="100em">
				</div>
				<div id="foottxt" class="col-9">
					<div>프로젝트 가볼카 | 대표이사: 정다은 | 제주도 가볼길 001호</div>
					<div>사업자등록번호 : 010-11-11122 | 통신판매신고번호: 제2022-제주서귀포-0001호 |
						TEL: 1111-1111 | Fax:000-000-0000 | Project@Gavolcar.co.kr</div>
					<div>COPYRIGHT©GAVOLCAR.ALL.RIGHTS.RESERVED</div>

				</div>
			</div>
		</div>

	</footer>
	
</body>
</html>