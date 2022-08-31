<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>후기 관리자 글 보기</title>
</head>
<body>
	<table width="700" cellpadding="0" cellspacing="0" border="1">
		<form method="post">
			<input type="hidden" name="b_no" value="${reviewAdminContent.b_no}">
			<input type="hidden" name="user_id"
				value="${reviewAdminContent.user_id}"> <input type="hidden"
				name="b_code" value="${reviewAdminContent.b_code}"> <input
				type="hidden" name="bid" value="${reviewAdminContent.b_no}">
			<tr>
				<td>No.</td>
				<td>${reviewAdminContent.b_no}</td>
			</tr>
			<tr>
				<td>조회수</td>
				<td>${review_AdminContent.b_hit}</td>
			</tr>
			<tr>
				<td>등록일</td>
				<td>${review_AdminContent.b_date}</td>
			</tr>
			<tr>
				<td>관리자</td>
				<td>${review_AdminContent.member_id}</td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input type="text" name="b_title"
					value="${reviewAdminContent.b_title}"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea rows="10" name="b_contents">${reviewAdminContent.b_contents}</textarea></td>
			</tr>
			<tr>
				<td colspan="2">&nbsp;&nbsp;<a href="/review/adminList">목록보기</a>
			</tr>
		</form>
	</table>
</body>
</html>