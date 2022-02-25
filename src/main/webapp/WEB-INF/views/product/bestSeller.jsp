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
    
    <link href="/css/bestSeller.css" rel="stylesheet">

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
    <div class="container">
	   <jsp:include page="/WEB-INF/views/layout/top.jsp" flush="true"/>
        <section>
            <div id="content2">
                <div class="content2-Title"><h2>오늘의 인기상품</h2></div>

                <div class="contentSlide2">

       
                    

                        <c:forEach items="${prdList}" varStatus="status" var="prd">
                        	<c:if test="${status.index % 8 == 0 }"><div class="content-Container2"></c:if>
                        	<c:if test="${status.index % 4 == 0 }"><div class="content-Container2-Item"></c:if>
                        	
                        	 <div class="Out-box">
                                <div class="content2-Box" onclick="go('/product/detailViewProduct/${prd.prdNo}')">
                                    <div class="content2-Img">
                                        <img src="<c:url value='/img/${ prd.prdImg }.jpg'/>">
                                    </div>
                                    <div class="content2-Box-footer">
                                        <div style="color: black;">상품명 : ${ prd.prdName }</div>
                                        <div style="color: black;"><span>할인</span>가격 : ${ prd.prdPrice }원</div>
                                    </div>
                                </div>
                            </div>
                            <c:if test="${status.index % 4 == 3 }"></div></c:if>
                            <c:if test="${status.index % 8 == 7 }"></div></c:if>
                      </c:forEach>
				
             	</div>
            </div>
             
             
              

                 

            
                <button class="btn btn-danger" id="nextBtn">NEXT</button>
                <button class="btn btn-danger" id="backBtn">Back</button>
        </section>
         <jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush="true"/>
    </div>


    <script src="/js/bestSeller.js"></script>
</body>
</html>