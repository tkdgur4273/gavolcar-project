<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- C태그 쓰기 위해 넣은 taglib므로 반드시 확인 --> 
    
<!DOCTYPE html>
<html>
<head>
   <title>write</title>
</head>
<body>
<h3>회원등록</h3>
<table width="500" cellpadding="0" cellspacing="0" border="1">
      <form action="insert" method="get">
         <tr>
            <td> 아이디 </td>
            <td> <input type="text" name="user_id" size = "10"> </td>
         </tr>
         <tr>
            <td> 비밀번호 </td>
            <td> <input type="text" name="user_pw" size = "10"> </td>
         </tr>
         <tr>
            <td> 이름 </td>
            <td> <input type="text" name="user_name" size = "10"> </td>
         </tr>
         <tr>
            <td> 전화번호 </td>
            <td> <input type="text" name="user_phone_number" size = "10"> </td>
         </tr>
         <tr>
            <td> 나이 </td>
            <td> <input type="text" name="user_age" size = "10"> </td>
         </tr>
         <tr>
            <td> 이메일 </td>
            <td> <input type="text" name="user_email" size = "50"> </td>
         </tr>
         <tr >
            <td colspan="2"> <input type="submit" value="입력"> &nbsp;&nbsp; <a href="list">목록보기</a></td>
         </tr>
      </form>
        </table>
</body>
</html>