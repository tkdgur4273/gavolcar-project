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
	background: url(./??????.jpg);
	background-repeat: no-repeat;
	background-size: cover;
}

#slider2 {
	background: url(./???????????????2.png);
	background-repeat: no-repeat;
	background-size: cover;
}

#slider3 {
	background: url(./??????????????????.jpg);
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
				<a id="headlogo" href="/main"><img src="????????????.png" height="100em"></a>
				<sec:authorize access="hasRole('ADMIN')">
					<div style="width: 300px;">
						<a href="/admin/main"
							style="text-decoration: none; color: rgb(0, 51, 99); font-size: 20px; font-weight: 900;">?????????????????????</a>
					</div>
				</sec:authorize>
			</div>

			<table class="col-4" id="headerpotal">
				<tr>
					<!-- <td class="col-2"><a href="#"><img src="???????????????.png" width="100em"></a></td>
					<td class="col-2"><a href="#"><img src="??????.png" width="100em"></a></td>
					<td class="col-2"><a href="#"><img src="????????????.png" width="100em"></a></td>
					<td class="col-2"><a href="#"><img src="??????.png" width="100em"></a></td>  -->
					<td><a href="/user/userHome"
						style="text-decoration: none; color: black; font-size: 1.5em; font-weight: 900; width: 20em;">???????????????</a></td>
					<td><sec:authorize access="isAnonymous()">
							<a href="/login"
								style="text-decoration: none; color: black; font-size: 1.5em; font-weight: 900; width: 100px;">??????</a>

						</sec:authorize> <sec:authorize access="isAuthenticated()">
							<a href="/rez/reserve"
								style="text-decoration: none; color: black; font-size: 1.5em; font-weight: 900; width: 100px;">??????</a>
						</sec:authorize></td>
					<td><a href="custommerService"
						style="text-decoration: none; color: black; font-size: 1.5em; font-weight: 900; width: 100px;">????????????</a></td>
					<td><a href="/review/userList"
						style="text-decoration: none; color: black; font-size: 1.5em; font-weight: 900; width: 100px;">??????</a></td>
					<td><a href="/user/eventlist"
						style="text-decoration: none; color: black; font-size: 1.5em; font-weight: 900; width: 100px;">?????????</a></td>
				</tr>
			</table>

			<div class="col-2"></div>
			<sec:authorize access="isAnonymous()">
				<div id="headlogin" class="col-2">
					<a href="/login"
						style="text-decoration: none; color: black; font-size: 1.5em; font-weight: 900; width: 100px;">?????????</a>
					<span
						style="text-decoration: none; color: black; font-size: 1.5em; font-weight: 900; width: 100px;">|</span>
					<a href="/add/addForm"
						style="text-decoration: none; color: black; font-size: 1.5em; font-weight: 900; width: 100px;">????????????</a>
				</div>
			</sec:authorize>

			<sec:authorize access="isAuthenticated()">
				<div id="headlogin2" class="col-3">
					<span
						style="text-decoration: none; color: black; font-size: 10px; font-weight: 900; width: 100px;"><sec:authentication
							property="principal.username" />??? ???????????????.</span> <a
						href="${pageContext.request.contextPath}/logout"
						style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">|????????????</a>
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
											<span>(?????????)</span><span
												style="background-color: rgb(52, 118, 218); opacity: 0.9; color: white;">????????????
												????????????! ????????? ??? ??????</span>
										</h1>
										<h2 style="color: white; font-family: 'tway_sky';">????????? ??????
											????????? ?????? ?????????!</h2>
										<p style="color: white; font-family: 'tway_sky';">(????????? ??????
											2022.06.01 ~2022.08.31 ??????)</p>
										<a href="/user/eventlist"><button type="button"
												class="btn btn-default get"
												style="background-color: rgb(52, 118, 218); color: white;">????????????
												????????? ??????</button></a>
									</div>
									<div class="col-sm-6" style="height: 50em"></div>

									<!-- <img src="frameimage/?????????1.jpg" class="girl img-responsive" alt="" width="800em" height="800em"/> -->
								</div>
							</div>

							<div class="item">
								<div id="slider2" class="col-sm-12">
									<div class="col-sm-6">
										<h1 style="color: white; font-family: 'tway_sky';">
											<span>(?????????)</span><span
												style="background-color: rgb(52, 118, 218); opacity: 0.9; color: white;">??????
												???????????? ???????????? ??????!</span>
										</h1>
										<h2 style="color: white; font-family: 'tway_sky';">?????????
											???????????? ?????? ?????????!</h2>
										<p style="color: white; font-family: 'tway_sky';">(????????? ??????
											2022.07.01 ~2022.09.21 ??????)</p>
										<a href="/user/eventlist"><button type="button"
												class="btn btn-default get"
												style="background-color: rgb(52, 118, 218); color: white;">????????????
												????????? ??????</button></a>
									</div>
									<div class="col-sm-6" style="height: 50em"></div>
								</div>
							</div>

							<div class="item">
								<div id="slider3" class="col-sm-12">
									<div class="col-sm-6">
										<h1 style="color: black; font-family: 'tway_sky';">?????????
											????????? ??????</h1>
										<span style="font-size: 60px; font-family: 'tway_sky';">??????</span><span
											style="font-size: 60px; color: red; font-family: 'tway_sky';">???</span>
										<p style="font-size: 40px; color: white;">GaVolCar.co</p>

									</div>
									<div class="col-sm-6">
										<img src="????????????.png" class="girl img-responsive" alt=""
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
							<img src="????????????.png" height="280em" width="100%">
							<div style="font-size: 50px; color: rgb(0, 51, 99)">????????????</div>
				</sec:authorize>
				<sec:authorize access="isAnonymous()">
					<a href="/login" style="text-decoration: none;"><div
							style="margin: 1em; border: 5px solid rgb(0, 51, 99); height: 39.5em;">
							<img src="????????????.png" height="280em" width="100%">
							<div style="font-size: 50px; color: rgb(0, 51, 99)">????????????</div>
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
								<img src="????????????.png" height="140em" width="100%">
								<div style="font-size: 25px; color: rgb(0, 51, 99)">????????????</div>
					</sec:authorize>
					<sec:authorize access="isAnonymous()">
						<a href="/login" style="text-decoration: none;"><div
								style="margin: 5px; border: 5px solid rgb(0, 51, 99);">
								<img src="????????????.png" height="140em" width="100%">

								<div style="font-size: 25px; color: rgb(0, 51, 99)">????????????</div>
					</sec:authorize>
				</div>
				</a>
			</div>
			<div id="upperbar4" class="col-6" style="background:;">
				<a href="/review/userList" style="text-decoration: none;"><div
						style="margin: 5px; border: 5px solid rgb(0, 51, 99);">
						<img src="????????????.png" height="140em" width="100%">
						<div style="font-size: 25px; color: rgb(0, 51, 99)">??????</div>
					</div></a>
			</div>
		</div>
		<div class="row">
			<div id="upperbar5" class="col-6" style="background:;">
				<a href="/trans" style="text-decoration: none;"><div
						style="margin: 5px; border: 5px solid rgb(0, 51, 99);">
						<img src="?????? ??????.png" height="140em" width="100%">
						<div style="font-size: 25px; color: rgb(0, 51, 99)">????????????</div>
					</div></a>
			</div>
			<div id="upperbar6" class="col-6"
				style="height: 200px; width: 200px;">
				<a href="/arealist_user" style="text-decoration: none;"><div
						style="margin: 5px; border: 5px solid rgb(0, 51, 99);">
						<img src="????????????.png" height="140em" width="100%">
						<div style="font-size: 25px; color: rgb(0, 51, 99)">????????????</div>
					</div></a>
			</div>
		</div>
	</div>
	<div id="upperbar7" class="col-4" style="background:;">
		<h1 style="margin: 1em; font-family: 'tway_sky'; font-size: 30px">????????????</h1>

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
					<img src="????????????.png" height="100em" width="100em">
				</div>
				<div id="foottxt" class="col-9">
					<div>???????????? ????????? | ????????????: ????????? | ????????? ????????? 001???</div>
					<div>????????????????????? : 010-11-11122 | ????????????????????????: ???2022-???????????????-0001??? |
						TEL: 1111-1111 | Fax:000-000-0000 | Project@Gavolcar.co.kr</div>
					<div>COPYRIGHT??GAVOLCAR.ALL.RIGHTS.RESERVED</div>

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