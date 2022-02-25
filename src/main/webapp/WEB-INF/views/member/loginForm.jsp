<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>로그인</title>  
		<script src="js/jquery-3.6.0.min.js"></script>
		<script src="js/login.js"></script>
		<link href="css/common.css" rel="stylesheet" type="text/css">
	</head>
	<body>
		<div id="wrap"> 
			<jsp:include page="/WEB-INF/views/layout/top.jsp" flush="true"/>
			<!--  로그인 폼  -->
			<section>
		        <h1 id="title">로그인</h1>
		        <form id="login" name="login" method="post"  action="/login">
		          <table>
		            <tr><th> ID</th><td><input type="text" id="id" name="id" ></td></tr>
		            <tr><th>비밀번호</th><td><input type="password" id="pwd" name="pwd"></td></tr>
		             <tr>
		                <td colspan="2" align="center" id="button">
		                    <br><input type="submit" value="로그인">
		                    <input type="reset" value="취소">
		                </td>
		            </tr>             
		            </table>
		        </form>	
	        </section>
	   		<jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush="true"/>
	      </div>
	</body>
</html>


