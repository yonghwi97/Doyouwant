<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" 
     rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
    crossorigin="anonymous">

    <link href="<c:url value='/css/homeContent2.css'/>" rel="stylesheet">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <!-- 구글 폰트 -->
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
     <!-- 구글 폰트 -->  
    <link href="https://fonts.googleapis.com/css2?family=Rubik&display=swap" rel="stylesheet">
    <script
    src="https://code.jquery.com/jquery-3.6.0.min.js"
    integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
    crossorigin="anonymous"></script>
    <script src="<c:url value='/js/home.js'/>"></script>
    <title>Document</title>
</head>
<body>
    <div class="container">
        <jsp:include page="/WEB-INF/views/layout/top.jsp" flush="true"/>
        <section>

	        <div class="content-Item2">
	            <div id="sti1" class="sti"><img src="./img/sti1.png"></div>
	            <div id="sti2" class="sti"><img src="./img/sti2.png"></div>
	            <div id="sti3" class="sti"><img src="./img/sti3.png"></div>
	            <div id="sti4" class="sti"><img src="./img/sti4.png"></div>
	            <div id="sti5" class="sti"><img src="./img/sti5.png"></div>
	            <div class="main-Title" onclick="spin()"><h3 id="title">가<span>지</span>구 싶니 ?</h3></div>
	            <div class="main-Title english">WHAT DO YOU WANT?</div>
	        </div>

        </section>
        
         <jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush="true"/>
    </div>

</body>
</html>