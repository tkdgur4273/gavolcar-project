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
<title>GaVolCar home</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/prettyPhoto.css" rel="stylesheet">
<link href="css/price-range.css" rel="stylesheet">
<link href="css/animate.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<link href="css/responsive.css" rel="stylesheet">
<!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
<link rel="shortcut icon" href="images/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="images/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="images/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="images/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="images/ico/apple-touch-icon-57-precomposed.png">








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
@font-face {
	font-family: 'tway_sky';
	src: url("./tway_sky.ttf");
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
	line-height: 3em;
	font-size: 1.5em;
}

#slider1 {
	background: url(./코나.jpg);
	background-repeat: no-repeat;
	background-size: cover;
}

#slider2 {
	background: url(./쿠폰이벤트2.png);
	background-repeat: no-repeat;
	background-size: cover;
}

#slider3 {
	background: url(./슬라이드배경.jpg);
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
</head>
<!--/head-->

<body>
	<div class="container col-12" id="headbar"
		style="border-bottom: 3px solid black;">
		<div class="row">
			<div class="col-3">
				<a id="headlogo" href="/main"><img src="투명로고.png" height="100em"></a>
				<sec:authorize access="hasRole('ADMIN')">
					<div style="width: 300px;">
						<a href="/admin/main"
							style="text-decoration: none; color: rgb(0, 51, 99); font-size: 20px; font-weight: 900;">관리자페이지로</a>
					</div>
				</sec:authorize>
			</div>

			<table class="col-4" id="headerpotal">
				<tr>
					<!-- <td class="col-2"><a href="#"><img src="마이페이지.png" width="100em"></a></td>
					<td class="col-2"><a href="#"><img src="예약.png" width="100em"></a></td>
					<td class="col-2"><a href="#"><img src="고객지원.png" width="100em"></a></td>
					<td class="col-2"><a href="#"><img src="후기.png" width="100em"></a></td>  -->
					<td><a href="/user/userHome"
						style="text-decoration: none; color: black; font-size: 1.5em; font-weight: 900; width: 20em;">마이페이지</a></td>
					<td><sec:authorize access="isAnonymous()">
							<a href="/login"
								style="text-decoration: none; color: black; font-size: 1.5em; font-weight: 900; width: 100px;">예약</a>

						</sec:authorize> <sec:authorize access="isAuthenticated()">
							<a href="/rez/reserve"
								style="text-decoration: none; color: black; font-size: 1.5em; font-weight: 900; width: 100px;">예약</a>
						</sec:authorize></td>
					<td><a href="custommerService"
						style="text-decoration: none; color: black; font-size: 1.5em; font-weight: 900; width: 100px;">고객지원</a></td>
					<td><a href="/review/userList"
						style="text-decoration: none; color: black; font-size: 1.5em; font-weight: 900; width: 100px;">후기</a></td>
					<td><a href="/user/eventlist"
						style="text-decoration: none; color: black; font-size: 1.5em; font-weight: 900; width: 100px;">이벤트</a></td>
				</tr>
			</table>

			<div class="col-2"></div>
			<sec:authorize access="isAnonymous()">
				<div id="headlogin" class="col-2">
					<a href="/login"
						style="text-decoration: none; color: black; font-size: 1.5em; font-weight: 900; width: 100px;">로그인</a>
					<span
						style="text-decoration: none; color: black; font-size: 1.5em; font-weight: 900; width: 100px;">|</span>
					<a href="/add/addForm"
						style="text-decoration: none; color: black; font-size: 1.5em; font-weight: 900; width: 100px;">회원가입</a>
				</div>
			</sec:authorize>

			<sec:authorize access="isAuthenticated()">
				<div id="headlogin2" class="col-3">
					<span
						style="text-decoration: none; color: black; font-size: 10px; font-weight: 900; width: 100px;"><sec:authentication
							property="principal.username" />님 환영합니다.</span> <a
						href="${pageContext.request.contextPath}/logout"
						style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">|로그아웃</a>
				</div>
			</sec:authorize>
		</div>
	</div>
	<!--/header-middle-->
	<section id="slider">
		<!--slider-->
		<div class="container col-12"
			style="border-bottom: 5px solid rgb(0, 51, 99);">
			<div class="row">
				<div class="col-sm-12">
					<div id="slider-carousel" class="carousel slide"
						data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#slider-carousel" data-slide-to="0"
								class="active" style="background-color: deepskyblue;"></li>
							<li data-target="#slider-carousel" data-slide-to="1"
								style="background-color: deepskyblue;"></li>
							<li data-target="#slider-carousel" data-slide-to="2"
								style="background-color: deepskyblue;"></li>
						</ol>

						<div class="carousel-inner">

							<div class="item active">
								<div id="slider1" class="col-sm-12">
									<div class="col-sm-6">
										<h1 style="color: white; font-family: 'tway_sky';">
											<span>(이벤트)</span><span
												style="background-color: rgb(52, 118, 218); opacity: 0.9; color: white;">여름에는
												놀러가자! 포인트 대 축제</span>
										</h1>
										<h2 style="color: white; font-family: 'tway_sky';">예약에 따른
											포인트 적립 이벤트!</h2>
										<p style="color: white; font-family: 'tway_sky';">(이벤트 기간
											2022.06.01 ~2022.08.31 까지)</p>
										<a href="/user/eventlist"><button type="button"
												class="btn btn-default get"
												style="background-color: rgb(52, 118, 218); color: white;">진행중인
												이벤트 확인</button></a>
									</div>
									<div class="col-sm-6" style="height: 50em"></div>

									<!-- <img src="frameimage/자동차1.jpg" class="girl img-responsive" alt="" width="800em" height="800em"/> -->
								</div>
							</div>

							<div class="item">
								<div id="slider2" class="col-sm-12">
									<div class="col-sm-6">
										<h1 style="color: white; font-family: 'tway_sky';">
											<span>(이벤트)</span><span
												style="background-color: rgb(52, 118, 218); opacity: 0.9; color: white;">후기
												작성하고 할인쿠폰 받자!</span>
										</h1>
										<h2 style="color: white; font-family: 'tway_sky';">후기만
											작성해도 할인 쿠폰이!</h2>
										<p style="color: white; font-family: 'tway_sky';">(이벤트 기간
											2022.07.01 ~2022.09.21 까지)</p>
										<a href="/user/eventlist"><button type="button"
												class="btn btn-default get"
												style="background-color: rgb(52, 118, 218); color: white;">진행중인
												이벤트 확인</button></a>
									</div>
									<div class="col-sm-6" style="height: 50em"></div>
								</div>
							</div>

							<div class="item">
								<div id="slider3" class="col-sm-12">
									<div class="col-sm-6">
										<h1 style="color: black; font-family: 'tway_sky';">당신과
											어디든 함께</h1>
										<span style="font-size: 60px; font-family: 'tway_sky';">가볼</span><span
											style="font-size: 60px; color: red; font-family: 'tway_sky';">카</span>
										<p style="font-size: 40px; color: white;">GaVolCar.co</p>

									</div>
									<div class="col-sm-6">
										<img src="투명로고.png" class="girl img-responsive" alt=""
											style="height: 50em;" />
									</div>
								</div>
							</div>

						</div>

						<a href="#slider-carousel" class="left control-carousel hidden-xs"
							data-slide="prev"> <i class="fa fa-angle-left"></i>
						</a> <a href="#slider-carousel"
							class="right control-carousel hidden-xs" data-slide="next"> <i
							class="fa fa-angle-right"></i>
						</a>
					</div>

				</div>
			</div>
		</div>
	</section>
	<!--/slider-->
	<div class="container col-10">
		<div id="upperbar" class="row">
			<div id="upperbar1" class="col-4" style="background:;">
				<sec:authorize access="isAuthenticated()">
					<a href="/rez/reserve" style="text-decoration: none;"><div
							style="margin: 1em; border: 5px solid rgb(0, 51, 99); height: 39.5em;">
							<img src="검정예약.png" height="280em" width="100%">
							<div style="font-size: 50px; color: rgb(0, 51, 99)">예약하기</div>
				</sec:authorize>
				<sec:authorize access="isAnonymous()">
					<a href="/login" style="text-decoration: none;"><div
							style="margin: 1em; border: 5px solid rgb(0, 51, 99); height: 39.5em;">
							<img src="검정예약.png" height="280em" width="100%">
							<div style="font-size: 50px; color: rgb(0, 51, 99)">예약하기</div>
				</sec:authorize>




			</div>
			</a>
		</div>
		<div id="upperbar2" class="col-4" style="background:;">
			<div class="row">



				<div id="upperbar3" class="col-6" style="background:;">
					<sec:authorize access="isAuthenticated()">
						<a
							href="/user/rentscheck?user_id=<sec:authentication property='principal.username'/>"
							style="text-decoration: none;"><div
								style="margin: 5px; border: 5px solid rgb(0, 51, 99);">
								<img src="예약조회.png" height="140em" width="100%">
								<div style="font-size: 25px; color: rgb(0, 51, 99)">예약확인</div>
					</sec:authorize>
					<sec:authorize access="isAnonymous()">
						<a href="/login" style="text-decoration: none;"><div
								style="margin: 5px; border: 5px solid rgb(0, 51, 99);">
								<img src="예약조회.png" height="140em" width="100%">

								<div style="font-size: 25px; color: rgb(0, 51, 99)">예약확인</div>
					</sec:authorize>
				</div>
				</a>
			</div>
			<div id="upperbar4" class="col-6" style="background:;">
				<a href="/review/userList" style="text-decoration: none;"><div
						style="margin: 5px; border: 5px solid rgb(0, 51, 99);">
						<img src="검정후기.png" height="140em" width="100%">
						<div style="font-size: 25px; color: rgb(0, 51, 99)">후기</div>
					</div></a>
			</div>
		</div>
		<div class="row">
			<div id="upperbar5" class="col-6" style="background:;">
				<a href="/trans" style="text-decoration: none;"><div
						style="margin: 5px; border: 5px solid rgb(0, 51, 99);">
						<img src="차량 통계.png" height="140em" width="100%">
						<div style="font-size: 25px; color: rgb(0, 51, 99)">차량통계</div>
					</div></a>
			</div>
			<div id="upperbar6" class="col-6"
				style="height: 200px; width: 200px;">
				<a href="/arealist_user" style="text-decoration: none;"><div
						style="margin: 5px; border: 5px solid rgb(0, 51, 99);">
						<img src="관광정보.png" height="140em" width="100%">
						<div style="font-size: 25px; color: rgb(0, 51, 99)">관광정보</div>
					</div></a>
			</div>
		</div>
	</div>
	<div id="upperbar7" class="col-4" style="background:;">
		<h1 style="margin: 1em; font-family: 'tway_sky'; font-size: 30px">공지사항</h1>

		<c:forEach var="alert" items="${alertForMainPage}">

			<a href="/notice/userContent?b_no=${alert.b_no}"
				style="text-decoration: none;"><h4
					style="height: 3em; border-bottom: 2px solid rgb(0, 51, 99); line-height: 3em; font-size: 18px;">${alert.b_contents}</h4></a>

		</c:forEach>


	</div>
	</div>
	</div>

	<div>
		<div id="toAdmin"></div>
	</div>






	<footer id="footbar" style="background-color: black;">

		<div class="container col-11">
			<div class="row">
				<div class="col-3">
					<img src="회색로고.png" height="100em" width="100em">
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