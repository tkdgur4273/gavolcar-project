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
	line-height: 2em;
	font-size: 1em;
}

#main {
	height: 50em;
	background: url(./areaimage/${name.area_img});
	background-size: cover;
}

#maincontent {
	font-size: 2em;
	background-color: white;
	height: 700px;
	opacity: 0.7;
}
</style>





<title>area contents</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	//삭제 버튼 처리
	$(document).on("click", "#area_delete", function() {

		let area_name = $("#name").html();

		$.ajax({
			type : "DELETE",
			url : "/areas/" + area_name, //http://localhost:8282/boards/list
			success : function(result) {
				console.log(result);

			},
			error : function(xhr, textStatus, errorThrown) {
				alert(xhr);
				alert(textStatus);
				alert(errorThrown);
			}
		});

	});
</script>

</head>
<body>

	<div class="container col-12" id="headbar"
		style="border-bottom: 3px solid black;">
		<div class="row">
			<div class="col-3">
				<a id="headlogo" href="/main"><img src="../투명로고.png"
					height="100em"></a>
			</div>

			<table class="col-4" id="headerpotal">
				<tr>
					<td><a href="/user/userHome"
						style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">마이페이지</a></td>
					<td>
						<sec:authorize access="isAnonymous()">
					<a href="/login"
						style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">예약</a>
					
					</sec:authorize>
					<sec:authorize access="isAuthenticated()">
					<a href="/rez/reserve"
						style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">예약</a>
					</sec:authorize>	
						
					</td>
					<td><a href="/custommerService"
						style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">고객지원</a></td>
					<td><a href="/review/userList"
						style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">후기</a></td>
					<td><a href="/user/eventlist"
						style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">이벤트</a></td>
				</tr>
			</table>

			<div class="col-2"></div>
			<sec:authorize access="isAnonymous()">
				<div id="headlogin" class="col-2">
					<a href="/login"
						style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">로그인</a>
					<span
						style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">|</span>
					<a href="/add/addForm"
						style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">회원가입</a>
				</div>
			</sec:authorize>
			<sec:authorize access="isAuthenticated()">
				<div id="headlogin2" class="col-2">
					<span
						style="text-decoration: none; color: black; font-size: 10px; font-weight: 900; width: 100px;"><sec:authentication
							property="principal.username" />님 환영합니다.</span> <a
						href="${pageContext.request.contextPath}/logout"
						style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">로그아웃</a>
				</div>
			</sec:authorize>
		</div>
	</div>
	










	<div id="main" class="col-12">
		<div id="maincontent" class="col-4"><div style="padding: 300px 0;">${name.area_contents}</div></div>

	</div>
	<div style="padding: 30px 0;">
		<ul>
			<h3 style="color: orange;">지역이름</h3>
			<li>${name.area_name}</li>
		</ul>
		<ul>
			<h3 style="color: orange;">명소이름</h3>
			<li>${name.area_loc}</li>
		</ul>
		<ul>
			<h3 style="color: orange;">이용가능시간</h3>
			<li>${name.area_time}</li>
		</ul>

		<ul>
			<h3 style="color: orange;">명소 전화번호</h3>
			<li>${name.area_tel}</li>
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