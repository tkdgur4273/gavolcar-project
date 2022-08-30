<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 관리자 글 보기</title>
</head>
<body>
	<table width="700" cellpadding="0" cellspacing="0" border="1">
		<form action="/notice/adminmodify" method="post">
			<input type="hidden" name="b_no" value="${noticeAdminContent.b_no}">
			<input type="hidden" name="b_code"
				value="${noticeAdminContent.b_code}"> <input type="hidden"
				name="bid" value="${noticeAdminContent.b_no}">
			<tr>
				<td>No.</td>
				<td>${noticeAdminContent.b_no}</td>
			</tr>
			<tr>
				<td>조회수</td>
				<td>${noticeAdminContent.b_hit}</td>
			</tr>
			<tr>
				<td>등록일</td>
				<td>${noticeAdminContent.b_date}</td>
			</tr>
			<tr>
				<td>작성자</td>
				<td>${noticeAdminContent.member_id}</td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input type="text" name="b_title"
					value="${noticeAdminContent.b_title}"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea rows="10" name="b_contents">${noticeAdminContent.b_contents}</textarea></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="수정">
					&nbsp;&nbsp;<a href="adminlist">목록보기</a> &nbsp;&nbsp;<a
					href="/notice/adminremove?b_no=${noticeAdminContent.b_no}">삭제</a>
			</tr>
		</form>
	</table>
</body>
</html>