window.onload = function() {
	// id가 joinForm인 폼의  submit 버튼이 눌러졌을 때 수행되는 이벤트 처리
	document.getElementById('form1').onsubmit = function() {
		
		var id = document.getElementById('id');
		
		if(id.value == "") {
			alert("아이디를 입력하세요.");
			id.focus();
			return false;	
		}

		
	
		if(id.value.length < 3 || id.value.length > 10) {
			alert("아이디는 6자 이상이어야 합니다.");
			id.value = ""; //null  됨
			id.focus();
			
			return false;	
		}
		
		
		var password = document.getElementById('password');
		
		if(password.value = "" || password.value.length<6){
			alert("비밀번호 확인이 일치하지 않습니다");
			password.value = "";
			password.focus();
			
			return false;	   // 서버로 전송되지 않게 함(다음 페이지로 이동 못하게)		
		}		
		

	}
}


$(document).ready(function(){
	$('#form1').on('submit', function(){
		event.preventDefault();
		
		$.ajax({
			type:"post",
			url:"login",
			data:{"id": $('#id').val(),
				  "pwd":  $('#pwd').val()},  /* 컨트롤러에서 받을 때 : id, pw로 받음*/
			dataType:'text',
			success:function(result){
				if(result == "ok"){
					location.href="/index";
				}else{
				    alert("아이디 또는 비밀번호가 일치하지 않습니다.");
			 }
			},
			error:function(data, textStatus){
				alert("전송 실패");
			}
		});
	});	
});