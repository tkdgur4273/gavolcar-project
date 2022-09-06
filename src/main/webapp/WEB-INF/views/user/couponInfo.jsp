<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    
	<title>쿠폰 페이지</title>
	<style type="text/css">
		#main{
			text-align: center;
		}
		.tHeight{
		 	height: 50px;
		 }
	   .name{
			width: 200px;
			border-bottom: 1px solid gray;
			border-top: 1px solid gray;
	 		background-color: rgb(235, 235, 235);
	   }
	   .cont{
	   	border-bottom: 1px solid gray;
	   	border-top: 1px solid gray;
	   }
   </style>
</head>

<body>
<div class="container col-12" id="headbar"
		style="border-bottom: 3px solid black;">
		<div class="row">
			<div class="col-3">
				<a id="headlogo"><img src="../투명로고.png"
					height="100em"></a>
			</div>
		</div>
	</div>


<div id="main">
<h1>쿠폰 확인</h1>
<p style="font-size: 35px;"><sec:authentication property="principal.username"/>님이 보유하신 쿠폰 정보</p>
<table style="margin: 20px auto; font-size: 20px; width: 500px; text-align: left; color: rgb(70, 70, 70);"  cellpadding="10px" cellspacing="0">
<c:forEach var="coupon" items="${list}">
	<tr class="tHeight">
		<td class="name">${coupon.coupon_name}
		</td>
		<td class="cont">${coupon.coupon_contents}
		</td>
	</tr>
</c:forEach>
</table>
</div>



</body>
</html>
