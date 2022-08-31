<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Q&A 관리자 글 보기</title>
<script>
	function calc() {
		document.getElementById('result').value = document
				.getElementById('b_answer').value.length;
	}
</script>
</head>
<body>
	<tr>
		<h1>관리자 답변란</h1>
	</tr>
	<table width="700" cellpadding="0" cellspacing="0" border="1">
		<form action="/qna/adminAnswer" method="post">
			<input type="hidden" name="b_no" value="${qnaAdminContent.b_no}">
			<input type="hidden" name="user_id"
				value="${qnaAdminContent.user_id}"> <input type="hidden"
				name="b_code" value="${qnaAdminContent.b_code}"> <input
				type="hidden" name="bid" value="${qnaAdminContent.b_no}">
			<tr>
				<td>No.</td>
				<td>${qnaAdminContent.b_no}</td>
			</tr>
			<tr>
				<td>조회수</td>
				<td>${qnaAdminContent.b_hit}</td>
			</tr>
			<tr>
				<td>등록일</td>
				<td>${qnaAdminContent.b_date}</td>
			</tr>
			<tr>
				<td>작성자</td>
				<td>${qnaAdminContent.member_id}</td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input type="text" name="b_title"
					value="${qnaAdminContent.b_title}"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea rows="10" name="b_contents">${qnaAdminContent.b_contents}</textarea></td>
			</tr>
			<tr>
				<td>답변</td>
				<td><textarea rows="10" name="b_answer" id="b_answer" rows="10"
						onkeyup="calc()" onkeydown="calc()" onkeypass="calc()">${qnaAdminContent.b_answer}</textarea>
					<br> <input type="number" id="result" value="0" readonly
					style="boarder: none">/800</td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="답변완료">
					&nbsp;&nbsp;<a href="/qna/adminList">목록보기</a>
			</tr>
		</form>
	</table>
</body>
</html>