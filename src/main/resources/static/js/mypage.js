
let footerContainer = document.getElementsByClassName("footer-Container")[0]
let footerBox = document.getElementsByClassName("footer-Box")

let contentContainer = document.getElementsByClassName("content-Container")[0];
let contentSlide = document.getElementsByClassName("content-Slide")[0];
let contentItem = document.getElementsByClassName("content-Item")[0];
let contentItem2 = document.getElementsByClassName("content-Item2")[0];
let contentTitle = document.getElementById("content-Title");

let content = document.getElementsByClassName("content")[0];
let content2 = document.getElementById("content2");

contentContainer.style.display = "none"
contentTitle.style.visibility = "hidden"
content2.style.display = "none"

let nextBtn = $(".nextBtn");
let backBtn = $(".backBtn");

//금주의 인테리어 누르면 가운데 글자가 사라지고 인테리어 사진이 보이는 함수
function bestInterior() {
    contentTitle.style.visibility = "visible"
    content.style.visibility = "visible"
    content2.style.display = "none"
    contentItem2.style.display = "none"
    contentContainer.style.display = "flex"
}

function bestSellar() {
    contentTitle.style.visibility = "hidden"
    contentContainer.style.display = "none"
    contentItem2.style.display = "none"
    // content.style.visibility = "hidden"
    content2.style.display = "flex"
}


//금주 인테리어 슬라이드 바
/*var position = 0;
nextBtn.on("click", function(){
    position -= 700
    $('.content-Slide').css("transition", "all 0.6s")
    $('.content-Slide').css("transform", 'translateX(' + position +'px)')
})

backBtn.on("click", function(){
    position += 700
    $('.content-Slide').css("transform", 'translateX(' + position +'px)')
})


let rotateArr = [-3000, 5000, -1500, 4536, -3984, 2965, -3232]
let ranArr = []

let sti = document.getElementsByClassName("sti")

$(function(){
    for(i=0; i<5; i++) {
        let ranNum = Math.floor(Math.random()*rotateArr.length)
        console.log(sti[i])
        sti[i].style.transform = "rotate(" + rotateArr[i] + "deg)"
    }

    // $("sti")[0].css("transform", "rotate(" + rotateArr[0] + "deg)")
})

function go(src) {
    let link = src
    location.href = link
}
*/
$(function(){
	var movedIndex = 0;
	
	
	function moveSlide(index){
		movedIndex = index;
		
		var moveLeft = -(index*730);
		$('.content-Box').animate({'left':moveLeft}, 'slow');
		
	}
	
	$('.backBtn').on('click', function(){
		if(movedIndex == 0) {
			movedIndex = 7
		} else {
			movedIndex = movedIndex - 1;
		}
		moveSlide(movedIndex);
		
	});
	
	$('.nextBtn').on('click', function(){
		if(movedIndex == 7) {
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

function go(src) {
    let link = src
    location.href = link
}



//  function spin() {
//      console.log("ddd")
//     $("#sti").css("transform", "rotate(3000deg)")
//  }
