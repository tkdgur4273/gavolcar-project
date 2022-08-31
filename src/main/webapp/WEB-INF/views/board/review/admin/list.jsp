<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>후기 관리자 게시판</title>
</head>
<body>
	<table width="600" border="1">

		<tr>
			<td>No.</td>
			<td>제목</td>
			<td>내용</td>
			<td>차종</td>
			<td>차량번호</td>
			<td>작성자</td>
			<td>등록일</td>
			<td>숨기기</td>

		</tr>

		<!--이때 list는 BListCommand에서 메모리에 올린 list를 뜻함. 포워딩시까지 살아있으므로-->
		<!--forEach문을 이용해 데이터를 꺼낼 수 있다.-->
		<c:forEach var="board" items="${reviewAdminList}">
			<tr>
				<td>${board.b_no}</td>
				<td><a href="/review/adminContent?b_no=${board.b_no}">${board.b_title}</a>
				</td>
				<td>${board.b_contents}</td>
				<td>${board.car_type}</td>
				<td>${board.car_type}</td>
				<td>${board.user_id}</td>
				<td>${board.b_date}</td>
				<td colspan="2">&nbsp;&nbsp;<a
					href="/review/adminHidden?b_no=${board.b_no}">숨기기</a>
			</tr>
		</c:forEach>

	</table>

	<c:if test="${pageMaker.prev}">
		<a
			href="/review/adminList${pageMaker.makeQuery(pageMaker.startPage - 1) }">«</a>
	</c:if>

	<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }"
		var="idx">
		<c:out value="${pageMaker.cri.pageNum == idx?'':''}" />
		<a href="/review/adminList${pageMaker.makeQuery(idx)}">${idx}</a>
	</c:forEach>

	<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
		<a
			href="/review/adminList${pageMaker.makeQuery(pageMaker.endPage +1) }">
			» </a>
	</c:if>
	<br>

</body>
</html>