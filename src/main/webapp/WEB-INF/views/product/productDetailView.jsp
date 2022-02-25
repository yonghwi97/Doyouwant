<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 부트스트랩 -->


    <script
    src="https://code.jquery.com/jquery-3.6.0.min.js"
    integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
    crossorigin="anonymous"></script>
    <script type="text/javascript" src="/js/product.js" ></script>

    <!-- 폰트어썸 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.2.0/css/all.min.css" integrity="sha512-6c4nX2tn5KbzeBJo9Ywpa0Gkt+mzCzJBrE1RB6fmpcsoN+b/w/euwIMuQKNyUoU/nToKN3a8SgNOtPrbW12fug==" crossorigin="anonymous" />

    <title>Document</title>
</head>
<body>
    <div class="container container2">
        <jsp:include page="/WEB-INF/views/layout/top.jsp" flush='true' />
        <section>
            <div id = "wrap">
				<header>
				<form action="<c:url value='/product/insertCart'/>">
						<div id = "productBox">
	                        <div id="productContainer">
	                            <div id = "smallPicture">
	                                    <ul>
	                                    <li><img src = "<c:url value='/img/${ prd.prdImg }.jpg'/>" width = "100px" height = "100px" ></li>
	                                    <li><img src = "<c:url value='/img/${ prd.prdImg2 }.jpg'/>" width = "100px" height = "100px"></li>
	                                    <li><img src = "<c:url value='/img/${ prd.prdImg }.jpg'/>" width = "100px" height = "100px"></li>
	                                    <li><img src = "<c:url value='/img/${ prd.prdImg2 }.jpg'/>" width = "100px" height = "100px"></li>
	                                    </ul></div>
	                            <div id = "productPicture"><img src = "<c:url value='/img/${ prd.prdImg }.jpg'/>" width = "500px" height = "500px" ></div>					
	                        </div>
						
							<div id = "productIntroduce">
							<div id = "productName"><br><br>
									<div style = "font-size: 20pt; color:white"><b>${ prd.prdName }</b></div><br>
												
									<div style = "font-size: 10pt; text-align : right; color : red">
									<br><br><br><b>배송비 무료</b></div>
			  				
									<div style = "text-align :right; font-size: 20pt; color:white"><b>${ prd.prdPrice }원</b></div>											
									<hr>
							</div>
								<div style = "text-align :right">
								<select id = "option" style="width:150px; height:22px;  text-align:center;">
									<option selected="selected" value="0">옵션</option>
									<option id = "검정" value="10000">${ prd.prdOption }</option>
									<option id = "빨강" value="20000">${ prd.prdOption2 }</option>
								</select>
								</div><br><br>
							
							<div id = "price">
							<div style = "text-align :right; font-size: 20pt; color:white">
								<div>총 주문금액</div> <div id = "amount" value = ${ prd.prdPrice } ><b>${ prd.prdPrice }원</b></div>
							</div><br>
							</div>
			
							<input type="hidden" name="prdNo" value="${ prd.prdNo }"/>
							
							
							
							
							<div class="row">
								<c:if test="${ empty sessionScope.sid }">
										<div>
											<a href="<c:url value='/loginForm'/>" class="btn-product btn1">
												로그인
											</a>
										</div>
								</c:if>
								
								<c:if test="${ not empty sessionScope.sid }">
									<button class="btn-product btn1" id = "insertCart" type="submit">장바구니</button>
									<button class="btn-product btn2" id = "btn2" onclick="go('./basket.jsp')">바로구매</button>
								</c:if>	
							</div>
							
						</div>
					</header>
				</div>
			</form>
			<div id="mainMenuBox">
                <div id="mainMenuBox-item" style = "font-size : 30pt;">
                    <ul id="menuItem">
                        <li><a href="#" id = "상품정보"><b>상품정보</b></a></li>
                        <li><a href="#" id = "리뷰"><b>리뷰</b></a></li>
                        <li><a href="#" id = "문의"><b>문의</b></a></li>
                        <li><a href="#" id = "판매자 정보"><b>판매자 정보</b></a></li>
                    </ul>				
                </div>
			</div>
			
			   <jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='true' />
			
			<div id = "detailImg">
	            <img src = "<c:url value='/img/${ prd.prdImg3 }.jpg'/>" width = "1000px" height = "2000px">
				<img src = "<c:url value='/img/${ prd.prdImg3 }.jpg'/>" width = "1000px" height = "2000px">
	        </div>
	        
	  
	        
        </section>
	    <link href="<c:url value='/css/product.css'/>" rel="stylesheet">
   
    </div>


</body>
</html>
    