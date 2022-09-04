<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 공지사항 고객 글 보기 </title>
<style type="text/css">
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
<div id="tableTitle">공지사항 게시판</div>
	<table id="table" width="700" cellpadding="0" cellspacing="0">
		<form method="post">
			<input type="hidden" name="b_no" value="${noticeUserContent.b_no}">		
			<input type="hidden" name="b_code" value="${noticeUserContent.b_code}">
			<input type="hidden" name="bid" value="${noticeUserContent.b_no}">
			<tr>
				<td style=" border-bottom: 4px solid black; border-top:  4px solid black;"><input type="text" name="b_title"
					value="${noticeUserContent.b_title}" style="font-size: 40px;height: 70px"></td>
					<td style=" border-bottom: 4px solid black; border-top:  4px solid black;">${noticeUserContent.member_id}** | ${noticeUserContent.b_date} | ${noticeUserContent.b_hit}
					</td>
				
			</tr>
			<tr>
				
				<td colspan="2" > <textarea style="width: 1200px; height: 400px; font-size: 25px;" rows="10" name="b_contents" >${noticeUserContent.b_contents}</textarea></td>
			</tr>
			<tr >
				<td colspan="2">
				&nbsp;&nbsp;<a href="userList" style="text-decoration: none; font-size: 30px;">목록보기</a> 
			</tr>
		</form>
	</table>
</body>
</html>