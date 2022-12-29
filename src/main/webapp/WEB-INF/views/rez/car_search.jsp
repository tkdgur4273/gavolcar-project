<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- C태그 쓰기 위해 넣은 taglib므로 반드시 확인 -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>차량검색</title>



<script type="text/javascript">
// 부모창의 function setOrdNumber 에 값을 전달
function setOrdNum(cno, cimg, ctype, cvolume, cprice){
	opener.setOrdNumber(cno, cimg, ctype, cvolume, cprice);
	
	window.close();
}

function goPage(page) {
    document.opForm.page.value = page; 
    opForm.action = "/rez/car_search.do";
    opForm.submit();
}


</script>
<style type="text/css">
@font-face {
	font-family: 'tway_sky';
	src: url("../tway_sky.ttf");
	font-weight: 400;
}

* {
	font-family: 'tway_sky';
	font-size: 18px;
}
</style>
</head>
<body>
	<div>
		<!-- 바디 시작, 이 div 내부를 이용하면 됨 -->
		<div>
			<h3 style="text-align: center; font-size: 30px;">차량조회</h3>
			<form id="opForm" name="opForm" method="post">
				<input type="hidden" name="page" id="page" value="${sform.page}">
				<br>
				<div>
					<br>
				</div>

				<table class="table table-bordered" style="width: 90%;"
					border="2px solid  rgb(52, 118, 218);">
					<thead>
						<tr
							style="background-color: rgb(52, 118, 218); height: 40px; color: rgb(255, 255, 255);">
							<td>차량 번호</td>
							<td>차량 사진</td>
							<td>차종</td>
							<td>탑승가능인원</td>
							<td>시간당 요금</td>
						</tr>
					</thead>
					<c:forEach var="rcno" items="${getRentsCarsList}">
						<tr>
							<td><a
								href="javascript:setOrdNum('${rcno.car_no}', '${rcno.car_img}', '${rcno.car_type}', '${rcno.car_volume}','${rcno.car_price}')">${rcno.car_no}</a></td>
							<td>${rcno.car_img}</td>
							<td>${rcno.car_type}</td>
							<td>${rcno.car_volume}</td>
							<td>${rcno.car_price}</td>
						</tr>
					</c:forEach>
				</table>

			</form>
		</div>
</body>
</html>