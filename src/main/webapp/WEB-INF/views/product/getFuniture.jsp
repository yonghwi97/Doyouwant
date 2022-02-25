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


 	<link href="<c:url value='/css/home.css'/>" rel="stylesheet" type="text/css">
    <link href="<c:url value='/css/getFuniture.css'/>" rel="stylesheet" type="text/css">

	

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <!-- 구글 폰트 -->
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
     <!-- 구글 폰트 -->  
    <link href="https://fonts.googleapis.com/css2?family=Rubik&display=swap" rel="stylesheet">
    <script
    src="<c:url value = 'https://code.jquery.com/jquery-3.6.0.min.js'/>"
    integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
    crossorigin="anonymous"></script>
    <script type="text/javascript" src="/js/getFuniture.js" ></script>
    <title>Document</title>
</head>
<body>
    <div class="container">
        <jsp:include page="/WEB-INF/views/layout/top.jsp" flush='true' />

        <section>
   
                <h2>추천 가구</h2>
		
				
				
                    <div class="container2">
                        <div class="img_wrap">
                            <div class="rollimgs">
                             <c:forEach items="${todayList }" var="today">
                             <div class="rollimgs-item" onclick="go('/product/detailViewProduct/${today.prdNo}')">
                                    <img src="<c:url value='/img/${today.prdImg3}.jpg'/>">
                                    <p>${today.prdName}</p>
                                    <div>
                                        <p>[오늘의 할인가격]
                                            <br>${today.prdPrice}</p>

                                    </div>
                                </div>
                          </c:forEach>
                             
                                
                            </div>
                        </div>
                    </div>


                  
        </section>

        <jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='true' />
    </div>
<script src="getFuniture.js"></script> 
</body>
</html>