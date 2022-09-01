<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>후기 고객 글보기</title>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	<sec:authorize access="isAuthenticated()">
		if("${reviewUserContent.user_id}"!="<sec:authentication property='principal.username'/>"){
			$("#modify").html("<a href='userList'>목록보기</a>");
		};
	</sec:authorize>
	<sec:authorize access="isAnonymous()">
		$("#modify").html("<a href='userList'>목록보기</a>");
	</sec:authorize>
});
</script>
<style type="text/css">
#main{
	padding: 60px;
}
#tableTitle{
	width: 1100px;
	height: 50px;
	line-height: 50px;
	font-size: 30px;
	font-weight: 900;
	text-align: left;
	margin: 0 auto;
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

<div id="main">
<div id="tableTitle">후기 게시판</div>

	<table id="table" width="700" cellpadding="0" cellspacing="0">
		<form action="/review/userModify" method="post">
			<input type="hidden" name="b_no" value="${reviewUserContent.b_no}">
			<input type="hidden" name="user_id"
				value="${reviewUserContent.user_id}"> <input type="hidden"
				name="b_code" value="${reviewUserContent.b_code}"> <input
				type="hidden" name="bid" value="${reviewUserContent.b_no}">
			<input type="hidden" name="car_type"
				value="${reviewUserContent.car_type}">
				
			
			<tr>
				<td style=" border-bottom: 4px solid black; border-top:  4px solid black;"><input type="text" name="b_title"
					value="${reviewUserContent.b_title}" style="font-size: 50px;"></td>
					<td style=" border-bottom: 4px solid black; border-top:  4px solid black;">${reviewUserContent.member_id}** | ${reviewUserContent.b_date} | ${reviewUserContent.b_hit}
					</td>
				
			</tr>
			
			
			
			<tr>
				<td colspan="2"><textarea style="width: 1200px; height: 600px;" rows="10" name="b_contents">${reviewUserContent.b_contents}</textarea></td>
			</tr>
			<tr>
				<td id="modify"  colspan="2">
					<input type='submit' value='수정'><a href='userList'>목록보기</a>
				</td>
			</tr>
		</form>
	</table>
	</div>
</body>
</html>