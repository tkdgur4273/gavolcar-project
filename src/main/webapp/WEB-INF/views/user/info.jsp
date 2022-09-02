<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- C태그 쓰기 위해 넣은 taglib므로 반드시 확인 --> 
    
<!DOCTYPE html>
<html>
<head>
   <title>info</title>
</head>
<body>
<h3>회원상세정보</h3>
  <table width="400" cellpadding="0" cellspacing="0" border="1">
      <form action="modify" method="get">
         <input type="hidden" name="user_id" value="${info.user_id}">
         <tr>
            <td> 아이디 </td>
            <td> ${info.user_id} </td>
         </tr>
         <tr>
            <td> 비밀번호 </td>
            <td> <input type="password" name="user_pw" value="${info.user_pw}"> </td>
         </tr>
         <tr>
            <td> 이름 </td>
            <td> <input type="text" name="user_name" value="${info.user_name}"></td>
         </tr>
         <tr>
            <td> 전화번호 </td>
            <td> <input type="text" name="user_phone_number" value="${info.user_phone_number}"></td>
         </tr>
         <tr>
            <td> 나이 </td>
            <td> <input type="text" name="user_age" value="${info.user_age}"></td>
         </tr>
         <tr>
            <td> 이메일 </td>
            <td> <input type="text" name="user_email" value="${info.user_email}"></td>
         </tr>
         <tr >
            <td colspan="2"> <input type="submit" value="수정"> 
            &nbsp;&nbsp;<a href="delete?user_id=${info.user_id}">탈퇴</a> 
            &nbsp;&nbsp;
            
            
         </tr><!--&nbsp; : 공백주는 것  -->
      </form>
   </table>
 <a href="userHome">마이페이지</a> 
</body>
</html>