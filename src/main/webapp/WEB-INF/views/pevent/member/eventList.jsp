<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!-- C태그 쓰기 위해 넣은 taglib므로 반드시 확인 --> 
  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		var memberName = "<sec:authentication property='principal.username'/>";
		console.log(memberName);
		$("#go").html("<a href='/pevent_view_user?user_id=memberName'> 포인트 이벤트</a>");
	});
</script>



</head>
<body>
<h1>이벤트 리스트</h1>
	
	<div id="go"></div>
<p>principal: <sec:authentication property="principal.username"/>님 환영합니다.</p>
</body>
</html>