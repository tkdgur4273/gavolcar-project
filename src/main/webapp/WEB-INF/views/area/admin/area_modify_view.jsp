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
<title>area modify</title>
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
<script type="text/javascript">
	$(document).ready(function() {

		$("#updateForm").submit(function(event) {
			//prevendDefault()??? href??? ????????? ?????? ?????? 
			//????????? click??? ?????? ????????? ????????? ?????????.
			event.preventDefault();

			var data = {
				area_name : $("#area_name").html(),
				area_loc : $("#area_loc").val(),
				area_contents : $("#area_contents").val(),
				area_time : $("#area_time").val(),
				area_img : '${name.area_img}',
				area_tel : $("#area_tel").val()
			}
			var area_name = $('#area_name').html();
			var form = $('#updateForm')[0];
			var formData = new FormData(form);
			formData.append('file', $('#file'));
			formData.append('key', new Blob([ JSON.stringify(data) ], {
				type : "application/json"
			}));

			$.ajax({
				type : 'PUT',
				url : '/areas/' + area_name,
				processData : false,
				contentType : false,
				data : formData,
			}).done(function() {
				alert('?????? ?????????????????????.');
				window.location.href = 'admin/arealist';
			}).fail(function(error) {
				alert(JSON.stringify(error));
			});
		});
	});
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
				<a id="headlogo" href="/adminmain"><img src="????????????.png"
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
						<td><a href="../admin/list" style="text-decoration: none; color: black; wid">???????????? ??????</a></td>
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







				<table width="700" cellpadding="0" cellspacing="0" class="col-10"
					border="1" style="font-size: 2em; margin: 5em;">
					<form id="updateForm" action="admin/arealist" method="put"
						enctype="multipart/form-data">
						<tr>
							<td class="bar">????????????</td>
							<td id="area_name">${name.area_name}</td>
						</tr>
						<tr>
							<td class="bar">????????????</td>
							<td><input id="area_loc" type="text" name="loc"
								value="${name.area_loc} "></td>
						</tr>
						<tr>
							<td class="bar">????????????</td>
							<td><input id="area_time" type="text" name="time"
								value="${name.area_time}"></td>
						</tr>
						<tr>
							<td class="bar">??????</td>
							<td><textarea id="area_contents" rows="10" name="contents">${name.area_contents}</textarea></td>
						</tr>
						<tr>
							<td class="bar">?????????</td>
							<td><input type="file" name="file" id="file"></td>
						</tr>
						<tr>
							<td class="bar">????????????</td>
							<td><input type="number" id="area_tel" rows="10" name="tel"
								value="${name.area_tel}"></td>
						</tr>
						<tr>
							<td colspan="2"><input type="submit" value="??????">
								&nbsp;&nbsp; <a href="admin/arealist">????????????</a>
						</tr>
					</form>
				</table>












			</div>
		</div>
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