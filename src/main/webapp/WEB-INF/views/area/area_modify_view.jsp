<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html>
<head>
	<title>list</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function (){
		
		$("#updateForm").submit(function(event) {
			//prevendDefault()는 href로 연결해 주지 않고 
			//단순히 click에 대한 처리를 하도록 해준다.
			event.preventDefault();
			
			let input_area_name = $("#input_area_name").val();
			let area_time = $("#area_time").val();
			let area_tel = $("#area_tel").val();
			let img = $("#img").val();

			let form={
					input_area_name: input_area_name,
					area_time: area_time,
					area_tel: area_tel,
					img:img					
			};
			
			/*
			$.ajax({
				  type : `http method type`,
				  url : `url`,
				  data : `서버에 전송할 데이터`,
				  contentType : "전송할 데이터 타입",
				  //기본 값 : "application / x-www-form-urlencoded; charset = UTF-8"  
				  dataType : '서버로 부터 수신할 데이터 타입',
				  //아무것도 지정하지 않으면 jQuery는 응답의 MIME 유형을 기반으로 해석을 시도
				  error : `에러 발생시 수행할 함수`,
				  success : `성공시 수행할 함수`
				});
			*/
			console.log(JSON.stringify(form));
			
			$.ajax({
			    type : "PUT",
			    url : "/boards/" + area_name,
			    cashe:false,
			    contentType:'application/json; charset=utf-8',
			    data: JSON.stringify(form), 
			    success: function (result) {       
			           console.log(result);
			           //location.href = "/list";
			           //$(location).attr('href', '/rest_board.html');
			           $(location).attr('href', '/list');              
			    },
			    error: function (e) {
			        console.log(e);
			    }
			});
			
			
			
		});
	
	
	});
</script>
</head>
<body>
  <table width="700" cellpadding="0" cellspacing="0" border="1">
      <form id="updateForm" action="modify" method="post">
         <tr>
            <td>명소이름</td>
            <td> <input id="area_name" type="text" name="bname" value="${name.area_name}"></td>
         </tr>
         <tr>
            <td> 명소주소 </td>
            <td> <input id="area_loc" type="text" name="bname" value="${name.area_loc} "></td>
         </tr>
         <tr>
            <td> 이용시간 </td>
            <td> <input id="area_time" type="text" name="bname" value="${name.area_time}"></td>
         </tr>
         <tr>
            <td> 내용 </td>
            <td> <input id="area_contents" type="text" name="btitle" value="${name.area_contents}"></td>
         </tr>
         <tr>
            <td> 이미지 </td>
            <td> <textarea id="area_img" rows="10" name="bcontent" >${name.area_img}</textarea></td>
         </tr>
         <tr>
            <td> 전화번호 </td>
            <td> <textarea id="area_tel" rows="10" name="bcontent" >${name.area_tel}</textarea></td>
         </tr>
         <tr >
            <td colspan="2"> <input type="submit" value="수정"> 
            &nbsp;&nbsp; <a href="arealist">목록보기</a> 
         </tr>
      </form>
   </table>

</body>
</html>