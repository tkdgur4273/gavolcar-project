<%@ page language="java" contentType="text/html;charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<html>
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
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

#main {
	height: 50em;
	background: url(./carsimages/${no.car_img});
	background-size: cover;
}

#maincontent {
	font-size: 2em;
}
</style>





<title>car infomation</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">

	

		
</script>

</head>
<body>

	<div class="container col-12" id="headbar" style="background: gray;">
		<div class="row">
			<div class="col-3">
				<a id="headlogo" href="/main"><img src="투명로고.png" height="100em"></a>
			</div>

			<table class="col-4" id="headerpotal">
				<tr>
					<td class="col-3"><a href="#"><img src="마이페이지.png"
							width="100em"></a></td>
					<td class="col-3"><a href="#"><img src="예약.png"
							width="100em"></a></td>
					<td class="col-3"><a href="#"><img src="고객지원.png"
							width="100em"></a></td>
					<td class="col-3"><a href="#"><img src="후기.png"
							width="100em"></a></td>
				</tr>
			</table>

			<div class="col-2"></div>
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
		</div>
	</div>










	<div id="main" class="col-12">
		<div id="maincontent" class="col-4">${name.area_contents}</div>

	</div>
	<div>
		<ul>
			<h3 style="color: orange;">차량번호</h3>
			<li>${no.car_no}</li>
		</ul>
		<ul>
			<h3 style="color: orange;">차종</h3>
			<li>${no.car_type}</li>
		</ul>
		<ul>
			<h3 style="color: orange;">제조회사</h3>
			<li>${no.car_company}</li>
		</ul>
		<ul>
			<h3 style="color: orange;">탑승인원</h3>
			<li>${no.car_volume}</li>
		</ul>
		<ul>
			<h3 style="color: orange;">차량 색</h3>
			<li>${no.car_color}</li>
		</ul>
		<ul>
			<h3 style="color: orange;">연료</h3>
			<li>${no.car_fuel}</li>
		</ul>
		<ul>
			<h3 style="color: orange;">배기량</h3>
			<li>${no.car_cc}</li>
		</ul>
		<ul>
			<h3 style="color: orange;">가격</h3>
			<li>${no.car_price}</li>
		</ul>


	</div>










	<!--  
  <table width="700" cellpadding="0" cellspacing="0" border="1">
     
  
         <tr>
            <td> 명소이름 </td>
            <td id="name">${name.area_name} </td>
         </tr>
         <tr>
            <td> 명소주소 </td>
            <td  id="loc">${name.area_loc} </td>
         </tr>
         <tr>
            <td> 이용시간 </td>
            <td id="time">${name.area_time} </td>
         </tr>
           <tr>
            <td> 내용 </td>
            <td id="contents">${name.area_contents}</td>
         </tr>
           <tr>
            <td> 이미지</td>
            <td><img src="${name.area_img}"></td>
         </tr>
           <tr>
            <td> 전화번호 </td>
            <td id="tel">${name.area_tel}</td>
         </tr>
         <tr >
         
            <td colspan="2"> 
            &nbsp;&nbsp; <a href="arealist_user">목록보기</a> 
           </td>
         </tr>
      </form>
   </table>
-->

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



	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/price-range.js"></script>
	<script src="js/jquery.prettyPhoto.js"></script>
	<script src="js/main.js"></script>

</body>
</html>