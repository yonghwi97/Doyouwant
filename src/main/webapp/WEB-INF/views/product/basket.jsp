<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- ��Ʈ��Ʈ�� -->
   <link href="<c:url value='https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css'/>" 
     rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
    crossorigin="anonymous">
    
    
    <script
    src="<c:url value='https://code.jquery.com/jquery-3.6.0.min.js'/>"
    integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
    crossorigin="anonymous"></script>
    <script type="text/javascript" src="/js/product.js" ></script>
    
    
    <!-- ����css -->
    <link href="<c:url value='/css/basket.css'/>" rel="stylesheet">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <!-- ���� ��Ʈ -->
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
     <!-- ���� ��Ʈ -->  
    <link href="https://fonts.googleapis.com/css2?family=Rubik&display=swap" rel="stylesheet">

    <!-- ��Ʈ��� -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.2.0/css/all.min.css" integrity="sha512-6c4nX2tn5KbzeBJo9Ywpa0Gkt+mzCzJBrE1RB6fmpcsoN+b/w/euwIMuQKNyUoU/nToKN3a8SgNOtPrbW12fug==" crossorigin="anonymous" />

    <title>Document</title>
</head>
<body>
    <div class="container">
      <jsp:include page="/WEB-INF/views/layout/top.jsp" flush="true"/>
        
        <section>
            <div class="basket-Container">
                <div><h1>��ٱ���</h1></div>
                <div class="display-Row"> 
                    <div class="basket-Item-Container">
                    
                       <c:forEach items="${cartList }" var="cart">
                             <div class="basket-Item">
                                  <div class="main-X"><i class="fas fa-times" onclick="go(this);" data-prdNo="${cart.prdNo }"></i></div>
                                  <div class="basket-Item-Main-Box display-Row">
                                      <img src="<c:url value='/img/${cart.prdImg}.jpg'/>">
                                      <div id="margin-Box"></div>
                                      <h5>${ cart.prdName }</h5>
                                  </div>
                                  <div class="basket-Item-ChekBox display-Column">
                                  
                                      
                                        <div class="basket-Select-Box">
                                          <button class="buttn" id="minus" onClick="minus(this)">-</button>  
                                           <input type="text" name="quantity" id="boxNumber" value="${cart.count }" style="width:50px" data-price="${ cart.prdPrice }" data-prdNo="${cart.prdNo }">��
                                          <button class="buttn" id="plus" onClick="plus(this)">+</button>    
                                           <h5 class="basket-Price-Box amount" id="totalAmount" >${ cart.prdPrice } ��</h5>
                                      </div>
                                      
                                 
                               </div>
                           </div>
                       </c:forEach>
                    
              
                    </div>
                    
                    
                    <div class="colum">
                    <div class="basket-Price-Container">
                        <div class="basket-Price">
                            <div class="price" >
                                <p>�� ��ǰ�ݾ�</p>
                                <p id="prdPrice">0��</p>
                            </div>
                            <hr>
                            <div class="delivery">
                                <p>��ۺ�</p>
                                <p>2500��</p>
                            </div>
                            <hr>
                            <div class="discount">
                                <p>���αݾ�</p>
                                <p>-5000��</p>
                            </div>
                            <hr>
                            <div class="all">
                                <h5>�����ݾ�</h5>
                                <h5 id="totalPrice">0��</h5>
                            </div>
                        </div>
                    </div>
                    
                    <div><button class="btn-product btn1" id = "insertCart" type="submit">�����ϱ�</button></div>
                </div>
            </div>      
        </section>
        
        <div>

        </div>
      </div>
        
    <script>
        
       
        
        
        
        
        
        window.onload = function() {
            let amount = $('.amount').length;
            console.log("amount : " + amount);
            let value = [amount]
            let total = 0;

            for(let i=0; i<amount; i++) {
               value[i] = + parseInt($('.amount').eq(i).text());
            }
            
           /*  let fullPrice =  $('.amount').val(); */
           for(let i=0; i<amount; i++) {
               total += value[i]
            }
              $('#prdPrice').html(total + "��")
            $('#totalPrice').html((total -5000 +2500) + "��")
            console.log("total: " + total)

            $(".buttn").on("click", function() {
               let total = 0;
                for(let i=0; i<amount; i++) {
                    value[i] = + parseInt($('.amount').eq(i).text());
                }
                
            /*  let fullPrice =  $('.amount').val(); */
                for(let i=0; i<amount; i++) {
                        total += value[i]
                }
                $('#prdPrice').html(total + "��")
                $('#totalPrice').html((total -5000 +2500) + "��")
                console.log("total: " + total)
            })
         }
        
        
        function go(clickElement) {
           var prdNo = $(clickElement).data('prdno');
           console.log('prdNo' + prdNo);
           
           
           $.ajax({
                url:"<c:url value='/product/deleteCart'/>",
                type:"post",
                data:{prdNo : prdNo },
                success:function (result) {
                   console.log(result)
                    if(result == 0) {
           
                        let mainBtnX = $(".main-X");
                         let semiBtn = $(".semi-btn");
                         let basketItem = $(".basket-Item")[0];

                         $(clickElement).parent().parent().remove()
                         
                         let amount = $('.amount').length;
                         console.log("amount : " + amount);
                         let value = [amount]
                         let total = 0;

                         for(let i=0; i<amount; i++) {
                            value[i] = + parseInt($('.amount').eq(i).text());
                         }
                         
                        /*  let fullPrice =  $('.amount').val(); */
                        for(let i=0; i<amount; i++) {
                            total += value[i]
                         }
                           $('#prdPrice').html(total + "��")
                         $('#totalPrice').html((total -5000 +2500) + "��")
                         console.log("total: " + total)
                         
                         
                    }
                },
                error:function() {
                    alert("������ �߻��߽��ϴ�.")
                }
            })
       }
         
        
        
        
        
    
        
        
           
           function plus(clickElement) {
           
              // count input
              var countElement = $(clickElement).parent().find('#boxNumber');
              
              // amount h5
              var amountElement = $(clickElement).parent().find('#totalAmount');
              
              // ${ cart.prdPrice } ����
              var price = countElement.data('price');
              var prdNo = countElement.data('prdno');
              var count = (parseInt(countElement.val()) + 1);
              
              
              // +1 
              countElement.val(count);
              
              // price
              amountElement.html( parseInt(countElement.val()) * parseInt(price) + "��" );
              
              // DB update
              updateCountDB(prdNo, count)
              
           }
           
           
           function minus(clickElement) {
              // count input
               var countElement = $(clickElement).parent().find('#boxNumber');
               
               // amount h5
               var amountElement = $(clickElement).parent().find('#totalAmount');

               if (countElement.val() <= 0) {
                 countElement.val(0);
               }
               else {
                 // ${ cart.prdPrice } ����
                 var price = countElement.data('price')
                 
                 if(countElement != 1){
                   // ${ cart.prdPrice } ����
                     var price = countElement.data('price');
                     var prdNo = countElement.data('prdno');
                     var count = parseInt(countElement.val() - 1);
                    
                    countElement.val(parseInt(count));
                    
                    // price
                    amountElement.html( parseInt(countElement.val()) * parseInt(price) + "��");
                    
                    // DB update
                    updateCountDB(prdNo, count)
                 }
               }
           }
             
           
           
           
           function updateCountDB(prdNo, count) {
              $.ajax({
                  url:"<c:url value='/product/updateCart'/>",
                  type:"post",
                  data:{count : count, prdNo : prdNo },
                  success:function (result) {
                      if(result == "success") {

                      }
                  },
                  error:function() {
                      alert("������ �߻��߽��ϴ�.")
                  }
              });
              
           }


    </script>


</body>
</html>





