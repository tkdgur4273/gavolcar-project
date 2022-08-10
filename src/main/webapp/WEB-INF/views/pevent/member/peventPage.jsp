<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<head>

<meta charset="UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">

 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
 <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
 <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>



<style type="text/css">
	#headerpotal{
			text-align: center;
			font-size: 1.5em;
			line-height: 4em;
			
		}
		#headlogin{
			text-align: center;
			line-height: 4em;
			
		}
		#upperbar{
			text-align: center;
		}
		#footbar{
			text-align: center;
		}
		#foottxt{
			color: gray;
			line-height: 2em;
			font-size: 1em;
		}
</style>








<title>peventpage</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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
	    	   	htmls += '<td>' + this.point_no + '</td>';
		        htmls += '<td>' + this.points +'</td>'; 
		        htmls += '<td>' + this.point_date +'</td>';  
		        totalPoint +=  this.points;
	     		$(this.rentsList).each(function(){
		          
		        	htmls += '<td>' + this.rez_no + '</td>';
		        	htmls += '<td>' + this.rent_start_date +'</td>'; 
		        	htmls += '<td>' + this.rent_end_date +'</td>'; 
		        	htmls += '<td>' + this.final_cost + '</td>';
		        	htmls += '<td>' + this.hipass + '</td>';
		   	    	htmls += '<td>' + this.baby_car_seat +'</td>'; 
		   	    	htmls += '<td>' + this.car_no + '</td>';
		        	htmls += '</tr>';   
	    	  	});
	     	
	       	});
	    	htmls += '<tr>';
    	   	htmls += '<td colspan="11">' + "총 포인트" + '</td>';
    	   	htmls += '<tr>';
	    	htmls += '<tr>';
    	   	htmls += '<td colspan="11">' + totalPoint + '</td>';
    	   	htmls += '<tr>';
    	   	$("#totalPointBanner").append(totalPoint);
	    }
	    $("#list-table").append(htmls);
	}
	
	
});	
</script>

</head>
<body>
	<div class="container col-12" id="headbar" style="background: gray;">
		<div class="row">
			<div class="col-3"><a id="headlogo" href="/main"><img src="../투명로고.png" height="100em"></a></div>
			
				<table  class="col-4" id="headerpotal">
					<tr>
						<td class="col-3"><a href="#"><img src="../마이페이지.png" width="100em"></a></td>
						<td class="col-3"><a href="#"><img src="../예약.png" width="100em"></a></td>
						<td class="col-3"><a href="#"><img src="../고객지원.png" width="100em"></a></td>
						<td class="col-3"><a href="#"><img src="../후기.png" width="100em"></a></td>
					</tr>
				</table>
			
			<div class="col-2">
				
			</div>
			<div id="headlogin" class="col-2">
				<a href="#"><img src="../로그인.png" width="100em"></a>
				<a href="#"><img src="../회원가입.png" width="100em"></a>
			</div>
		</div>
	</div>








	<h1>포인트 리스트</h1>
	
	<div id="totalPointBannerTitle">나의 포인트</div>
	<div id="totalPointBanner"></div>
	
	
	
	<table id="list-table"  border="1">
		<tr>
			<td>포인트 번호 </td> 
	        <td>포인트</td>
	        <td>포인트 만료일</td>
	        <td>예약번호</td>
	        <td>대여 시작일</td>
	        <td>대여 종료일</td>
	        <td>최종 비용</td>
	       	<td>하이패스</td>
	        <td>카시트</td>
	        <td>차량 번호</td>
		</tr>
	</table>
	<a href="member/eventlist">리스트로</a>
	
	
	
	<footer id="footbar" style="background-color: black;">
		
		<div class="container col-11">
			<div class="row">
				<div class="col-3"><img src="../회색로고.png" height="100em" width="100em"></div>
				<div id="foottxt" class="col-9">
					<div>프로젝트 가볼카 | 대표이사: 정다은 | 제주도 가볼길 001호</div>
					<div>사업자등록번호 : 010-11-11122 | 통신판매신고번호: 제2022-제주서귀포-0001호 | TEL: 1111-1111 | Fax:000-000-0000 | Project@Gavolcar.co.kr</div>
					<div>COPYRIGHT©GAVOLCAR.ALL.RIGHTS.RESERVED</div>
					
				</div>
			</div>
		</div>

	</footer>
	
</body>
</html>