
"use strict";
// Document Elements
const id = document.querySelector('#id');
const pass = document.querySelector('#password');
const email = document.querySelector('#email');
const nameText = document.querySelector('#name');
const joinSubmit = document.querySelector('#joinSubmit');
const selectBtn1 = document.querySelector('.selectBtn1');
const selectBtn2 = document.querySelector('.selectBtn2');
const tel = document.querySelector('#tel');
const selectBtnName = document.getElementsByName('selectBtn');

// 회원가입 테이블
const rows = document.createElement('tr');
const newCells = document.createElement('td');

// 테이블 유효성 검사
const idRegex = new RegExp(/^[A-Za-z0-9]{4,12}$/);
const pwRegex = new RegExp(/^[A-Za-z0-9]{4,12}$/);
const emailRegex = new RegExp(/^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/);
const nameRegex = new RegExp(/^[가-힣]{2,6}$/);
// const numRegex = new RegExp(/[^0-9]{1,13}/g);
const phoneNumRegex = new RegExp(/^\d{3}-\d{3,4}-\d{4}$/);
const varNumRegex = new RegExp(/^\d{2,3}-\d{3,4}-\d{4}$/);

// Submit 아이디 중복 키값
let idCheckKey = "";

// 회원가입 테이블 전달 함수
function tableData(trId, str, inputId, chkYn){

    let warningMsg = document.querySelector('#'+inputId);
    let trCellId = document.querySelector('#'+trId);

    if(chkYn == 'Y'){
        if(warningMsg != null){
            rows.remove();
        }
    }else{
        if(warningMsg == null){
            rows.appendChild(newCells);
            console.log(rows);
            trCellId.after(rows);
            newCells.setAttribute('colspan', '2');
            newCells.style.color = 'red';
            newCells.innerHTML = str;

        }
    }
}

function checkForm() {
    if(idRegex.test(id.value) === false) {
        tableData('cellId', '<small><span id="inputId" style="margin-left: 15%;">아이디를 입력해주세요. (대소문자, 숫자 4자 이상)</span></small><br/>', 'inputId')
        id.focus();
        id.classList.add('fail');
        
        return false;
    } else {
        tableData('cellId', '', 'inputId', 'Y')
        id.classList.remove('fail');
    }
    
    // ID Duplicate
    if(idCheckKey === "use") {
        tableData('cellId', '<small><span id="inputIdCheck" style="margin-left: 15%;">아이디가 중복되었습니다.</span></small><br/>', 'inputIdCheck')
        id.focus();
        id.classList.add('fail');
        idCheckKey = "use"
        return false;
    } else if(idCheckKey === "no_use") {
        tableData('cellId', '', 'inputIdCheck', 'Y')
        id.classList.remove('fail');
        idCheckKey = "no_use"
	}

    if(pwRegex.test(pass.value) === false) {
        tableData('cellPass', '<small><span id="inputPass" style="margin-left: 15%;">비밀번호를 입력해주세요. (대소문자, 숫자 4자 이상)</span></small><br/>', 'inputPass')
        pass.focus();
        pass.classList.add('fail');
        return false;
    } else {
        tableData('cellPass', '', 'inputPass', 'Y');
        pass.classList.remove('fail');
    }

    if(emailRegex.test(email.value) == false) {
        tableData('cellEmail', '<small><span id="inputEmail" style="margin-left: 15%;">이메일을 확인해주세요.</span></small><br/>', 'inputEmail')
        email.focus();
        email.classList.add('fail');
        return false;
    } else {
        tableData('cellEmail', '', 'inputEmail', 'Y')
        email.classList.remove('fail');
    }

    if(nameRegex.test(nameText.value) === false) {
        tableData('cellName', '<small><span id="inputName" style="margin-left: 15%;">이름을 입력해주세요.</span></small><br/>', 'inputName');
        nameText.classList.add('fail');
        return false;
    } else {
        tableData('cellName', '', 'inputName', 'Y');
        nameText.classList.remove('fail');
    }

    if(selectBtn1.checked === false && selectBtn2.checked === false) {
        tableData('cellRadio', '<small><span id="inputRadio" style="margin-left: 15%;">성별을 체크 하세요.</span></small><br/>', 'inputRadio');
        return false;
    } else {
        tableData('cellRadio', '', 'inputRadio', 'Y')
    }

    if(phoneNumRegex.test(tel.value) === false && varNumRegex.test(tel.value) === false) {
        tableData('cellNum', '<small><span id="inputTel" style="margin-left: 15%;">전화번호를 확인해주세요.</span></small><br/>', 'inputTel')
        tel.focus();
        tel.classList.add('fail');
        return false;
    } else {
        tel.classList.remove('fail');
        tableData('cellNum', '', 'inputTel', 'Y')
    }
     

     return true;
     
     /*   
    const xhr = new XMLHttpRequest();
    const data = {
		id: id.value, 
		pw: pass.value,
		email: email.value, 
		name: nameText.value, 
		sex: (function() { // Immediately invoked function expression(IIFE)
			    for(let i = 0; i < selectBtnName.length; i++) {
					if(selectBtnName[i].checked) {
						return selectBtnName[i].value; // sex : 'male' or 'female'
					}
				}
		}()), 
		num: tel.value
	}
    xhr.open('POST', "/signup", true);
    xhr.setRequestHeader('Content-type', 'application/json');
    xhr.send(JSON.stringify(data));
	
    xhr.onload = function() {
        if(xhr.readyState === xhr.DONE) {
            if(xhr.status === 200) {
                console.log("Success!");

            } else {
				console.log(xhr.status);
                console.log("Error...");
            }
        } else {
            alert("404 Not Found");
        }
    }
    */
}

