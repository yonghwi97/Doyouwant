<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href='<c:url value="/css/mypage.css"></c:url>'>
    <title>마이페이지</title>
</head>
<body>
<div class="container">
    <jsp:include page="/WEB-INF/views/layout/top.jsp"></jsp:include>
    <div class="main_box">
        <h1 class="h1title">마이페이지</h1>
    </div>
        <div id="menu_box">
            <ul>
                <li class="menu1">마이페이지</li>
                <li class="menu2">결제내역</li>
                <li class="menu3">최근 본 상품</li>
            </ul>
            <div class="sub_box">
                <div class="blank">
                    <form action="" method="get">
                        <input type="search" name="q" placeholder="주문번호를 입력하세요.">
                        <button id="search"><i class="fas fa-search"></i></button>
                    </form>
                </div>
                <div>
                    <h1 class="h1sub">결제 내역</h1>
                    <table border="0">
                        <thead>                      
                            <tr>
                                <th>주문 번호</th>
                                <th>결제날짜</th>
                                <th>상품명</th>
                                <th>결재상태</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>123</td>
                                <td>2021-12-23</td>
                                <td>시디즈 의자</td>
                                <td>결제완료</td>
                            </tr>
                            <tr>
                                <td>124</td>
                                <td>2021-12-24</td>
                                <td>유럽 소파</td>
                                <td>배송중</td>
                            </tr>
                            <tr>
                                <td>125</td>
                                <td>2021-12-23</td>
                                <td>무드등</td>
                                <td>배송중</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
        </div>
    </div>
    <script src="../js/myPage.js"></script>
    <script src="https://kit.fontawesome.com/a68ab22d16.js" crossorigin="anonymous"></script>

        <jsp:include page="/WEB-INF/views/layout/bottom.jsp"></jsp:include>
    </div>
</div>
    <script src='<c:url value="/js/fr_mypage.js"></c:url>'></script>
    <script src='<c:url value="/js/mypage.js"></c:url>'></script>
    <!-- <script src="https://kit.fontawesome.com/a68ab22d16.js" crossorigin="anonymous"></script> -->
</body>
</html>