<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 공지사항 고객 글 보기 </title>
</head>
<body>
	<table width="700" cellpadding="0" cellspacing="0" border="1">
		<form method="post">
			<input type="hidden" name="b_no" value="${noticeUserContent.b_no}">		
			<input type="hidden" name="b_code" value="${noticeUserContent.b_code}">
			<input type="hidden" name="bid" value="${noticeUserContent.b_no}">
			<tr>
				<td> No. </td>
				<td> ${noticeUserContent.b_no} </td>
			</tr>
			<tr>
				<td> 조회수 </td>
				<td> ${noticeUserContent.b_hit} </td>
			</tr>
			<tr>
				<td> 등록일 </td>
				<td> ${noticeUserContent.b_date} </td>
			</tr>
			<tr>
				<td> 작성자 </td>
				<td> ${noticeUserContent.member_id} </td>
			</tr>
			<tr>
				<td> 제목 </td>
				<td> <input type="text" name="b_title" value="${noticeUserContent.b_title}"></td>
			</tr>
			<tr>
				<td> 내용 </td>
				<td> <textarea rows="10" name="b_contents" >${noticeUserContent.b_contents}</textarea></td>
			</tr>
			<tr >
				<td colspan="2">
				&nbsp;&nbsp;<a href="userlist">목록보기</a> 
			</tr>
		</form>
	</table>
</body>
</html>