// ID Duplicate
function idChecking() {
    const xhr = new XMLHttpRequest();
    xhr.open('POST', "/idcheck", true);
    xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencode');
    xhr.send(id.value);

    // XMLHttpRequest.onreadystatechange {}
    xhr.onload = function() {
		// xhr.DONE = readyState == 4
        if(xhr.readyState === xhr.DONE) {
            if(xhr.status === 200) {
                console.log("Success!");
                if(xhr.response === "use") {
		            tableData('cellId', '<small><span id="inputIdCheck" style="margin-left: 15%;">아이디가 중복되었습니다.</span></small><br/>', 'inputIdCheck')
		            id.classList.add('fail');
		            idCheckKey = "use"
		            return false;
		        } else if(xhr.response === "no_use") {
		            tableData('cellId', '', 'inputIdCheck', 'Y')
		            idCheckKey = "no_use"
		        }
            } else {
                console.log("Error...");
            }
        } else {
            alert("404 Not Found");
        }
    }
}

id.addEventListener('keyup', function() {

    for(let i = 0; i < selectBtnName.length; i++) {
		if(selectBtnName[i].checked) {
			console.log(selectBtnName[i].value);
		}
	}
})

id.addEventListener('blur', function inputCheckId() {	
    if(id.value.length == 0 || id.value.length >= 4) {
        id.classList.remove('fail');
    } else {
        id.classList.add('fail');
    }
})

pass.addEventListener('blur', function inputCheckPass() {
    if(pass.value.length == 0 || pass.value.length >= 4) {
        pass.classList.remove('fail');
    } else {
            pass.classList.add('fail');
    }
})

email.addEventListener('blur', function inputCheckEmail() {
    if(email.value.length == 0) {
        email.classList.remove('fail');
    } else if(emailRegex.test(email.value) == false){
        email.classList.add('fail');
    }
})

tel.addEventListener('keyup', function() {
		
	// this.getAttribute('maxlength');
    phoneNumber(tel.value);
})

tel.addEventListener('blur', function() {
	if(tel.value.length == 0) {
		tel.classList.remove('fail');
	} else if(phoneNumRegex.test(tel.value) === false || varNumRegex.test(tel.value) === false) {
		tel.classList.add('fail');
	} else {
		tel.classList.remove('fail');
	}
})

function phoneNumber(numValue) {

// tel.setAttribute('maxlength', '10');
// console.log(tel);
    if (!numValue) {
      return "";
    }
  
    numValue = numValue.replace(/[^0-9]/g, "");
  
    let result = new Array();
    let restNumber = "";
  
    if (numValue.startsWith("02")) {
		tel.setAttribute('maxlength', '12');
      // 서울 02 지역번호
      result.push(numValue.substr(0, 2));
      restNumber = numValue.substring(2);
    } else if (numValue.startsWith("1")) {
	tel.setAttribute('maxlength', '13');
      // 지역 번호가 없는 경우
      // 1xxx-yyyy
      restNumber = numValue;
    } else {
	tel.setAttribute('maxlength', '13');
      // 나머지 3자리 지역번호
      // 0xx-yyyy-zzzz
      result.push(numValue.substr(0, 3));
      restNumber = numValue.substring(3);
    }
  
    if (restNumber.length === 7) {
      // 7자리만 남았을 때 xxx-yyyy
      result.push(restNumber.substring(0, 3));
      result.push(restNumber.substring(3));
    } else {
      result.push(restNumber.substring(0, 4));
      result.push(restNumber.substring(4));
    }

    return tel.value = result.filter((val) => val).join("-");
}

// submit 클릭 시 이벤트 리스너
/*joinSubmit.addEventListener('click', function check () {
    checkForm();
})*/

// ::-webkit-validation-bubble-message { display: none; }
document.addEventListener('invalid', (function () {
    return function (e) {
      e.preventDefault();
      document.getElementById("email").focus();
    };
})(), true)

document.body.addEventListener('keydown', function(e) {
    if(e.key === 'Enter') {
        e.preventDefault();
    };
})