<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>로그인 페이지</title>
<style type="text/css">
#main{
	border: 4px solid black;
	border-radius: 90px;
	width: 600px;
	margin: 0 auto;
	text-align: center;
	padding: 100px 0;
	
	
}
</style>

</head>

<body onload="document.f.id.focus();">
<div id="main">
<a href="/main"><img src="투명로고.png" style="height: 10em; width: 15em;"></a>
<h3>아이디와 비밀번호를 입력해주세요.</h3>

<c:url value="/login" var="loginUrl" />


<form:form name="f" action="${loginUrl}" method="POST">
    <c:if test="${param.error != null}">
        <p>아이디와 비밀번호가 잘못되었습니다.</p>
    </c:if>
    <c:if test="${param.logout != null}">
        <p>로그아웃 하였습니다.</p>
    </c:if>
    <p>
        <label for="username" style="font-size: 22px;">아이디</label>
        <input type="text" id="username" name="username" style="height: 20px;" />
    </p>
    <p>
        <label for="password">비밀번호</label>
        <input type="password" id="password" name="password" style="height: 20px;"/>
    </p>
    <%-- <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> --%>
    <button type="submit" class="btn" style="width: 90px; height: 32px; font-size: 20px;">로그인</button>
    <input type="button" value="회원가입" class="btn" onclick="location.href='/add/addForm'" style="width: 110px; height: 32px; font-size: 20px;">
    <p style="height: 30px; text-align: 30px;">
     [간편 로그인]</p><p><a href="/oauth2/authorization/google"><img src="../구글.png" width="50px" height="50px"></a>
    
    </p>
   
</form:form>
</div>
</body>
</html>
