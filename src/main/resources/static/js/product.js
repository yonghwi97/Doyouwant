
$(document).ready(function() {
	var price = $("#amount").val();
	console.log(price)
	optAmount = 0;

	function showAmount(optAmount) {

		var amount = price + optAmount;
   		$('#amount').text(amount.toLocaleString() + "원");
	}
        
	$('#option').on('change', function() {
		selected = $('#option option:selected');
		
		optAmount = parseInt(selected.attr("value"));
		showAmount(optAmount);
	});
            
});


$(document).ready(function(){
	//1. smallPicture에 hover했을 때 이벤트 발생하게 
	
	$('#smallPicture ul li img').hover(function(){
		
		// 2. 호버한 이미지의 유알엘 가져오기
		var imgSrc = $(this).attr('src');
		// 3. 큰 이미지의 src 속성 변경 
		$('#productPicture img').attr('src',imgSrc);
	})
})


function go(src) {
    let link = src
    location.href = link
}