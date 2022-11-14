// -------------------------------id 값 변수
let elInputUsername = document.querySelector('#user_name')
let elInputId = document.querySelector('#user_id')
let elInputPassword = document.querySelector('#user_pw')
let elInputPasswordretype = document.querySelector('#user_repw')
let elJoinbutton = document.querySelector('#joinbutton')
let idChkButton = document.querySelector('#idChkButton')

// ------------------------------- 성공, 에러 메세지 변수
let elNameSuccess = document.querySelector('.name-success')
let elIdFailuremessage = document.querySelector('.idFailure-message')
let elIdSuccessmessage = document.querySelector('.idSuccess-message')
let elIdOverlapmessage = document.querySelector('.idOverlap-message')
let elPwSuccessmessage = document.querySelector('.pwSuccess-message')
let elPwFailuremessage = document.querySelector('.pwFailure-message')
let elMissmatchmessage = document.querySelector('.pwMissmatch-message')
let elMatchmessage = document.querySelector('.pwMatch-message')

// ------------------------------- 회원가입 버튼 비활성화
elJoinbutton.disabled = true;

// -------------------------------각 영역마다 true값을 전달해줄 flag변수 선언
let flagName = false;
let flagId = false;
let flagPw = false;
let flagRePw = false;
let flagIdChk = false;


//------------------------------- 이름이 유효성체크
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


//------------------------------- 아이디가 유효성체크
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
   
}

//------------------------------- 아이디가 중복확인 유효성체크
function checkId(userid){
   
   if( userid == "" ){
   } else {
      let xhr = new XMLHttpRequest();
      xhr.open("POST", "/join/idcheck.jsp?userid="+ userid, true);      
      xhr.send();
      xhr.onreadystatechange = function(){
         if( xhr.readyState == XMLHttpRequest.DONE && xhr.status == 200 ){
            //alert( xhr.responseText );
            
            if( xhr.responseText.trim() == "ok" ){
               flagIdChk = true;
               elIdSuccessmessage.classList.remove('hide')
               elIdOverlapmessage.classList.add('hide')
               
            } else {
               flagIdChk = false;
               elIdOverlapmessage.classList.remove('hide')
               elIdSuccessmessage.classList.add('hide')
            }
            button();
            
         }
      }   
   }
   
}


//------------------------------- 비밀번호 유효성체크
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

//------------------------------- 비밀번호확인 유효성체크
elInputPasswordretype.onkeyup = function() {
   if (elInputPassword.value == elInputPasswordretype.value) {
      elMissmatchmessage.classList.add('hide')
      flagRePw = true;
   }
   else {
      elMissmatchmessage.classList.remove('hide')
      flagRePw = false;
   }
   // 엔터키 페이징처리
   if (window.event.keyCode == 13) {
      $().ready(function () {
            $(function () {
                Swal.fire({
                    title: '정말로 회원가입을 하시겠습니까?',
                    text: "다시 되돌릴 수 없습니다. 신중하세요.",
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: '승인',
                    cancelButtonText: '취소'
                }).then((result) => {
                    if (result.isConfirmed) {
                            document.signUp.submit();
                    }
                    else{
							window.location.reload();
					}
                })
            });
        });
   };
   
}

//------------------------------- keyup 
elInputUsername.addEventListener('keyup', button)
elInputId.addEventListener('keyup', button)
elInputPassword.addEventListener('keyup', button)
elInputPasswordretype.addEventListener('keyup', button)

//------------------------------- 아이디, 비밀번호, 비밀번호 확인, 전화번호 값을 모두 입력하였을 때, 회원가입 버튼이 활성화 되는 함수
function button() {

   if (flagName && flagId && flagPw && flagRePw && flagIdChk) {
      elJoinbutton.disabled = false;    // 버튼 활성화

   } else {
      elJoinbutton.disabled = true;    // 버튼 비활성화

   }

}

// 회원가입 컨펌창  
$().ready(function () {
            $("#joinbutton").click(function () {
                Swal.fire({
                    title: '정말로 회원가입을 하시겠습니까?',
                    text: "다시 되돌릴 수 없습니다. 신중하세요.",
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: '승인',
                    cancelButtonText: '취소'
                }).then((result) => {
                    if (result.isConfirmed) {
                            document.signUp.submit();
                    }
                    else{
							window.location.reload();
					}
                })
            });
        });
