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
<title>QnA 작성</title>
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
<div id="tableTitle">후기작성</div>
	<table id="table" width="500" cellpadding="0" cellspacing="0">
		<form action="/qna/userWrite" method="post">
			<input class="name" type="hidden" name="member_id" value=""> <input
				 class="name" type="hidden" name="user_id" value="">
			<tr>
				<td style=" border-bottom: 4px solid black; border-top:  4px solid black;font-size: 30px;">제목</td>
				<td style=" border-bottom: 4px solid black; border-top:  4px solid black;"><input type="text" name="b_title"  style="font-size: 50px;"></td>
			</tr>
			<tr>
				<td style="font-size: 30px;">내용</td>
				<td><textarea name="b_contents" id="b_contents" rows="10"
						onkeyup="calc()" onkeydown="calc()" onkeypass="calc()"  style="width: 1200px; height: 600px;" rows="10" name="b_contents"></textarea>
					<br> <input type="number" id="result" value="0" readonly
					style="boarder: none">/300</td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="입력"> <a
					href="/qna/userList">목록보기</a></td>
			</tr>
		</form>
	</table>
	</div>
</body>
</html>