<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html>
<head>
	<title>list</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
/*function list(result) {

    if(result.length < 1){
       htmls.push("등록된 장소가 없습니다.");
    }else{         
       
    	$("#name").append(this.area_name);
    	$("#loc").append(this.area_loc);
    	$("#time").append(this.area_time);
    	$("#contents").append(this.area_contents);
    	$("#img").append(this.area_img);
    	$("#tel").append(this.area_tel);
}

$(document).ready(function() {
	$.ajax({
		type:"GET",
		url:"/areas/" + ${name.area_name},
		success:function(result){
			console.log(result);
			
			list(result);
		}
	});
});	*/		
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
            &nbsp;&nbsp; <a href="arealist">목록보기</a> 
            &nbsp;&nbsp; <a href="delete?bid=${content_view.bid}">삭제</a> 
            &nbsp;&nbsp; <a href="reply_view?bid=${content_view.bid}">답변</a></td>
         </tr>
      </form>
   </table>

</body>
</html>