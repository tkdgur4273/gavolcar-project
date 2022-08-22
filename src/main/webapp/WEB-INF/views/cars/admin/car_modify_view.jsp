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
<title>car infomation modify</title>
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
$(document).ready(function (){
	
	$("#updateForm").submit(function(event) {
		//prevendDefault()는 href로 연결해 주지 않고 
		//단순히 click에 대한 처리를 하도록 해준다.
		event.preventDefault();
	
		var data = {
				car_no : $("#car_no").val(),
    			car_type : $("#car_type").val(),
    			car_company : $("#car_company").val(),
    			car_volume : $("#car_volume").val(),
    			car_color : $("#car_color").val(),
    			car_fuel : $("#car_fuel").val(),
    			car_cc : $("#car_cc").val(),
    			car_price : $("#car_price").val(),
    			car_img : '${no.car_img}'
		}
		var car_no = $('#car_no').val();
		var form =$('#updateForm')[0];
		var formData = new FormData(form);
		formData.append('file', $('#file'));
		formData.append('key', new Blob([JSON.stringify(data)] , {type: "application/json"}));
		
		$.ajax({
	        type: 'PUT',
	        url: '/cars/'+car_no,
	        processData: false,
	        contentType:false,
	        data: formData,
	    }).done(function() {
	        alert('차량정보가 수정되었습니다.');
	        window.location.href = 'admin/carlist';
	    }).fail(function (error) {
	        alert(JSON.stringify(error));
		});
		
	});
});
	
	
	
</script>
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
				<a id="headlogo" href="/adminmain"><img src="투명로고.png"
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







				<table width="700" cellpadding="0" cellspacing="0" class="col-10"
					border="1" style="font-size: 2em; margin: 5em;">
					<form id="updateForm" action="admin/carlist" method="put"
						enctype="multipart/form-data">

						<input id="car_no" type="hidden" name="name" value="${no.car_no}">

						<tr>
							<td>차종</td>
							<td><input id="car_type" type="text" name="name"
								value="${no.car_type}"></td>
						</tr>
						<tr>
							<td>제조회사</td>
							<td><input id="car_company" type="text" name="name"
								value="${no.car_company}"></td>
						</tr>
						<tr>
							<td>탑승인원</td>
							<td><input id="car_volume" type="text" name="name"
								value="${no.car_volume}"></td>
						</tr>
						<tr>
							<td>차량 색</td>
							<td><input id="car_color" type="text" name="name"
								value="${no.car_color}"></td>
						</tr>
						<tr>
							<td>연료</td>
							<td><input id="car_fuel" type="text" name="loc"
								value="${no.car_fuel}"></td>
						</tr>
						<tr>
							<td>배기량</td>
							<td><input id="car_cc" type="text" name="time"
								value="${no.car_cc}"></td>
						</tr>
						<tr>
							<td>가격</td>
							<td><textarea id="car_price" rows="10" name="contents">${no.car_price}</textarea></td>
						</tr>
						<tr>
							<td>이미지</td>
							<td><input type="file" name="file" id="file"></td>
						</tr>
						<tr>
							<td colspan="2"><input type="submit" value="수정">
								&nbsp;&nbsp; <a href="admin/carlist">목록보기</a>
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