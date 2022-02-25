<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<c:url value='/css/signup.css'/>">
    
   
    <title>Title</title>
</head>
<body>
   <div class="container">
		<jsp:include page="/WEB-INF/views/layout/top.jsp"></jsp:include>
	    <h1>회원가입</h1>

	    <!-- <form action="/signup" method="post" onsubmit="return checkForm();"> -->
	        <form onsubmit="return checkForm();" action="/signUp" method="post">
	        <div class="alignTable">
	            <table id="table" border="0">
	                <tbody>
	                    <tr id="cellId" >
	                        <th>아이디 :&nbsp;</th>
	                        <td><input class="void" type="text" id="id" name="memId" onblur="idChecking()"></td>
	                    </tr>
	                    
	                    <tr id="cellPass">
	                        <th>비밀번호 :&nbsp;</th>
	                        <td><input class="void" type="password" id="password" name="memPwd"></td>
	                    </tr>
	                    
	                    <tr id="cellEmail">
	                        <th>이메일 :&nbsp;</th>
	                        <td><input class="void" type="email" id="email" name="memEmail"></td>
	                    </tr>
	                    
	                    <tr id="cellName">
	                        <th>이름 :&nbsp;</th>
	                        <td><input class="void" type="text" id="name" name="memName"></td>
	                    </tr>
	
	                    <tr id="cellRadio">
	                    <!-- 
	                        <th>성별 :&nbsp;</th>
	                        <td id="cell_radio_td">
	                            <label><input type="radio" name="selectBtn" class="selectBtn1" value="male"> 남&nbsp;</label>
	                            <label><input type="radio" name="selectBtn" class="selectBtn2" value="female"> 여</label>
	                        </td>  -->
	                        
	                        <input type="hidden" />
	                    </tr>
	                    <tr id="cellNum">
	                        <div><th>전화번호 :&nbsp;</th></div>
	                        <!-- id값 추출을 위한 label -->
	                        <label for="tel"></label>
	                        <td><input class="void" type="tel" id="tel" maxlength="13" name="memHP"></td>
	                    </tr>
	                    <tr>
	                        <td colspan="2"><input type="submit" value="Sign up" id="joinSubmit"></td>
	                    </tr>
	                </tbody>
	            </table>
	        </div>
	    </form>
    </div>
 <%--    <jsp:include page="/WEB-INF/views/layout/bottom.jsp"></jsp:include> --%>
    <script src="<c:url value='/js/signup.js' />"></script>
</body>
</html>