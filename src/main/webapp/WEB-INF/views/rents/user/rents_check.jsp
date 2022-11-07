<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- C태그 쓰기 위해 넣은 taglib므로 반드시 확인 -->


<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<style type="text/css">
@font-face {
	font-family: 'tway_sky';
	src: url("../tway_sky.ttf");
	font-weight: 400;
}

* {
	font-family: 'tway_sky';
}

#headlogin2 {
	text-align: center;
	line-height: 4em;
}

#headerpotal {
	text-align: center;
	font-size: 1.5em;
	line-height: 4em;
}

#headlogin {
	text-align: center;
	line-height: 4em;
}

#upperbar {
	text-align: center;
}

#footbar {
	text-align: center;
}

#foottxt {
	color: gray;
	line-height: 2em;
	font-size: 1em;
}
#main{
	padding: 150px 0;
}
#mainbody {
	background: url(../예약배경.png);
	background-repeat: no-repeat;
	background-size: cover;
	back
}

</style>

<title>event list</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
function deletePopup(){window.open("../deletePopup", "delete", "width=500, height=300, left=100, top=50");}
function modifyPopup(){window.open("../modifyPopup", "modify", "width=600, height=400, left=100, top=50");}


</script>



<!-- 
<script type="text/javascript">
	$(document).ready(function(){
		$("#changer").click(function(){
			alert("수정");
		});
	});
</script>
-->

</head>
<body>

	<div class="container col-12" id="headbar"
		style="border-bottom: 3px solid black;">
		<div class="row">
			<div class="col-3">
				<a id="headlogo" href="/main"><img src="../투명로고.png"
					height="100em"></a>
			</div>

			<table class="col-4" id="headerpotal">
				<tr>
					<td><a href="/user/userHome"
						style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">마이페이지</a></td>
					<td>
						<sec:authorize access="isAnonymous()">
					<a href="/login"
						style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">예약</a>
					
					</sec:authorize>
					<sec:authorize access="isAuthenticated()">
					<a href="/rez/reserve"
						style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">예약</a>
					</sec:authorize>	
						
					</td>
					<td><a href="/custommerService"
						style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">고객지원</a></td>
					<td><a href="/review/userList"
						style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">후기</a></td>
					<td><a href="/user/eventlist"
						style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">이벤트</a></td>
				</tr>
			</table>

			<div class="col-2"></div>
			<sec:authorize access="isAnonymous()">
				<div id="headlogin" class="col-2">
					<a href="/login"
						style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">로그인</a>
					<span
						style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">|</span>
					<a href="/add/addForm"
						style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">회원가입</a>
				</div>
			</sec:authorize>
			<sec:authorize access="isAuthenticated()">
				<div id="headlogin2" class="col-2">
					<span
						style="text-decoration: none; color: black; font-size: 10px; font-weight: 900; width: 100px;"><sec:authentication
							property="principal.username" />님 환영합니다.</span> <a
						href="${pageContext.request.contextPath}/logout"
						style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">로그아웃</a>
				</div>
			</sec:authorize>
		</div>
	</div>
	

<div id="mainbody">
<div style="text-align: center; font-size: 50px; padding: 50px 0;">
당신의 예약 현황
</div>

<div id="main">
	<table width="1200" border="5px solid black" style="margin: 0 auto; text-align: center;background-color: rgba(255, 255, 255, 0.603); opacity: 0.8;">
		<tr style="background-color: rgba(155, 155, 155, 0.603);">
			<td>예약번호</td>
			<td>랜트 시작일</td>
			<td>랜트 종료일</td>
			<td>예약비용</td>
			<td>하이패스 여부</td>
			<td>카시트 여부</td>
			<td>차량번호</td>
			<td>변경</td>
			<td>예약취소</td>
			
		</tr>
	
		<c:forEach var="rents" items="${list}">
		
			<tr>
				<td>${rents.rez_no}</td>
				<td>${rents.rent_start_date}</td>
				<td>${rents.rent_end_date}</td>
				<td>${rents.final_cost}</td>
				<td>${rents.hipass2}</td>
				<td>${rents.baby_car_seat2}</td>
				<td>${rents.car_no}</td>
				<td><input id="changer" type="button" value="변경" onclick="modifyPopup();"></td>
				<td><input id="deleter" type="button" value="취소" onclick="deletePopup();"></td>
				
			</tr>
		</c:forEach>	
	
	</table>


</div>
</div>
<div style="background-color: rgb(189, 189, 189); line-height: 25px;">
<div style="color: rgb(150, 85, 85);">※주의사항</div>
<div style="color: gray;">-환불의 경우 이하의 규정에 따라서 이행됨을 알려 드립니다.</div>
<div style="color: gray;">-제3자에 의한 환불을 이루어 질 수 없습니다.</div>
<div style="color: gray;">-예약기간내에 환불을 신청하지 못하셨을 경우 환불을 받으실 수 없습니다.</div>
<div style="color: gray;">-고객님의 단순변심으로 인해서 환불이 진행되야 할 시에는 환불을 받으실 수 없습니다.</div>
<div style="color: gray;">-천재지변에 의한 환불요구의 경우 환불을 받으실 수 없습니다.</div>
<div style="color: gray;">-구속, 기소의 이유로 예약을 취소해야하는 경우 환불을 받으 실 수 없습니다.</div>
<div style="color: gray;">-상해 입원등의 이유로 예약을 취소해야하는 경우 환불을 받으 실 수 없습니다.</div>
<div style="color: gray;">-만일 고객님의 사망시에는 환불을 받으실 수 없습니다.</div>
<div style="color: gray;">-배편이 끊겨 매장까지 오실 수 없으실 때는 환불을 받으실 수 없습니다.</div>
<div style="color: gray;">-회사의 문제로 인하여 환불을 받을 시에는 전액환불을 받으 실 수 있습니다.</div>
<div style="color: gray;">-단, 환불이 이루어지는 기간은 회사의 사정에 의해 임의로 조정될 수 있습니다.</div>
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