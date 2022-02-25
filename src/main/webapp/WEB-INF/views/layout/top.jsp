<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
	    <meta charset="UTF-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    
	    <link href="<c:url value='/css/home.css'/>" rel="stylesheet">
	
	    <link rel="preconnect" href="https://fonts.googleapis.com">
	    <!-- 구글 폰트 -->
	    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	     <!-- 구글 폰트 -->  
	    <link href="https://fonts.googleapis.com/css2?family=Rubik&display=swap" rel="stylesheet">
	    <script
	    src="https://code.jquery.com/jquery-3.6.0.min.js"
	    integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	    crossorigin="anonymous"></script>
	    <title>Document</title>
	</head>
	<body>
		<header>
            <div class="header-Content">
                <div class="header logo"><a href="<c:url value='/'/>"><p>가<span>지</span>구 싶니?</p></a></div>
                <div class="Row">
          		    <!-- 로그인 하지 않은 경우 보여줄 메뉴 항목  -->
               		<c:if test="${empty sessionScope.sid }">
	                    <div class="header color-Change"><p><a href="/loginForm">로그인</a></p></div>
	                    <div class="header color-Change"><a href="/signUpForm"><p>회원가입</p></a></div>
	                    <div class="dark-mode-Btn" onclick="darkMode()">
	                        <div id="dark-mode-btn"></div>
	                    </div>
                    </c:if>
                    
                    			
				<!-- 로그인 성공한 경우 보여줄 메뉴 항목  -->	
					<c:if test="${not empty sessionScope.sid}">
						<div id="my-id">${sessionScope.sid} 님 환영합니다!</div>
						<div class="header color-Change"><p><a href="/logout">로그아웃</a></p></div>
	                    <div class="dark-mode-Btn" onclick="darkMode()">
	                        <div id="dark-mode-btn"></div>
	                    </div>
					</c:if>	
                </div>
            </div>
        </header>
	</body>
</html>