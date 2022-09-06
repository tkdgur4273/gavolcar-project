<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- C태그 쓰기 위해 넣은 taglib므로 반드시 확인 --> 

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
   <title>info</title>
   
   <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
   
   

<style type="text/css">
#warp {
	text-align: center;
	font-size: 40px;
	background: url(../기어.png);
	background-size: cover;
}

#footbar {
	text-align: center;
}

#foottxt {
	color: gray;
	line-height: 30px;
	font-size: 15px;
}
.bar{
	background-color: rgb(235, 235, 235);
	padding-left: 20px;
	
}
.cont{
	padding-left: 20px;
	
}

</style>
</head>
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
				<table style="width: 287px; background-color: white; opacity: 0.7;" border="5px solid black;">
					<tr style="border: 1px solid black; height: 120px;">
						<td><a href="../admin/list" style="text-decoration: none; color: black; wid">회원정보 관리</a></td>
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
						<td><a href="/adminCustommerService" style="text-decoration: none; color: black;">고객지원 관리</a></td>
					</tr>
					<tr style="border: 1px solid black; height: 120px;">
						<td><a href="/review/adminList" style="text-decoration: none; color: black;">후기 관리</a></td>
					</tr>
				</table>
			</div>
			<div class="col-10" style="border-left: 5px solid gray;">
<h3 style="margin: 60px auto; width: 950px;">회원상세정보</h3>
  <table style="width: 1000px; height: 400px; margin: 30px auto;" cellpadding="0" cellspacing="0" border="1">
      <form action="modify" method="get">
         <input type="hidden" name="user_id" value="${info.user_id}">
         <tr>
            <td class="bar"> 아이디 </td>
            <td class="cont"> ${info.user_id} </td>
         </tr>
         <tr>
            <td class="bar"> 비밀번호 </td>
            <td class="cont"> <input style="width: 90%; height: 90%;" type="password" name="user_pw" value="${info.user_pw}"> </td>
         </tr>
         <tr>
            <td class="bar"> 이름 </td>
            <td class="cont"> <input style="width: 90%; height: 90%;" type="text" name="user_name" value="${info.user_name}"></td>
         </tr>
         <tr>
            <td class="bar"> 전화번호 </td>
            <td class="cont"> <input style="width: 90%; height: 90%;" type="text" name="user_phone_number" value="${info.user_phone_number}"></td>
         </tr>
         <tr>
            <td class="bar"> 나이 </td>
            <td class="cont"> <input style="width: 90%; height: 90%;" type="text" name="user_age" value="${info.user_age}"></td>
         </tr>
         <tr>
            <td class="bar"> 이메일 </td>
            <td class="cont"> <input style="width: 90%; height: 90%;" type="text" name="user_email" value="${info.user_email}"></td>
         </tr>
         <tr  height="45px;">
            <td colspan="2"> <input style="width: 60px; height: 40px;" type="submit" value="수정"> 
            &nbsp;&nbsp;<a href="delete?user_id=${info.user_id}">삭제</a> 
            &nbsp;&nbsp; <a href="list">목록보기</a> 
            
         </tr><!--&nbsp; : 공백주는 것  -->
      </form>
   </table>
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
</body>
</html>