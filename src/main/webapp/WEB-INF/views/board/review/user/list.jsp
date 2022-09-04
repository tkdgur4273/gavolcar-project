<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>후기 고객 게시판</title>
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
	margin: 30px auto;
	border-radius: 25px;
}
#table{
	width: 1200px;;
}


</style>
</head>
<body>

<div id="main">
<div id="tableTitle">후기 게시판</div>
	<table id="table" width="600" style=" margin: 30px auto;text-align: center; border-spacing: 0px;">

		<tr style=" height: 50px;font-size: 25px;">
			<td style=" border-bottom: 4px solid black; border-top:  4px solid black;">번호</td>
			<td style=" border-bottom: 4px solid black; border-top:  4px solid black;">제목</td>
			<td style=" border-bottom: 4px solid black; border-top:  4px solid black;">차종</td>
			<td style=" border-bottom: 4px solid black; border-top:  4px solid black;">작성자</td>
			<td style=" border-bottom: 4px solid black; border-top:  4px solid black;">등록일</td>
			<td style=" border-bottom: 4px solid black; border-top:  4px solid black;">조회수</td>
		</tr>

		<!--이때 list는 BListCommand에서 메모리에 올린 list를 뜻함. 포워딩시까지 살아있으므로-->
		<!--forEach문을 이용해 데이터를 꺼낼 수 있다.-->
		<c:forEach var="board" items="${reviewUserList}">
			<tr style="height: 50px; font-size: 20px;">
				<td width="60px;" style="border-bottom:2px solid gray;">${board.b_no}</td>
				<td width="700px;" style="text-align: left;border-bottom:2px solid gray;"><a href="/review/userContent?b_no=${board.b_no}" style="text-decoration: none;">${board.b_title}</a>
				</td>
				<td style="border-bottom:2px solid gray;">${board.car_type}</td>
				<td style="border-bottom:2px solid gray;">${board.member_id}**</td>
				<td style="border-bottom:2px solid gray;">${board.b_date}</td>
				<td style="border-bottom:2px solid gray;">${board.b_hit}</td>

			</tr>
		</c:forEach>


		<tr height="70px" style="font-size: 25px;">
			
			<sec:authorize access="isAuthenticated()">
				<td colspan="8" style=" border-bottom: 4px solid black; border-top:  4px solid black;"><a href="/review/chooseCar?user_id=<sec:authentication property='principal.username'/>" style="text-decoration: none;">글 작성</a></td>
			</sec:authorize>
			<sec:authorize access="isAnonymous()">
				<td colspan="8"  style=" border-bottom: 4px solid black; border-top:  4px solid black;"><a href="/login" style="text-decoration: none;" >글 작성</a></td>
			</sec:authorize>
		</tr>
		
		
		
		
		
		
	</table>
<div style="text-align: center; margin: 0 auto; font-size: 30px;">
	<c:if test="${pageMaker.prev}">
		<a
			href="/review/userList${pageMaker.makeQuery(pageMaker.startPage - 1) }">«</a>
	</c:if>

	<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }"
		var="idx">
		<c:out value="${pageMaker.cri.pageNum == idx?'':''}" />
		<a href="/review/userList${pageMaker.makeQuery(idx)}">${idx}</a>
	</c:forEach>

	<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
		<a
			href="/review/userList${pageMaker.makeQuery(pageMaker.endPage +1) }">
			» </a>
	</c:if>
	</div>
	<br>
</div>
</body>
</html>