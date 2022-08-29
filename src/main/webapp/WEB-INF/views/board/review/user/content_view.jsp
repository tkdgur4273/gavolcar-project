<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>후기 고객 글보기</title>
</head>
<body>
	<table width="700" cellpadding="0" cellspacing="0" border="1">
		<form action="/review/usermodify" method="post">
			<input type="hidden" name="b_no" value="${reviewUserContent.b_no}">
			<input type="hidden" name="user_id"
				value="${reviewUserContent.user_id}"> <input type="hidden"
				name="b_code" value="${reviewUserContent.b_code}"> <input
				type="hidden" name="bid" value="${reviewUserContent.b_no}">
			<input type="hidden" name="car_type"
				value="${reviewUserContent.car_type}">
			<tr>
				<td>No.</td>
				<td>${reviewUserContent.b_no}</td>
			</tr>
			<tr>
				<td>조회수</td>
				<td>${reviewUserContent.b_hit}</td>
			</tr>
			<tr>
				<td>등록일</td>
				<td>${reviewUserContent.b_date}</td>
			</tr>
			<tr>
				<td>작성자</td>
				<td>${reviewUserContent.member_id}**</td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input type="text" name="b_title"
					value="${reviewUserContent.b_title}"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea rows="10" name="b_contents">${reviewUserContent.b_contents}</textarea></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="수정">
					&nbsp;&nbsp;<a href="userlist">목록보기</a>
			</tr>
		</form>
	</table>
</body>
</html>