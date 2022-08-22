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
<title>car information</title>
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
	
	$(document).on("click","#cardelete",function(){
		
		
		
		
		let car_no = $("#no").html();
		let car_img = $("#img").val();
	
		
		$.ajax({ 
            type: "DELETE",
            url : "/cars/"+car_no+"/"+car_img, //http://localhost:8282/boards/list
            success : function(result) {
       	           console.log(result);               	
       	             
            }, 
            error : function(xhr, textStatus, errorThrown){ 
                    alert(xhr);
                    alert(textStatus);  
                    alert(errorThrown);
                }
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

				<script type="text/javascript">
	var imglo = "\\carsimages\\" + "${no.car_img}";
	
</script>
				<table width="700" cellpadding="0" cellspacing="0" class="col-10"
					border="1" style="font-size: 2em; margin: 5em;">


					<tr>
						<td>등록번호</td>
						<td id="no">${no.car_no}</td>
					</tr>
					<tr>
						<td>차종</td>
						<td id="type">${no.car_type}</td>
					</tr>
					<tr>
						<td>제조회사</td>
						<td id="company">${no.car_company}</td>
					</tr>
					<tr>
						<td>탑승인원</td>
						<td id="volume">${no.car_volume}</td>
					</tr>
					<tr>
						<td>차량 색</td>
						<td id="color">${no.car_color}</td>
					</tr>
					<tr>
						<td>연료</td>
						<td id="fuel">${no.car_fuel}</td>
					</tr>
					<tr>
						<td>배기량</td>
						<td id="cc">${no.car_cc}</td>
					</tr>
					<tr>
						<td>가격</td>
						<td id="price">${no.car_price}</td>
					</tr>
					<tr>
						<td>이미지</td>
						<td id="imglo"></td>
						<input type="hidden" id="img" value="${no.car_img}">
					</tr>
					<script type="text/javascript">
			var imglocation = "<img src='"+("\\carsimages\\" + "${no.car_img}")+"' width='1200px'>";
			$("#imglo").append(imglocation);
		</script>
					<tr>

						<td colspan="2"><a href="carmodify?car_no=${no.car_no}">수정하기</a>
							&nbsp;&nbsp; <a href="admin/carlist">목록보기</a> &nbsp;&nbsp; <a
							id="cardelete" href="admin/carlist">삭제</a></td>
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