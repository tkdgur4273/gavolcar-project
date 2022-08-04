<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<head>

<style type="text/css">
	
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
</body>
</html>