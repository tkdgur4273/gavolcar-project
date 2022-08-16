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
	
		var data = {
		 area_name : $("#area_name").html(),
		 area_loc : $("#area_loc").val(),
		 area_contents : $("#area_contents").val(),
		 area_time : $("#area_time").val(),
		 area_img : null,
		 area_tel : $("#area_tel").val()
		}
		var area_name = $('#area_name').html();
		var form =$('#updateForm')[0];
		var formData = new FormData(form);
		formData.append('file', $('#file'));
		formData.append('key', new Blob([JSON.stringify(data)] , {type: "application/json"}));
		
		$.ajax({
	        type: 'PUT',
	        url: '/areas/'+area_name,
	        processData: false,
	        contentType:false,
	        data: formData,
	    }).done(function() {
	        alert('글이 수정되었습니다.');
	        window.location.href = 'admin/arealist';
	    }).fail(function (error) {
	        alert(JSON.stringify(error));
		});
	});
});
	
	
	
</script>
</head>
<body>
  <table width="700" cellpadding="0" cellspacing="0" border="1">
      <form id="updateForm" action="admin/arealist" method="put" enctype="multipart/form-data">
         <tr>
            <td>명소이름</td>
            <td id="area_name">${name.area_name}</td>
         </tr>
         <tr>
            <td> 명소주소 </td>
            <td> <input id="area_loc" type="text" name="loc" value="${name.area_loc} "></td>
         </tr>
         <tr>
            <td> 이용시간 </td>
            <td> <input id="area_time" type="text" name="time" value="${name.area_time}"></td>
         </tr>
         <tr>
            <td> 내용 </td>
            <td> <input id="area_contents" type="text" name="contents" value="${name.area_contents}"></td>
         </tr>
          <tr>
            <td> 이미지 </td>
            <td> <input type="file" name="file" id="file"></td>
         </tr>
         <tr>
            <td> 전화번호 </td>
            <td> <textarea id="area_tel" rows="10" name="tel" >${name.area_tel}</textarea></td>
         </tr>
         <tr >
            <td colspan="2"> <input type="submit" value="수정"> 
            &nbsp;&nbsp; <a href="admin/arealist">목록보기</a> 
         </tr>
      </form>
   </table>

</body>
</html>