<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<title>후기 관리자 게시판</title>


<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>


<style type="text/css">
#warp {
	text-align: center;
	font-size: 40px;
	background: url(../기어.png);
	background-size: cover;
	overflow: hidden;
}

#footbar {
	text-align: center;
}

#foottxt {
	color: gray;
	line-height: 30px;
	font-size: 15px;
}
#main{
	padding: 60px;
}
#tableTitle{
	width: 1100px;
	height: 50px;
	line-height: 50px;
	font-size: 30px;
	font-weight: 900;
	text-align: left;
	margin: 0 auto;
	border-radius: 25px;
}
#r_table{
	width: 1200px;;
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
						<td><a href="../admin/list" style="text-decoration: none; color: black;">회원정보 관리</a></td>
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
<div id="pagetitle" style="text-align: center; height: 120px; line-height: 120px; font-size: 50px; font-weight: 700;">후기 관리</div>

<div id="main">
<div id="tableTitle">후기 게시판</div>
	<table id="r_table" width="600" style=" margin: 30px auto;text-align: center; border-spacing: 0px;">

		<tr style=" height: 40px;">
			<td style=" border-bottom: 4px solid black; border-top:  4px solid black;">No.</td>
			<td style=" border-bottom: 4px solid black; border-top:  4px solid black;">제목</td>
			<td style=" border-bottom: 4px solid black; border-top:  4px solid black;">차종</td>
			<td style=" border-bottom: 4px solid black; border-top:  4px solid black;">차량번호</td>
			<td style=" border-bottom: 4px solid black; border-top:  4px solid black;">작성자</td>
			<td style=" border-bottom: 4px solid black; border-top:  4px solid black;">등록일</td>
			<td style=" border-bottom: 4px solid black; border-top:  4px solid black;">숨기기</td>

		</tr>

		<!--이때 list는 BListCommand에서 메모리에 올린 list를 뜻함. 포워딩시까지 살아있으므로-->
		<!--forEach문을 이용해 데이터를 꺼낼 수 있다.-->
		<c:forEach var="board" items="${reviewAdminList}">
			<tr style="height: 50px; font-size: 20px;">
				<td width="60px;" style="border-bottom:2px solid gray;">${board.b_no}</td>
				<td width="700px;" style="text-align: left;border-bottom:2px solid gray;"><a href="/review/adminContent?b_no=${board.b_no}" style="text-decoration: none;">${board.b_title}</a>
				</td>
				<td style="border-bottom:2px solid gray;">${board.car_type}</td>
				<td style="border-bottom:2px solid gray;">${board.car_type}</td>
				<td style="border-bottom:2px solid gray;">${board.user_id}</td>
				<td style="border-bottom:2px solid gray;">${board.b_date}</td>
				<td  style="border-bottom:2px solid gray;" colspan="2">&nbsp;&nbsp;<a
					href="/review/adminHidden?b_no=${board.b_no}">숨기기</a>
			</tr>
		</c:forEach>

	</table>
<div style="text-align: center; margin: 0 auto; font-size: 20px;">

	<c:if test="${pageMaker.prev}">
		<a
			href="/review/adminList${pageMaker.makeQuery(pageMaker.startPage - 1) }">«</a>
	</c:if>

	<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }"
		var="idx">
		<c:out value="${pageMaker.cri.pageNum == idx?'':''}" />
		<a href="/review/adminList${pageMaker.makeQuery(idx)}">${idx}</a>
	</c:forEach>

	<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
		<a
			href="/review/adminList${pageMaker.makeQuery(pageMaker.endPage +1) }">
			» </a>
	</c:if>
	</div>
	<br>
</div>

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