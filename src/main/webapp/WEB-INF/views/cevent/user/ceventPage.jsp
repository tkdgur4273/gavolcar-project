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

#couponresult {
	background: url(./ceventpage.png);
	background-repeat: no-repeat;
	background-size: cover;
	text-align: center;
	height: 800px;
	line-height: 800px;
	font-size: 50px;
}

#tabletop {
	text-align: center;
}

#list-table {
	width: 800px; font-size : 30px;
	text-align: center;
	margin: auto;
	font-size: 30px;
}
</style>








<title>coupon event page</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">

	

$(document).ready(function() {
	$(document).ready(function() {
		var memberName = "<sec:authentication property='principal.username'/>";
		console.log(memberName);
		
		
		$.ajax({
			type:"GET",
			url:"/cevent/"+"<sec:authentication property='principal.username'/>",
			success:function(result){
				console.log(result);
			
				list(result);
			}
		});
	});
	
	
	function list(result) {
	    var htmls="";
	    
	    	
	    if(result.length < 1){
	       $("#couponresult").append("????????? ????????? ????????????.")
	    }else{
	    	 $("#couponresult").append("????????? ?????? ??????????????????.")
	    	$(result).each(function() { 
	    		htmls += '<tr>';
	    	   	
		        htmls += '<td>' + this.coupon_name +'</td>'; 
		        htmls += '<td>' + this.coupon_contents +'</td>';  
		        
		          
			       
	     		$(this.boardsList).each(function(){
		          
		        	
		        	htmls += '<td>' + this.b_title +'</td>'; 
		        	htmls += '<td>' + this.b_date + '</td>';
		        	
		   	    	
		   	    	
		   	    	
		   	    	
		        	htmls += '</tr>';   
	    	  	});
	     	
	       	});
	    	
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
				<a id="headlogo" href="/main"><img src="../????????????.png"
					height="100em"></a>
			</div>

			<table class="col-4" id="headerpotal">
				<tr>
					<td><a href="/user/userHome"
						style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">???????????????</a></td>
					<td>
						<sec:authorize access="isAnonymous()">
					<a href="/login"
						style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">??????</a>
					
					</sec:authorize>
					<sec:authorize access="isAuthenticated()">
					<a href="/rez/reserve"
						style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">??????</a>
					</sec:authorize>	
						
					</td>
					<td><a href="/custommerService"
						style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">????????????</a></td>
					<td><a href="/review/userList"
						style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">??????</a></td>
					<td><a href="/user/eventlist"
						style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">?????????</a></td>
				</tr>
			</table>

			<div class="col-2"></div>
			<sec:authorize access="isAnonymous()">
				<div id="headlogin" class="col-2">
					<a href="/login"
						style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">?????????</a>
					<span
						style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">|</span>
					<a href="/add/addForm"
						style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">????????????</a>
				</div>
			</sec:authorize>
			<sec:authorize access="isAuthenticated()">
				<div id="headlogin2" class="col-2">
					<span
						style="text-decoration: none; color: black; font-size: 10px; font-weight: 900; width: 100px;"><sec:authentication
							property="principal.username" />??? ???????????????.</span> <a
						href="${pageContext.request.contextPath}/logout"
						style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">????????????</a>
				</div>
			</sec:authorize>
		</div>
	</div>


	<div id="couponresult"></div>
	<div id="tabletop">????????????</div>
	<table id="list-table" border="1">
		<tr>

			<td>????????????</td>
			<td>????????????</td>



			<td>????????????</td>
			<td>????????????</td>






		</tr>
	</table>
	<a href="member/eventlist">????????????</a>






	<!-- 
	<table id="list-table"  border="1">
		<tr>
			<td>????????? ???????????? </td> 
	        <td>????????????</td>
	        <td>????????????</td>
	        <td>?????? ?????????</td>
	        <td>????????????</td>
	        <td>????????????</td>
	        <td>??????</td>
	       	<td>??????</td>
	        <td>??????</td>
	        <td>??????</td>
	        <td>?????????</td>
	        <td>??????</td>
	        <td>??????</td>
	        <td>?????????</td>
	        <td>?????????</td>
	        <td>????????????</td>
		</tr>
	</table>
	<a href="member/eventlist">????????????</a>
	 -->


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

</body>
</html>