<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>후기 고객 게시글 작성</title>
<script>
	function calc() {
		document.getElementById('result').value = document
				.getElementById('b_contents').value.length;
	}
</script>
<script type="text/javascript">
	$(document).ready(function(){
		var name = "<sec:authentication property='principal.username'/>";
		$(".name").val(name);
	})
	
</script>
</head>
<body>
	<table width="500" cellpadding="0" cellspacing="0" border="1">
		<form action="/review/userwrite" method="post">
			<input class="name" type="hidden" name="member_id" value=""> <input
				 class="name" type="hidden" name="user_id" value=""> <input
				type="hidden" name="car_type" value="${cars.car_type}">
			<tr>
				<td>제목</td>
				<td><input type="text" name="b_title" size="50"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea name="b_contents" id="b_contents" rows="10"
						onkeyup="calc()" onkeydown="calc()" onkeypass="calc()"></textarea>
					<br> <input type="number" id="result" value="0" readonly
					style="boarder: none">/300</td>

			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="입력"> <a
					href="/review/userlist">목록보기</a></td>
			</tr>
		</form>
	</table>
</body>
</html>