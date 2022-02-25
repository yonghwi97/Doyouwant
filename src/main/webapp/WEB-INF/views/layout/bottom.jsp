<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
	    <meta charset="UTF-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" 
	     rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	    crossorigin="anonymous">
	
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
	    <script src="<c:url value='/js/home.js'/>"></script>
	    <title>Document</title>
	</head>
	<body>
		<footer>
     <div>
            <div class="footer-Container"> 
                <div class="footer-Line"><h5>금주의 인테리어</h5></div>
                <div class="footer-Line"><h5>인기 상품</h5></div>
                <div class="footer-Line"><h5>장바구니</h5></div>
                <div class="footer-Line"><h5>마이 페이지</h5></div>
            </div>

            <div class="footer-Container2">
                <div class="footer-Box" onclick="go('/interior')">
                    <div><h5 class="footer-Box-Title">금주의 인테리어</h5></div>
                    <div><p class="footer-Box-Title">매주 새로운 인테리어를 만나보세요!</p></div>
                    <div class="line"></div>
                    <div class="line"></div>
                    <div class="line"></div>
                    <div class="line"></div>
                    <div class="line"></div>
                    <div class="line"></div>
                </div>

                <div class="footer-Box" onclick="go('/product/bestSeller')">
	                    <div><h5 class="footer-Box-Title">인기 상품</h5></div>
	                    <div><p class="footer-Box-Title">금주의 최고의 베스트 셀러!</p></div>
	                    <div class="line"></div>
	                    <div class="line"></div>
	                    <div class="line"></div>
	                    <div class="line"></div>
	                    <div class="line"></div>
	                    <div class="line"></div>
                </div>
          

                <div class="footer-Box" onclick="go('/product/cartList')">
                    <div><h5 class="footer-Box-Title">장바구니</h5></div>
                    <div><p class="footer-Box-Title">어떤 상품을 담으셨나요?</p></div>
                    <div class="line"></div>
                    <div class="line"></div>
                    <div class="line"></div>
                    <div class="line"></div>
                    <div class="line"></div>
                    <div class="line"></div>
                </div>

                <div class="footer-Box"  onclick="go('/mypage/mypage')">
                    <div><h5 class="footer-Box-Title">마이페이지</h5></div>
                    <div><p class="footer-Box-Title">로그인이 필요합니다</p></div>
                    <div class="line"></div>
                    <div class="line"></div>
                    <div class="line"></div>
                    <div class="line"></div>
                    <div class="line"></div>
                    <div class="line"></div>
                </div>
            </div>
            
        </div>
		</footer>
	</body>
</html>