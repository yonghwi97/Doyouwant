const menu1 = document.querySelector('.menu1');
const menu2 = document.querySelector('.menu2');
const menu3 = document.querySelector('.menu3');

menu1.addEventListener('click', function() {
    location.href = 'http://localhost:8088/mypage';
})

menu2.addEventListener('click', function() {
    location.href = 'http://localhost:8088/mypage2';
})

menu3.addEventListener('click', function() {
    location.href = 'http://localhost:8088/mypage3';
})
