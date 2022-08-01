<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html>
<head>
	<title>list</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">

	

	//삭제 버튼 처리
		$(document).on("click","#area_delete",function(){
			
			
			
				
			let area_name = $("#name").html();
		
			
			$.ajax({ 
                type: "DELETE",
                url : "/areas/"+area_name, //http://localhost:8282/boards/list
                success : function(result) {
           	           console.log(result);               	
           	             
                }, 
                error : function(xhr, textStatus, errorThrown){ 
                        alert(xhr);
                        alert(textStatus);  
                        alert(errorThrown);
                    }
                });		
		
	});		
		
</script>

</head>
<body>
  <table width="700" cellpadding="0" cellspacing="0" border="1">
     
  
         <tr>
            <td> 명소이름 </td>
            <td id="name">${name.area_name} </td>
         </tr>
         <tr>
            <td> 명소주소 </td>
            <td  id="loc">${name.area_loc} </td>
         </tr>
         <tr>
            <td> 이용시간 </td>
            <td id="time">${name.area_time} </td>
         </tr>
           <tr>
            <td> 내용 </td>
            <td id="contents">${name.area_contents}</td>
         </tr>
           <tr>
            <td> 이미지 주소 </td>
            <td id="img">${name.area_img} </td>
         </tr>
           <tr>
            <td> 전화번호 </td>
            <td id="tel">${name.area_tel}</td>
         </tr>
         <tr >
         
            <td colspan="2"> 
            <a href="areamodify?area_name=${name.area_name}">수정하기</a> 
            &nbsp;&nbsp; <a href="admin/arealist">목록보기</a> 
            &nbsp;&nbsp; <a id="area_delete" href="admin/arealist">삭제</a> 
           </td>
         </tr>
      </form>
   </table>

</body>
</html>