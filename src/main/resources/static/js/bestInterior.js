
function go(src) {
    let link = src
    location.href = link
}


$(document).ready(function(){
		
		event.preventDefault();
		
			
		$.ajax({
			type:"post",
			url:"interior",
			data:{"memId":$('#memId').val()},  /* 컨트롤러에서 받을 때 : id, pw로 받음*/
			dataType:'text',
			success:function(result){
				if(result == "no"){
					alert("사용할 수 없는 아이디 입니다.");
				}else{
					alert("사용 가능한 아이디 입니다.");
				}
			},
			error:function(data, textStatus){
				alert("전송 실패");
			}
		});

});


$(function(){
	
	var movedIndex = 0;
	
	
	function moveSlide(index){
		movedIndex = index;
		
		var moveLeft = -(index*770);
		$('.content-Box').animate({'left':moveLeft}, 'slow');
		
	}
	
	$('.backBtn').on('click', function(){
		if(movedIndex == 0) {
			movedIndex = 4
		} else {
			movedIndex = movedIndex - 1;
		}
		moveSlide(movedIndex);
		
	});
	
	$('.nextBtn').on('click', function(){
		if(movedIndex == 4) {
			movedIndex = 0
		} else {
			movedIndex = movedIndex + 1;
		}
		moveSlide(movedIndex);
		
	});
	

	

	
	
	$('.intImg').on('click', function(){
		location.href = "getFuniture.html";
	});
	
	

});
