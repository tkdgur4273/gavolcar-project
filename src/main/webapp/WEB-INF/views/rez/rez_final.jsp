<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- C태그 쓰기 위해 넣은 taglib므로 반드시 확인 --> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약 최종 확인</title>

<script>

</script>
</head>
<body>
<table>
      <form action="/insertRents" method="get">
      	<tr class="tHeight">
            <td class="name"> 예약번호 </td>
            <td class="cont"> <input class="box"  type="text" name="user_phone_number" size = "10"> </td>
         </tr>
         <tr class="tHeight">
            <td class="name"> 회원아이디 </td>
            <td class="cont"> <input class="box" type="text" name="user_id" size = "10"> </td>
         </tr>
         <tr class="tHeight">
            <td class="name"> 차량번호 </td>
            <td class="cont"> <input class="box"  type="text" name="user_phone_number" size = "10"> </td>
         </tr>
         <tr class="tHeight">
            <td class="name"> 예약시작일 </td>
            <td class="cont"> <input class="box"  type="text" name="user_age" size = "10"> </td>
         </tr>
         <tr class="tHeight">
            <td class="name"> 예약종료일 </td>
            <td class="cont"> <input class="box"  type="text" name="user_age" size = "10"> </td>
         </tr>
         <tr class="tHeight">
            <td class="name"> 총요금 </td>
            <td class="cont"> <input class="box"  type="text" name="user_age" size = "10"> </td>
         </tr>
         <tr class="tHeight">
            <td class="name"> 하이패스 </td>
            <td class="cont"> <input class="box"  type="text" name="user_age" size = "10"> </td>
         </tr>
         <tr class="tHeight">
            <td class="name"> 카시트 </td>
            <td class="cont"> <input class="box"  type="text" name="user_age" size = "10"> </td>
         </tr>
         <tr class="tHeight">
            <td colspan="2" style="text-align: center;"> <input class="box" type="submit" value="가입"> &nbsp;&nbsp;</a></td>
         </tr>
      		</form>
        </table>

</body>
</html>