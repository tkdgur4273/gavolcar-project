<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- C태그 쓰기 위해 넣은 taglib므로 반드시 확인 --> 
  
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	
function list(result) {
    var htmls="";
    
    $("#list-table").html("");
    
    $("<tr>" , {
       html : "<td>" + "지역명소 이름" + "</td>"+  // 컬럼명들
             "<td>" + "지역명소 주소" + "</td>"+
             "<td>" + "이용시간" + "</td>"+
             "<td>" + "전화번호" + "</td>"
    }).appendTo("#list-table") // 이것을 테이블에 붙임
    
    	
    if(result.length < 1){
       htmls.push("등록된 장소가 없습니다.");
    }else{         
       
       $(result).each(function() {
          htmls += '<tr>';
          htmls += '<a href="/rest_content_view.html?area_name=' + this.area_name + '">' + this.area_name + '</a></td>';
          htmls += '<td>' + this.area_loc +'</td>'; 
          htmls += '<td>' + this.area_time +'</td>'; 
          htmls += '<td>'+ this.area_tel + '</td>';
          htmls += '<td>'+ '<input id=' + this.area_name + " type='button' class='btn_delete' value='삭제'>" + '</td>';
          htmls += '</tr>';   
          
       });
       
         htmls+='<tr>';
         htmls+='<td colspan="4"> <a href="/write_view">글작성</a> </td>';                         
         htmls+='</tr>';         
    }
    
    $("#list-table").append(htmls);      
    
}
 



$(document).ready(function() {
	$.ajax({
		type:"GET",
		url:"/areas/areaList",
		success:function(result){
			console.log(result);
			
			list(result);
		}
		
		
		
	});
	
	
});	


</script>

</head>
<body>
<h1>일단 리스트</h1>
	<table id="list-table" width="500" border="1">
		
	</table>
</body>
</html>