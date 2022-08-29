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
</head>
<body>
	<table width="600" border="1">

		<tr>
			<td>No.</td>
			<td>제목</td>
			<td>차종</td>
			<td>작성자</td>
			<td>등록일</td>
			<td>조회수</td>
		</tr>

		<!--이때 list는 BListCommand에서 메모리에 올린 list를 뜻함. 포워딩시까지 살아있으므로-->
		<!--forEach문을 이용해 데이터를 꺼낼 수 있다.-->
		<c:forEach var="board" items="${reviewUserList}">
			<tr>
				<td>${board.b_no}</td>
				<td><a href="/review/usercontent?b_no=${board.b_no}">${board.b_title}</a>
				</td>
				<td>${board.car_type}</td>
				<td>${board.member_id}**</td>
				<td>${board.b_date}</td>
				<td>${board.b_hit}</td>

			</tr>
		</c:forEach>


		<tr>
			
			<sec:authorize access="isAuthenticated()">
				<td colspan="8"><a href="/review/chooseCar?user_id=<sec:authentication property='principal.username'/>">글 작성</a></td>
			</sec:authorize>
			<sec:authorize access="isAnonymous()">
				<td colspan="8"><a href="/login">글 작성</a></td>
			</sec:authorize>
		</tr>
		
		
		
		
		
		
	</table>

	<c:if test="${pageMaker.prev}">
		<a
			href="/review/userlist${pageMaker.makeQuery(pageMaker.startPage - 1) }">«</a>
	</c:if>

	<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }"
		var="idx">
		<c:out value="${pageMaker.cri.pageNum == idx?'':''}" />
		<a href="/review/userlist${pageMaker.makeQuery(idx)}">${idx}</a>
	</c:forEach>

	<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
		<a
			href="/review/userlist${pageMaker.makeQuery(pageMaker.endPage +1) }">
			» </a>
	</c:if>
	<br>

</body>
</html>