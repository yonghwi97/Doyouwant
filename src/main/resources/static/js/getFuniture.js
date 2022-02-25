$(function() {

    let rollimsItem = $(".rollimgs-item")
    let rollimgs = document.getElementsByClassName("rollimgs")[0]

    console.log(rollimsItem.length);





    let i = 0;
    setInterval(function() {
        i++
        if(rollimsItem.length <= i) {
            i=0
            rollimgs.style.transform = 'translateX(0px)' 
        }
        else {
            rollimgs.style.transform = 'translateX('  + (-620 *i) + 'px)'
        }
        console.log(i);
    }, 2000);
      



    // rollimsItem의 개수를 찾아와주세요
    // 무한반복
    //     i++
    //     만약에 rollimsItem의 개수보다 i 가 커지면
    //         i를 다시 0으로 만들어 주세요
    //     아니면
    //     rollimgs의 transform을 translateX를 (-600 * i)를 해주세요



});


function go(src) {
    let link = src
    location.href = link
}