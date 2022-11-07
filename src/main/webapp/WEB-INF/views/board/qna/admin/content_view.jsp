<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">


<title>Q&A 관리자 글 보기</title>



<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>



<script>
	function calc() {
		document.getElementById('result').value = document
				.getElementById('b_answer').value.length;
	}
</script>
<style type="text/css">
#warp {
	text-align: center;
	font-size: 40px;
	background: url(../기어.png);
	background-size: cover;
}

#footbar {
	text-align: center;
}

#foottxt {
	color: gray;
	line-height: 30px;
	font-size: 15px;
}
.bar{
	background-color: rgb(235, 235, 235);
	padding-left: 20px;
	
}
.cont{
	padding-left: 20px;
	
}

</style>
</head>
<body>

<div class="container col-12" id="headbar" style="background: gray;">
		<div class="row">
			<div class="col-3">
				<a id="headlogo" href="/adminmain"><img src="../투명로고.png"
					height="100em"></a>
			</div>

			<table class="col-4" id="headerpotal">

			</table>

			<div class="col-2"></div>
			<div id="headlogin" class="col-2"></div>
		</div>
	</div>



	<div class="container col-12">
		<div class="row">
			<div id="warp" class="col-2" style="margin: 1em 0;">
				<table style="width: 100%; background-color: white; opacity: 0.7;" border="5px solid black;">
					<tr style="border: 1px solid black; height: 120px;">
						<td><a href="../admin/list" style="text-decoration: none; color: black;">회원정보 관리</a></td>
					</tr>
					<tr style="border: 1px solid black; height: 120px;">
						<td><a href="../admin/carlist" style="text-decoration: none; color: black;">차량 관리</a></td>
					</tr>
					<tr style="border: 1px solid black; height: 120px;">
						<td><a href="../admin/rentscheck" style="text-decoration: none; color: black;">예약 관리</a></td>
					</tr>
					<tr style="border: 1px solid black; height: 120px;">
						<td><a href="../admin/transEdit" style="text-decoration: none; color: black;">통계 관리</a></td>
					</tr>
					<tr style="border: 1px solid black; height: 120px;">
						<td><a href="../admin/arealist" style="text-decoration: none; color: black;">지역정보 관리</a></td>
					</tr>
					<tr style="border: 1px solid black; height: 120px;">
						<td><a href="/adminCustommerService" style="text-decoration: none; color: black;">고객지원 관리</a></td>
					</tr>
					<tr style="border: 1px solid black; height: 120px;">
						<td><a href="/review/adminList" style="text-decoration: none; color: black;">후기 관리</a></td>
					</tr>
				</table>
			</div>
			<div class="col-10" style="border-left: 5px solid gray;">

	<tr>
		<h1 style="text-align: center; margin: 60px; auto">관리자 답변란</h1>
	</tr>
	<table style="width: 1000px; height: 800px; margin: 30px auto;" cellpadding="0" cellspacing="0" border="1">
		<form action="/qna/adminAnswer" method="post">
			<input type="hidden" name="b_no" value="${qnaAdminContent.b_no}">
			<input type="hidden" name="user_id"
				value="${qnaAdminContent.user_id}"> <input type="hidden"
				name="b_code" value="${qnaAdminContent.b_code}"> <input
				type="hidden" name="bid" value="${qnaAdminContent.b_no}">
			<tr>
				<td class="bar">No.</td>
				<td class="cont">${qnaAdminContent.b_no}</td>
			</tr>
			<tr>
				<td class="bar">조회수</td>
				<td class="cont">${qnaAdminContent.b_hit}</td>
			</tr>
			<tr>
				<td class="bar">등록일</td>
				<td class="cont">${qnaAdminContent.b_date}</td>
			</tr>
			<tr>
				<td class="bar">작성자</td>
				<td class="cont">${qnaAdminContent.member_id}xx</td>
			</tr>
			<tr>
				<td class="bar">제목</td>
				<td class="cont"><p  style="width: 90%; height: 90%; font-size: 30px;" type="text" name="b_title"
					>${qnaAdminContent.b_title}</p></td>
			</tr>
			<tr>
				<td class="bar">내용</td>
				<td class="cont"><p style="width: 95%; height: 95%; font-size: 30px;" rows="10" name="b_contents">${qnaAdminContent.b_contents}</p></td>
			</tr>
			<tr>
				<td class="bar">답변</td>
				<td class="cont"><textarea style="width: 95%; height: 85%; font-size: 30px;" rows="10" name="b_answer" id="b_answer" rows="10"
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
				</div>
		</div>
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