

let nextBtn = $("#nextBtn");
let backBtn = $("#backBtn");



$(function() {

    //금주 인테리어 슬라이드 바
    var position = 0;
    nextBtn.on("click", function(){
        position -= 1000
        if(position < -1000) {
            position = 0
            $('.content-Container2').css("transform", 'translateX(' + position +'px)')
        }
        else {
            $('.content-Container2').css("transform", 'translateX(' + position +'px)')
        }
        console.log("오른쪽")
    })

    backBtn.on("click", function(){
        position += 1000    
        if(position >= 1000) {
            position = 0
            $('.content-Container2').css("transform", 'translateX(' + position +'px)')
        }
        else {
            $('.content-Container2').css("transform", 'translateX(' + position +'px)')
        }
        console.log("왼쪽")
    })


	
});




function go(src) {
    let link = src
    location.href = link
}