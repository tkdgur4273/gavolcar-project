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
	
function list(result) {
    var htmls="";
    
    $("#list-table").html("");
    

    
    	
    if(result.length < 1){
       htmls.push("등록된 차량이 없습니다.");
    }else{         
    	htmls+='<div class="container">';
    	htmls+='<div class="row">';
    	
       $(result).each(function() {
    	  htmls+='<a href="/carcontent_view?car_no=' + this.car_no + '" style="border: 1px solid black; text-decoration: none; color: black;">' +'<table class="col-3">';
    	  htmls += '<tr>';
          htmls += '<td colspan="3"><img src="\\carsimages\\' + this.car_img + '" width="300em" height="200em"></td>'
          htmls += '</tr>'; 
          htmls += '<tr>';
          htmls += '<td>' + '등록번호' +'</td>'; 
          htmls += '<td>' + ':' +'</td>'; 
          htmls += '<td>' + this.car_no +'</td>'; 
          htmls += '</tr>'; 
          htmls += '<tr>';
          htmls += '<td>' + '차종' +'</td>'; 
          htmls += '<td>' + ':' +'</td>'; 
          htmls += '<td>' + this.car_type +'</td>'; 
          htmls += '</tr>'; 
          htmls += '<tr>';
          htmls += '<td>' + '제조사' +'</td>'; 
          htmls += '<td>' + ':' +'</td>'; 
          htmls += '<td>' + this.car_company +'</td>'; 
          htmls += '</tr>'; 
          htmls += '<tr>';
          htmls += '<td>' + '연료' +'</td>'; 
          htmls += '<td>' + ':' +'</td>'; 
          htmls += '<td>'+ this.car_fuel + '</td>';
          htmls += '</tr>';  
          htmls += '</table></a>';
       });
       htmls+='<a href="/carwrite" style="border: 1px solid black; text-decoration: none; color: black;">' +'<table class="col-3">';
 	   htmls += '<tr>';
       htmls += '<td colspan="3"><img src="\\차량등록.png" width="300em" height="200em"></td>'
       htmls += '</tr>'; 
       htmls += '<tr>';
       htmls += '<td>' + '등록번호' +'</td>'; 
       htmls += '<td>' +'</td>'; 
       htmls += '<td>' +'</td>'; 
       htmls += '</tr>'; 
       htmls += '<tr>';
       htmls += '<td>' + '차종' +'</td>'; 
       htmls += '<td>' +'</td>'; 
       htmls += '<td>' +'</td>'; 
       htmls += '</tr>'; 
       htmls += '<tr>';
       htmls += '<td>' + '제조사' +'</td>'; 
       htmls += '<td>' +'</td>'; 
       htmls += '<td>' +'</td>'; 
       htmls += '</tr>'; 
       htmls += '<tr>';
       htmls += '<td>' + '연료' +'</td>'; 
       htmls += '<td>' +'</td>'; 
       htmls += '<td>' + '</td>';
       htmls += '</tr>';  
       htmls += '</table></a>';
             
    }
    
    $("#list-table").append(htmls);      
    
}
 



$(document).ready(function() {
	$.ajax({
		type:"GET",
		url:"/cars/carList",
		success:function(result){
			console.log(result);
			
			list(result);
		}
		
		
		
	});
	
	
});	


</script>

<style type="text/css">
#warp {
	text-align: center;
	font-size: 4em;
	background: url(../기어.png);
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
#pagetitle{
	background: url(../기어.png);
	background-size: cover;
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
			<div id="warp" class="col-2" style="margin: 1em 0;">
				<table style="width: 300px; background-color: white; opacity: 0.7;">
					<tr style="border: 1px solid black; height: 120px;">
						<td><a href="#" style="text-decoration: none; color: black;">회원정보 관리</a></td>
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
						<td><a href="#" style="text-decoration: none; color: black;">고객지원 관리</a></td>
					</tr>
					<tr style="border: 1px solid black; height: 120px;">
						<td><a href="#" style="text-decoration: none; color: black;">후기 관리</a></td>
					</tr>
				</table>
			</div>
			<div class="col-10" style="border-left: 5px solid gray;">
			<div id="pagetitle" style="text-align: center; height: 120px; line-height: 120px; font-size: 50px; font-weight: 700;">차량관리</div>

				<div id="list-table" class="col-10" border="1"
					style="font-size: 2em; margin: 5em; text-align: center;"></div>
				<h1>
					<a href="/carwrite">신규 차량 등록</a>
				</h1>
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