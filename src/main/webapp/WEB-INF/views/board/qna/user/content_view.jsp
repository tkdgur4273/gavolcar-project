<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

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


<title>Q&A 고객 글 보기</title>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	<sec:authorize access="isAuthenticated()">
		if("${qnaUserContent.user_id}"!="<sec:authentication property='principal.username'/>"){
			$("#modify").html("<a href='userList'>목록보기</a>");
		};
	</sec:authorize>
	<sec:authorize access="isAnonymous()">
		$("#modify").html("<a href='userList'>목록보기</a>");
	</sec:authorize>
});
</script>
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
#main{
	padding: 60px;
}
#tableTitle{
	width: 1100px;
	height: 50px;
	line-height: 50px;
	font-size: 50px;
	font-weight: 900;
	text-align: left;
	margin: 20px auto;
	border-radius: 25px;
}
#table{
	width: 1200px;
	background-color: rgba(255, 255, 255);
	margin: 0 auto;
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



<div id="main">
<div id="tableTitle">QnA 게시판</div>
	<table id="table" width="700" cellpadding="0" cellspacing="0">
		<form action="/qna/userModify" method="post">
			<input type="hidden" name="b_no" value="${qnaUserContent.b_no}">
			<input type="hidden" name="user_id" value="${qnaUserContent.user_id}">
			<input type="hidden" name="b_code" value="${qnaUserContent.b_code}">
			<input type="hidden" name="bid" value="${qnaUserContent.b_no}">
			<tr>
				<td style=" border-bottom: 4px solid black; border-top:  4px solid black;"><input type="text" name="b_title"
					value="${qnaUserContent.b_title}" style="font-size: 40px;height: 70px"></td>
					<td style=" border-bottom: 4px solid black; border-top:  4px solid black;">${qnaUserContent.member_id}** | ${qnaUserContent.b_date} | ${qnaUserContent.b_hit}
					</td>
				
			</tr>
			<tr>
				<td colspan="2"><textarea style="width: 1200px; height: 400px; font-size: 25px;" rows="10" name="b_contents">${qnaUserContent.b_contents} </textarea></td>
			</tr>
			<tr>
				<td colspan="2" style="font-size: 30px; font-weight: 900; border-bottom: 4px solid black; border-top:  4px solid black;">관리자의 답변</td>
			</tr>
			<tr>
				<td colspan="2"><textarea style="width: 1200px; height: 200px; font-size: 25px;" rows="10" name="b_answer">${qnaUserContent.b_answer} </textarea></td>
			</tr>
			<tr>
				<td colspan="2" id="modify"><input type="submit" value="수정" style="font-size: 30px;">
					&nbsp;&nbsp;<a href="userList"style="text-decoration: none; font-size: 30px;">목록보기</a> &nbsp;&nbsp;<a
					href="/qna/userRemove?b_no=${qnaUserContent.b_no}" style="text-decoration: none; font-size: 30px;">삭제</a>
			</tr>
		</form>
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