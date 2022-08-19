<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
    <title>Home | E-Shopper</title>
    
    	<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
	
	
	
	<style type="text/css">
		@font-face {
			font-family: 'tway_sky';
			src: url("./tway_sky.ttf");
			font-weight: 400;
		}
		
		*{
			font-family: 'tway_sky';
		}
		#headlogin2{
			text-align: center;
			line-height: 4em;
			
		}
		
		
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
			line-height: 3em;
			font-size: 1.5em;
		}
	</style>
</head><!--/head-->

<body>
<div class="container col-12" id="headbar" style="border-bottom: 3px solid black;">
		<div class="row">
			<div class="col-3"><a id="headlogo" href="/main"><img src="투명로고.png" height="100em"></a></div>
			
			<table  class="col-4" id="headerpotal">
				<tr>
					<!-- <td class="col-2"><a href="#"><img src="마이페이지.png" width="100em"></a></td>
					<td class="col-2"><a href="#"><img src="예약.png" width="100em"></a></td>
					<td class="col-2"><a href="#"><img src="고객지원.png" width="100em"></a></td>
					<td class="col-2"><a href="#"><img src="후기.png" width="100em"></a></td>  -->
					<td ><a href="#" style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">마이페이지</a></td>
					<td ><a href="#" style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">예약</a></td>
					<td><a href="#" style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">고객지원</a></td>
					<td ><a href="#" style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">후기</a></td>
					<td ><a href="/member/eventlist" style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">이벤트</a></td>
				</tr>
			</table>
			
			<div class="col-2">
				
			</div>
				<sec:authorize access="isAnonymous()">
				<div id="headlogin" class="col-2">
					<a href="#" style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">로그인</a>
					<span style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">|</span>
					<a href="#" style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">회원가입</a>
				</div>
				</sec:authorize>
				<sec:authorize access="isAuthenticated()">
				<div id="headlogin2" class="col-2">
					<span  style="text-decoration: none; color: black; font-size: 10px; font-weight: 900; width: 100px;"><sec:authentication property="principal.username"/>님 환영합니다.</span>
					<a href="${pageContext.request.contextPath}/logout" style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">로그아웃</a>
				</div>
				</sec:authorize>
			</div>
		</div>
</div>
	
		
	
	
	
	
	
	<footer id="footbar" style="background-color: black;">
		
		<div class="container col-11">
			<div class="row">
				<div class="col-3"><img src="회색로고.png" height="100em" width="100em"></div>
				<div id="foottxt" class="col-9">
					<div>프로젝트 가볼카 | 대표이사: 정다은 | 제주도 가볼길 001호</div>
					<div>사업자등록번호 : 010-11-11122 | 통신판매신고번호: 제2022-제주서귀포-0001호 | TEL: 1111-1111 | Fax:000-000-0000 | Project@Gavolcar.co.kr</div>
					<div>COPYRIGHT©GAVOLCAR.ALL.RIGHTS.RESERVED</div>
					
				</div>
			</div>
		</div>

	</footer><!--/Footer-->
	

  
    <script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/price-range.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
</body>
</html>