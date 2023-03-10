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
<title>car information list</title>
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
<link rel="shortcut icon" href="../images/ico/favicon.ico">
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

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	
</script>
<script type="text/javascript">
function deletePopup(){window.open("../admindeletePopup", "delete", "width=500, height=300, left=100, top=50");}
function modifyPopup(){window.open("../adminmodifyPopup", "modify", "width=600, height=400, left=100, top=50");}


</script>


<style type="text/css">
#warp {
	text-align: center;
	font-size: 4em;
	background: url(../??????.png);
	background-size: cover;
}

#footbar {
	text-align: center;
}

#foottxt {
	color: gray;
	line-height: 3em;
	font-size: 1.5em;
}
#main{
	padding: 3em;
	font-size: 24px;
}
#pagetitle{
	background: url(../??????.png);
	background-size: cover;
}
.bar{
	background-color: rgb(235, 235, 235);
	padding-left: 20px;
	
}
</style>
</head>
<!--/head-->

<body>

	<div class="container col-12" id="headbar" style="background: gray;">
		<div class="row">
			<div class="col-3">
				<a id="headlogo" href="/adminmain"><img src="../????????????.png"
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
					<table style="width: 287px; background-color: white; opacity: 0.7;" border="5px solid black;">
					<tr style="border: 1px solid black; height: 120px;">
						<td><a href="../admin/list" style="text-decoration: none; color: black;">???????????? ??????</a></td>
					</tr>
					<tr style="border: 1px solid black; height: 120px;">
						<td><a href="../admin/carlist" style="text-decoration: none; color: black;">?????? ??????</a></td>
					</tr>
					<tr style="border: 1px solid black; height: 120px;">
						<td><a href="../admin/rentscheck" style="text-decoration: none; color: black;">?????? ??????</a></td>
					</tr>
					<tr style="border: 1px solid black; height: 120px;">
						<td><a href="../admin/transEdit" style="text-decoration: none; color: black;">?????? ??????</a></td>
					</tr>
					<tr style="border: 1px solid black; height: 120px;">
						<td><a href="../admin/arealist" style="text-decoration: none; color: black;">???????????? ??????</a></td>
					</tr>
					<tr style="border: 1px solid black; height: 120px;">
						<td><a href="/adminCustommerService" style="text-decoration: none; color: black;">???????????? ??????</a></td>
					</tr>
					<tr style="border: 1px solid black; height: 120px;">
						<td><a href="/review/adminList" style="text-decoration: none; color: black;">?????? ??????</a></td>
					</tr>
				</table>
			</div>
			<div class="col-10" style="border-left: 5px solid gray;">
				<div id="pagetitle" style="text-align: center; height: 120px; line-height: 120px; font-size: 50px; font-weight: 700;">????????????</div>


				<div id="main">
					
				
					<table width="1200" border="5px solid black"
						style="margin: 0 auto; text-align: center; background-color: rgba(255, 255, 255, 0.603); opacity: 0.8;">
						<tr style="background-color: rgba(155, 155, 155, 0.603);">
							<td>????????????</td>
							<td>?????? ?????????</td>
							<td>?????? ?????????</td>
							<td>?????? ?????????</td>
							<td>????????????</td>
							<td>???????????? ??????</td>
							<td>????????? ??????</td>
							<td>????????????</td>
							<td>??????</td>
							<td>????????????</td>

						</tr>

						<c:forEach var="rents" items="${list}">

							<tr>
								<td class="bar">${rents.rez_no}</td>
								<td>${rents.user_id}</td>
								<td>${rents.rent_start_date}</td>
								<td>${rents.rent_end_date}</td>
								<td>${rents.final_cost}</td>
								<td>${rents.hipass2}</td>
								<td>${rents.baby_car_seat2}</td>
								<td>${rents.car_no}</td>
								<td><input id="changer" type="button" value="??????"
									onclick="modifyPopup();"></td>
								<td><input id="deleter" type="button" value="??????"
									onclick="deletePopup();"></td>

							</tr>
						</c:forEach>

					</table>
					<form style="text-align: right; margin: 0 130px;" action="/admin/rentsearch" method="get">
						<input type="text" name="user_id">
						<input type="submit" value="?????? ??????">
					</form>


				</div>



			</div>
		</div>
	</div>

	<footer id="footbar" style="background-color: black;">

		<div class="container col-11">
			<div class="row">
				<div class="col-3">
					<img src="../????????????.png" height="100em" width="100em">
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