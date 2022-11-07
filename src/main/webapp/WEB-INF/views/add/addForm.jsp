<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- C태그 쓰기 위해 넣은 taglib므로 반드시 확인 --> 

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

   <title>write</title>
   <style type="text/css">
   @font-face {
	font-family: 'tway_sky';
	src: url("../tway_sky.ttf");
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
      .tHeight{
      		height: 150px;
      }
	   .name{
			width: 150px;
			border-bottom: 1px solid gray;
	 		background-color: rgb(235, 235, 235);
	 		border-top: 1px solid gray;
	 		text-align: center;
	   }
	   .cont{
	   	border-bottom: 1px solid gray;
	   	border-top: 1px solid gray;
	   }
	   .box{
	   		height: 40px;
	   		font-size: 15px;
	   		width: 300px;
	   }
   
   </style>
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
					<!-- <td class="col-2"><a href="#"><img src="마이페이지.png" width="100em"></a></td>
					<td class="col-2"><a href="#"><img src="예약.png" width="100em"></a></td>
					<td class="col-2"><a href="#"><img src="고객지원.png" width="100em"></a></td>
					<td class="col-2"><a href="#"><img src="후기.png" width="100em"></a></td>  -->
					<td><a href="/user/userHome"
						style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">마이페이지</a></td>
					<td>
						<sec:authorize access="isAnonymous()">
					<a href="/login"
						style="text-decoration: none; color: black; font-size: 1.5em; font-weight: 900; width: 100px;">예약</a>
					
					</sec:authorize>
					<sec:authorize access="isAuthenticated()">
					<a href="/rez/reserve"
						style="text-decoration: none; color: black; font-size: 1.5em; font-weight: 900; width: 100px;">예약</a>
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

<h3 style="text-align: center; font-size: 40px; padding: 30px 0;">간편 회원가입</h3>
<table style="margin: 20px auto; font-size: 20px; width: 700px; text-align: left; color: rgb(70, 70, 70);"  cellpadding="10px" cellspacing="0">
      <form action="insert" method="get">
         <tr class="tHeight">
            <td class="name"> 아이디 </td>
            <td class="cont"> <input class="box" type="text" name="user_id" size = "10"> </td>
         </tr>
         <tr class="tHeight">
            <td class="name"> 비밀번호 </td>
            <td class="cont"> <input class="box"  type="password" name="user_pw" size = "10" style="font-family: serif;"> </td>
         </tr>
         <tr class="tHeight">
            <td class="name"> 이름 </td>
            <td class="cont"> <input class="box"  type="text" name="user_name" size = "10"> </td>
         </tr>
         <tr class="tHeight">
            <td class="name"> 전화번호 </td>
            <td class="cont"> <input class="box"  type="text" name="user_phone_number" size = "10"> </td>
         </tr>
         <tr class="tHeight">
            <td class="name"> 나이 </td>
            <td class="cont"> <input class="box"  type="text" name="user_age" size = "10"> </td>
         </tr>
         <tr class="tHeight">
            <td class="name"> 이메일 </td>
            <td class="cont"> <input class="box"  type="text" name="user_email" size = "50"> </td>
         </tr>
         <tr class="tHeight">
            <td colspan="2" style="text-align: center;"> <input class="box" type="submit" value="가입"> &nbsp;&nbsp;</a></td>
         </tr>
      </form>
        </table>
        
        
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