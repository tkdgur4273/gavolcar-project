<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!-- C태그 쓰기 위해 넣은 taglib므로 반드시 확인 --> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원검색</title>



<script type="text/javascript">
//$(function() {
	// 회원 조회 검색창 아직 미완성
	//$('#searchOrderBtn').on('click', function(){
	    //var queryString = $("form[name=opForm]").serialize();	    
	   // var keyWord = $('#oKeyWord').val();
	  //  $('#opForm').attr('action', '/rez/user_search.do').submit();
	//});

    // input text에서 엔터키 누르면 submit 되는 것 방지
   // $("input[type='text']").keydown(function(e){
     //   if(e.keyCode === 13)
         //   e.preventDefault();
   // });
//});

// 부모창의 function setOrdNumber 에 값을 전달
function setCustomer(uid, uname, uage, uhp, uemail){
	opener.setCustomer(uid, uname, uage, uhp, uemail);
	
	window.close();
}

function goPage(page) {
    document.opForm.page.value = page; 
    opForm.action = "/rez/user_search.do";
    opForm.submit();
}


</script> 
<body>
<div>
        <!-- 바디 시작, 이 div 내부를 이용하면 됨 -->
        <div>
        <h3>회원조회</h3>
	    <form id="opForm" name="opForm" method="post">
	    <input type="hidden" name="page" id="page" value="${sform.page}">
	    <br>
	    <!-- 검색기능 미구현
	    <input type="text" name="keyWord" id="oKeyWord" size="30">
	    &nbsp;&nbsp;&nbsp;&nbsp;
	    <button type="button" id="searchOrderBtn" class="btn btn-default btn-sm">검색</button>-->
	    <div><br></div>
	    
	    <table class="table table-bordered" style="width:90%;">
	        <thead>
		        <tr>
		            <td>아이디</td>
        			<td>이름</td>
        			<td>나이</td>
        			<td>핸드폰번호</td>
        			<td>이메일</td>      
		        </tr>
	        </thead>
	        <c:forEach var="urio" items="${getRentsUsersList}">
	            <tr>
    	            <td><a href="javascript:setCustomer('${urio.user_id}', '${urio.user_name}', '${urio.user_age}', '${urio.user_phone_number}','${urio.user_email}')">${urio.user_id}</a></td>
    	            <td>${urio.user_name}</td>	
    	            <td>${urio.user_age}</td>
    	            <td>${urio.user_phone_number}</td>  
    	            <td>${urio.user_email}</td>      	             
	            </tr>
	        </c:forEach>
	    </table>
        
	    </form>
    </div>
    
        
</body>
</html>