<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- C태그 쓰기 위해 넣은 taglib므로 반드시 확인 --> 
  
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>






</head>
<body>
	<div id="pieChart_div"></div>
	<div id="chart_div"></div>
	

	<table border="1">
		<tr>
			<td width="50">번호</td>
			<td>이익</td>
			<td>차종</td>
			<td>대여일수</td>
			<td>수정</td>
			<td>데이터 삭제</td>		
		</tr>
	
<!-- 		for (DeptVO dept : deptMapper.getDeptEmpList()) {
			
			log.info(dept.getLoc() + dept.getDeptno());
			
			for (EmpVO vo : dept.getEmpList()) {
				System.out.println(vo);
			}
		} -->
		
				
		<c:forEach var="list" items="${transList}">
			<form id="updateForm" action="/transUpdate" method="post">
			<input type="hidden" name="trans_no" value="${list.trans_no}">
			<tr>
				<td> ${list.trans_no}</td>
				<td><input name="trans_sales" type="number" value="${list.trans_sales}"></td>

				<td><input name="trans_type" type="text" value="${list.trans_type}"></td>
				<td><input name="trans_date" type="text" value="${list.trans_date}"></td>
				
				<td><input type="submit" value="수정"></td>		
				<td><a href="/transDelete?trans_no=${list.trans_no}">삭제</a></td>	
				
						
			</tr>
			</form>
		</c:forEach>
		<form id="writeForm" action="/transWrite" method="post">
			<tr>
				<td>번호</td>
				<td><input name="trans_sales" type="number" value="이익"></td>
				<td><input name="trans_type" type="text" value="차종"></td>
				<td><input name="trans_date" type="text" value="대여일수"></td>
				<td colspan="2"><input type="submit" value="추가"></td>
			</tr>
		</form>
	</table>
	
	
	
	<div><a href="/trans">통계로 돌아가기</a></div>
	
	



<h1>일단 리스트</h1>
	<table id="list-table"  border="1">
		
	</table>
	
</body>
</html>