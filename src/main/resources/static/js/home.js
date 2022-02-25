


let rotateArr = [-3000, 5000, -1500, 4536, -3984, 2965, -3232]

let sti = document.getElementsByClassName("sti")

$(function(){
    rotation()
    setInterval(rotation, 12000)
})

function rotation() {
    for(i=0; i<5; i++) {
        let ranNum = Math.floor(Math.random()*rotateArr.length)
        sti[i].style.transform = "rotate(" + rotateArr[ranNum] + "deg)"
    }
}

let btn = document.getElementById("dark-mode-btn");

function darkMode() {
	btn.classList.toggle('left')
}

function go(src) {
    let link = src
    location.href = link
}

$(function(){


	
	$('.intImg').on('click', function(){
		location.href = "getFuniture.html";
	});
	
	

});


