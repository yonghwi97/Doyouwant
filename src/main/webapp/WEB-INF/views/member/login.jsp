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

    
   <link href="<c:url value='/css/login.css'/>" rel="stylesheet">     

   
     <script
    src="https://code.jquery.com/jquery-3.6.0.min.js"
    integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
    crossorigin="anonymous"></script>
    
     <script src="<c:url value='/js/login.js'/>"></script>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <!-- 구글 폰트 -->
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
     <!-- 구글 폰트 -->  
    <link href="https://fonts.googleapis.com/css2?family=Rubik&display=swap" rel="stylesheet">


    <title>Login</title>
</head>
<body>
    <div class="container">
        <jsp:include page="/WEB-INF/views/layout/top.jsp" flush="true"/>
        <section>
            <div class="title"><h1>WHAT DO YOU WANT?</h1></div>
            <h2>가
            <span style = " font-size:20px;">
            지
            </span>
            구 싶니?</h2>
            <div class = "form1">
                <div class="login-title">
                    <h3>LOGIN</h3>
                </div>
                <form  action="/login" name="form1" id="form1" method="post" action="joinMemberOk.jsp">
                    
                        <td>
                            <div>
                                <input type = "text" name ="id" class="text"  class = "text " placeholder="아이디" autofocus id="id" value="hgs">
                            </div>
                            <div>
                                <input type = "password" name ="pwd" class="text" placeholder="비밀번호" id="pwd" value="1234">
                            </div>
                        </td>
                
                        <div calss = "form3">
                                <div id="input-box">
                                    <input type="checkbox" name="idr" value="아이디기억하기" >ID기억하기                     
                                    <input type="checkbox" name="pswr" value="비밀번호기억하기"> 비밀번호기억하기
                                </div>
                                
                                <div id="btn-box">
                                    <button type="submit" id ="form1-submit"><h4>로그인</h4></button>
                                </div>
                        </div>
                </form> 
                <div class = "form2">
                    <td>
                        <li><div class="sns-logo"><a href ="https://ko-kr.facebook.com/" target ="_blank"><img src="img/facebook.png" class = "facebook"></a></div></li>
                        <li><div class="sns-logo"><a href ="https://www.kakaocorp.com/page/service/service/KakaoTalk" target ="_blank"><img src="img/kakao.jpg" class = "instagram"></a></div></li>
                        <li><div class="sns-logo"><a href ="https://www.instagram.com/" target ="_blank"><img src="img/instar.png" class = "twitter"></a></div></li>
                        <!-- <li><a href ="https://www.instagram.com/?hl=ko" target ="_blank"> <img src="image/인스타.jpg" class = "instagram"></a> </li>
                        <li><a href ="https://twitter.com/i/flow/login" target ="_blank"> <img src="image/트위터.jpg" class = "twitter" ></a> </li> -->
                    </td>
                </div>
            </div>
      
        </section>
        <jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush="true"/>
    </div>


</body>
</html>