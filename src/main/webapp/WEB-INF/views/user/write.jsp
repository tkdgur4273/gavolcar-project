<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- C태그 쓰기 위해 넣은 taglib므로 반드시 확인 --> 
    
<!DOCTYPE html>
<html>
<head>
   <title>write</title>
   
   <style type="text/css">
   .name{
		width: 150px;
		border-bottom: 1px solid gray;
 		background-color: rgb(235, 235, 235);
   }
   .cont{
   	border-bottom: 1px solid gray;
   }
   </style>
</head>
<body>
<h3 style="text-align: center;">회원등록</h3>
<table  style="margin: 20px auto; font-size: 20px; width: 700px; text-align: left; color: rgb(70, 70, 70);"  cellpadding="10px" cellspacing="0">
      <form action="insert" method="get">
         <tr height="50px">
            <td width="150px" style="border-bottom: 1px solid gray;border-top: 1px solid gray; background-color: rgb(235, 235, 235)"> 아이디 </td>
            <td style="border-bottom: 1px solid gray;border-top: 1px solid gray;"> <input type="text" name="user_id" size = "10"> </td>
         </tr>
         <tr height="50px">
            <td class="name"> 비밀번호 </td>
            <td class="cont"> <input type="text" name="user_pw" size = "10"> </td>
         </tr>
         <tr height="50px">
            <td class="name"> 이름 </td>
            <td class="cont"> <input type="text" name="user_name" size = "10"> </td>
         </tr>
         <tr height="50px">
            <td class="name"> 전화번호 </td>
            <td class="cont"> <input type="text" name="user_phone_number" size = "10"> </td>
         </tr>
         <tr height="50px">
            <td class="name"> 나이 </td>
            <td class="cont"> <input type="text" name="user_age" size = "10"> </td>
         </tr>
         <tr height="50px">
            <td class="name"> 이메일 </td>
            <td class="cont"> <input type="text" name="user_email" size = "50"> </td>
         </tr>
         <tr  height="50px">
            <td colspan="2"> <input type="submit" value="입력"> &nbsp;&nbsp; <a href="list">목록보기</a></td>
         </tr>
      </form>
        </table>
</body>
</html>