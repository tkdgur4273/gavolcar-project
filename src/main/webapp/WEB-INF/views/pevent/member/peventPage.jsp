<%@ page language="java" contentType="text/html;charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<html>
<head>

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

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
	background: url(./p.페이지.png);
	background-repeat: no-repeat;
	background-size: cover;
}

#Pointteam {
	padding: 10% 15%;
}

#totalPointBannerTitle {
	color: rgb(255, 185, 35);
	font-size: 200px;
	text-align: center;
	border-bottom: 10px solid rgb(255, 185, 35);
}

#totalPointBanner {
	color: rgb(255, 185, 35);
	text-align: center;
	font-size: 150px;
}

#list-table {
	margin: 0 auto;
	text-align: center;
	font-size: 20px;
	color: rgb(255, 185, 35);
	border: 2px solid rgb(255, 185, 35);
}
</style>








<title>point event</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">

	

$(document).ready(function() {
	$(document).ready(function() {
		var memberName = "<sec:authentication property='principal.username'/>";
		console.log(memberName);
		
		
		$.ajax({
			type:"GET",
			url:"/pevent/"+"<sec:authentication property='principal.username'/>",
			success:function(result){
				console.log(result);
			
				list(result);
			}
		});
	});
	
	
	function list(result) {
	    var htmls="";
	    
	    	
	    if(result.length < 1){
	       htmls.push("등록된 장소가 없습니다.");
	    }else{         
	       var totalPoint=0;
	    	$(result).each(function() { 
	    		htmls += '<tr>';
	    	   	
		        htmls += '<td>' + this.points +'</td>'; 
		        htmls += '<td>' + this.point_date +'</td>';  
		        totalPoint +=  this.points;
	     		$(this.rentsList).each(function(){
		          
		        	
		        	htmls += '<td>' + this.rent_start_date +'</td>'; 
		        	htmls += '<td>' + this.rent_end_date +'</td>'; 
		        	htmls += '<td>' + this.final_cost + '</td>';
		        
		   	    	htmls += '<td>' + this.car_no + '</td>';
		        	htmls += '</tr>';   
	    	  	});
	     	
	       	});
	    	htmls += '<tr>';
    	   	htmls += '<td colspan="11" >' + "총 포인트" + '</td>';
    	   	htmls += '<tr>';
	    	htmls += '<tr>';
    	   	htmls += '<td colspan="11">' + totalPoint + 'Point' +'</td>';
    	   	htmls += '<tr>';
    	   	$("#totalPointBanner").append(totalPoint + ' Point');
	    }
	    $("#list-table").append(htmls);
	}
	
	
});	
</script>

</head>
<body>
	<div class="container col-12" id="headbar"
		style="border-bottom: 3px solid black;">
		<div class="row">
			<div class="col-3">
				<a id="headlogo" href="/main"><img src="투명로고.png" height="100em"></a>
			</div>

			<table class="col-4" id="headerpotal">
				<tr>
					<td><a href="#"
						style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">마이페이지</a></td>
					<td><a href="#"
						style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">예약</a></td>
					<td><a href="#"
						style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">고객지원</a></td>
					<td><a href="#"
						style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">후기</a></td>
					<td><a href="/member/eventlist"
						style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">이벤트</a></td>
				</tr>
			</table>

			<div class="col-2"></div>
			<sec:authorize access="isAnonymous()">
				<div id="headlogin" class="col-2">
					<a href="#"
						style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">로그인</a>
					<span
						style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">|</span>
					<a href="#"
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
	</div>







	<div id="main" style="width: 100%; height: 1200px;">

		<div id="Pointteam">
			<div id="totalPointBannerTitle">나의 포인트</div>

			<div id="totalPointBanner">총</div>
		</div>
		<table id="list-table" border="1">
			<tr>

				<td>포인트</td>
				<td>포인트 만료일</td>

				<td>대여 시작일</td>
				<td>대여 종료일</td>
				<td>최종 비용</td>
				<td>차량 번호</td>
			</tr>
		</table>

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

</body>
</html>