<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- C태그 쓰기 위해 넣은 taglib므로 반드시 확인 --> 
    
<!DOCTYPE html>
<html>
<head>
   <title>info</title>
</head>
<body>
<h3 style="text-align: center;">내 정보 수정</h3>
  <table style="margin: 20px auto; font-size: 20px; width: 700px; text-align: left; color: rgb(70, 70, 70);"  cellpadding="10px" cellspacing="0">
      <form action="modify" method="get">
         <input type="hidden" name="user_id" value="${info.user_id}">
         <tr height="50px">
            <td width="150px" style="border-bottom: 1px solid gray;border-top: 1px solid gray; background-color: rgb(235, 235, 235)"> 아이디 </td>
            <td style="border-bottom: 1px solid gray;border-top: 1px solid gray;"> ${info.user_id} </td>
         </tr>
         <tr height="50px">
            <td width="150px" style="border-bottom: 1px solid gray;border-top: 1px solid gray; background-color: rgb(235, 235, 235)"> 비밀번호 </td>
            <td style="border-bottom: 1px solid gray;"> <input type="password" name="user_pw" value="${info.user_pw}"> </td>
         </tr>
         <tr height="50px">
            <td width="150px" style="border-bottom: 1px solid gray;border-top: 1px solid gray; background-color: rgb(235, 235, 235)"> 이름 </td>
            <td style="border-bottom: 1px solid gray;"> <input type="text" name="user_name" value="${info.user_name}"></td>
         </tr>
         <tr height="50px">
            <td width="150px" style="border-bottom: 1px solid gray;border-top: 1px solid gray; background-color: rgb(235, 235, 235)"> 전화번호 </td>
            <td style="border-bottom: 1px solid gray;"> <input type="text" name="user_phone_number" value="${info.user_phone_number}"></td>
         </tr>
         <tr height="50px">
            <td width="150px" style="border-bottom: 1px solid gray;border-top: 1px solid gray; background-color: rgb(235, 235, 235)"> 나이 </td>
            <td style="border-bottom: 1px solid gray;"> <input type="text" name="user_age" value="${info.user_age}"></td>
         </tr>
         <tr height="50px">
            <td width="150px" style="border-bottom: 1px solid gray;border-top: 1px solid gray; background-color: rgb(235, 235, 235)"> 이메일 </td>
            <td style="border-bottom: 1px solid gray;"> <input type="text" name="user_email" value="${info.user_email}"></td>
         </tr>
         <tr  height="50px">
            <td colspan="2"> <input type="submit" value="수정"> 
            <a href="userHome" style="text-decoration: none; black;">마이페이지</a>
            <input style="margin-left: 700px;" type="button" value="탈퇴" class="btn" onclick="location.href='delete?user_id=${info.user_id}'">
            
          
            
            
         </tr><!--&nbsp; : 공백주는 것  -->
      </form>
   </table>
  
</body>
</html>