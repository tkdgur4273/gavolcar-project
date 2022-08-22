<%@ page language="java" contentType="text/html;charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>trans infomation edit</title>
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/font-awesome.min.css" rel="stylesheet">
<link href="../css/prettyPhoto.css" rel="stylesheet">
<link href="../css/price-range.css" rel="stylesheet">
<link href="../css/animate.css" rel="stylesheet">
<link href="../css/main.css" rel="stylesheet">
<link href="../css/responsive.css" rel="stylesheet">
<!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
<link rel="shortcut icon" href="images/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="../images/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="../images/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="../images/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="../images/ico/apple-touch-icon-57-precomposed.png">








<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<style type="text/css">
#warp {
	text-align: center;
	font-size: 4em;
}

#footbar {
	text-align: center;
}

#foottxt {
	color: gray;
	line-height: 3em;
	font-size: 1.5em;
}
</style>
</head>
<!--/head-->

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
			<div id="warp" class="col-2" style="margin: 5em 0;">
				<table>
					<tr>
						<td><a href="../admin/arealist">지역 정보 관리</a></td>
					</tr>
					<tr>
						<td><a href="../admin/transEdit">통계 관리</a></td>
					</tr>
					<tr>
						<td><a href="../admin/carlist">차량 관리</a></td>
					</tr>
				</table>
			</div>
			<div class="col-10" style="border-left: 5px solid gray;">
				<h1>통계 관리 리스트</h1>
				<div id="pieChart_div"></div>
				<div id="chart_div"></div>


				<table border="1" class="col-10"
					style="font-size: 2em; margin: 5em;">
					<tr>
						<td width="50">번호</td>
						<td>이익</td>
						<td>차종</td>
						<td>대여일수</td>
						<td>수정</td>
						<td>데이터 삭제</td>
					</tr>

					<!-- 		for (DeptVO dept : deptMapper.getDeptEmpList()) {
			
			log.info(dept.getLoc() + dept.getDeptno());
			
			for (EmpVO vo : dept.getEmpList()) {
				System.out.println(vo);
			}
		} -->


					<c:forEach var="list" items="${transList}">
						<form id="updateForm" action="/transUpdate" method="post">
							<input type="hidden" name="trans_no" value="${list.trans_no}">
							<tr>
								<td>${list.trans_no}</td>
								<td><input name="trans_sales" type="number"
									value="${list.trans_sales}"></td>

								<td><input name="trans_type" type="text"
									value="${list.trans_type}"></td>
								<td><input name="trans_date" type="text"
									value="${list.trans_date}"></td>

								<td><input type="submit" value="수정"></td>
								<td><a href="/transDelete?trans_no=${list.trans_no}">삭제</a></td>


							</tr>
						</form>
					</c:forEach>
					<form id="writeForm" action="/transWrite" method="post">
						<tr>
							<td>추가</td>
							<td><input name="trans_sales" type="number" value="이익"
								onfocus="this.value=''"></td>
							<td><input name="trans_type" type="text" value="차종"
								onfocus="this.value=''"></td>
							<td><input name="trans_date" type="text" value="대여일수"
								onfocus="this.value=''"></td>
							<td colspan="2"><input type="submit" value="추가"></td>
						</tr>
					</form>
				</table>



				<div>
					<a href="/trans">통계로 돌아가기</a>
				</div>





				<h1>일단 리스트</h1>
				<table id="list-table" border="1">

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
	<!--/Footer-->



	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/price-range.js"></script>
	<script src="js/jquery.prettyPhoto.js"></script>
	<script src="js/main.js"></script>
</body>
</html>