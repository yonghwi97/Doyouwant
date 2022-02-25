<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
    
    <link href="<c:url value='/css/bestInterior.css'/>" rel="stylesheet">


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
            <div id="content-Title"><h2>금주의 인테리어</h2></div>
                    
                    <div class="content-Container">

                        <div class="content-Slide">
                        
                        
                        <c:forEach items="${interiorList }" var="inter">
                            <div class="content-Item">

                                <div class="content-Out-box">
                                    <a href="<c:url value='/product/getFuniture/${inter.interNo}'/>">
                                        <div class="content-Box">
                                            <div><img src="<c:url value='/img/${inter.interImg}.jpg'/>" class="intImg"></div>
                                            <div class="content-Box-footer">
                                                <img src="/img/portfolio-2.jpg" class="content-Box-icon">
                                                <div class="content-Box-name">${ inter.interName }</div>
                                            </div>
                                            <!-- <div class="content-Hashtag-box">
                                                <div class="hashTag">#오늘의집</div>
                                                <div class="hashTag">#오늘의집</div>
                                            </div> -->
                                        </div>
                                    </a>
                                    
                                </div>
            
                            </div>
                          </c:forEach>
		
        
                        </div>
                        <button class="btn btn-primary nextBtn">NEXT</button>
                        <button class="btn btn-primary backBtn">Back</button>
                    </div>

        </section>
	  <jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush="true"/>
 	</div>



    <script src="/js/bestInterior.js"></script>
</body>
</html>