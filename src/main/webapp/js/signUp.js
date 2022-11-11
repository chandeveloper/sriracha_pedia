let elInputUsername = document.querySelector('#user_name')
let elInputId = document.querySelector('#user_id')
let elInputPassword = document.querySelector('#user_pw')
let elInputPasswordretype = document.querySelector('#user_repw')
let elJoinbutton = document.querySelector('#joinbutton')
let idChkButton = document.querySelector('#idChkButton')

let elNameSuccess = document.querySelector('.name-success')
let elIdFailuremessage = document.querySelector('.idFailure-message')
let elIdSuccessmessage = document.querySelector('.idSuccess-message')
let elIdOverlapmessage = document.querySelector('.idOverlap-message')
let elPwSuccessmessage = document.querySelector('.pwSuccess-message')
let elPwFailuremessage = document.querySelector('.pwFailure-message')
let elMissmatchmessage = document.querySelector('.pwMissmatch-message')
let elMatchmessage = document.querySelector('.pwMatch-message')

elJoinbutton.disabled = true;

// 각 영역마다 true값을 전달해줄 flag변수 선언
let flagName = false;
let flagId = false;
let flagPw = false;
let flagRePw = false;
let flagIdChk = false;


//------------------------------- 이름이 입력될때 조건에 맞는지 표현하는 함수
elInputUsername.onkeyup = function() {
	var regName = /^[가-힣]{2,10}$/;

	if (regName.test(elInputUsername.value)) {
		elNameSuccess.classList.add('hide')
		flagName = true;
	}
	else {
		elNameSuccess.classList.remove('hide')
		flagName = false;

	}
}


//------------------------------- 아이디가 입력될때 조건에 맞는지 표현하는 함수
elInputId.onkeyup = function() {

	var regId = /^[a-z]+[a-z0-9]{5,19}$/g;;

	if (regId.test(elInputId.value)) {
		elIdFailuremessage.classList.add('hide')
		flagId = true;
	}
	else {
		elIdFailuremessage.classList.remove('hide')
		flagId = false;
	}

	// 중복확인
	userid = elInputId.value;
	if (userid == "") {
	} else {
		
		// 중복처리, ajax

		let xhr = new XMLHttpRequest();
		xhr.open("GET", "/join/idcheck.jsp?userid=" + userid, true);
		xhr.send();
		xhr.onreadystatechange = function() {
			if (xhr.readyState == XMLHttpRequest.DONE && xhr.status == 200) {
				//alert( xhr.responseText );

				if (xhr.responseText.trim() == "ok") {
					flagIdChk = true;
					elIdSuccessmessage.classList.remove('hide')
					elIdOverlapmessage.classList.add('hide')
				}
				else if (xhr.responseText.trim() == "not-ok") {
					flagIdChk = false;
					elIdSuccessmessage.classList.add('hide')
					elIdOverlapmessage.classList.remove('hide')
				}

				button();
			}
		}
	}

}


//------------------------------- 비밀번호입력할 때 조건에 맞는지 표현하는 함수
elInputPassword.onkeyup = function() {
	var regPw = /^(?=.*\d)(?=.*[a-zA-Z])[0-9a-zA-Z]{8,16}$/;

	if (regPw.test(elInputPassword.value)) {
		elPwFailuremessage.classList.add('hide')
		flagPw = true;
	}
	else {
		elPwFailuremessage.classList.remove('hide')
		flagPw = false;
	}
}

//------------------------------- 비밀번호 확인할 때 조건에 맞는지 표현하는 함수
elInputPasswordretype.onkeyup = function() {
	if (elInputPassword.value == elInputPasswordretype.value) {
		elMissmatchmessage.classList.add('hide')
		flagRePw = true;
	}
	else {
		elMissmatchmessage.classList.remove('hide')
		flagRePw = false;
	}
}


elInputUsername.addEventListener('keyup', button)
elInputId.addEventListener('keyup', button)
elInputPassword.addEventListener('keyup', button)
elInputPasswordretype.addEventListener('keyup', button)

//-------------------------------아이디, 비밀번호, 비밀번호 확인, 전화번호 값을 모두 입력하였을 때, 회원가입 버튼이 활성화 되는 함수
function button() {


	if (flagName && flagId && flagPw && flagRePw && flagIdChk) {
		elJoinbutton.disabled = false; 	// 버튼 비활성화

	} else {
		elJoinbutton.disabled = true; 	// 버튼 활성화

	}

}

elJoinbutton.addEventListener('click', join);
function join() {
	document.signUp.submit();
}

