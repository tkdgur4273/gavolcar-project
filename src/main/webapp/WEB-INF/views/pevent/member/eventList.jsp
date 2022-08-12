<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
		#eventtable{
			
			border: 2px solid black;
			text-align: center;
			margin: auto;
		}
		#tablebase{
			margin: auto;
			line-height: 500em;
		}
		
		
	</style>

	<title>Insert title here</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			var memberName = "<sec:authentication property='principal.username'/>";
			console.log(memberName);
			$("#go").html("<a class='row' href='/pevent_view_user?user_id=memberName'><span style='width: 50em;'><h1 style='line-height: 10em;'>(이벤트)여름에는 놀러가자! 포인트 대 축제</h1></span><img src='../자동차1.jpg' width='500em'></a>");
			$("#go2").html("<a class='row' href='/cevent_view_user?user_id=memberName'><span style='width: 50em;'><h1 style='line-height: 10em;'>(이벤트)후기쓰고 쿠폰받자!</h1></span><img src='../자동차1.jpg' width='500em'></a>");
			
		});
	</script>



	<sec:authorize access="isAuthenticated()">
		<form:form action="${pageContext.request.contextPath}/logout" method="POST">
	    	<input type="submit" value="로그아웃" />
		</form:form>
	</sec:authorize>


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
	<div class="container col-12">
		<div class="row">
			<div class="col-2" style="background-color: darkgray" >
				<div>gg</div>
			</div>
			<div id="tablebase" class="col-9" style="border: 1px solid black;">
				<div id="eventtable"  class="col-12">
							<div id="go"></div>
							<div id="go2"></div>
				</div>
			</div>
		</div>
	</div>

	
		<p>principal: <sec:authentication property="principal.username"/>님 환영합니다.</p>


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