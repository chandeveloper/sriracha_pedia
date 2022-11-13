<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko-KR">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <!-- css link -->
  <link rel="stylesheet" href="../css/modiIf.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.css">
  <link
  rel="stylesheet"
  href="https://use.fontawesome.com/releases/v5.2.0/css/all.css"
  />

  <!-- js link -->
  <!-- <script defer src="../js/modiIf.js"></script> -->

  <title>정보수정 | WATFLECHA</title>
</head>
<body>
  <div class="bg bgBlur">
    <h1 class="logo"><a href="./main.jsp"><img class="logo-img" src="../img/logo2.png" style="max-width:200px; width:100%; height:auto;" alt="로고"></a></h1>
    <div class="modiIf">
      <form class="modiIfForm" id="modiIfForm" name="modiIfForm" action="/sriracha/modiif.do" method="post">
	        <h2>회원 정보수정</h2>
	        <input class="modiIf-content modiIf-id" id='id' type="text" value="${session_id}" readonly>
	        <!-- <p class="alert nameMessage">이름 변경 희망시 입력하세요</p> -->
	          <div class="error-message-empty-id" id="id-text">이름을 입력해주세요.</div>
	        <div class="iconInput">
	          <!-- <i class="fas fa-pen penIcon"></i> -->
	          <input class="modiIf-content modiIf-name" id='name' name="user_name" type="text" placeholder="이름" >
	          <div class="error-message-empty-old-pw" id="old-pw-text">현재 비밀번호가 정확하지 않습니다.</div>
	        </div>
	        <!-- <p class="alert pwMessage">비밀번호 변경 희망시 입력하세요</p> -->
	        <div class="iconInput">
	         <!--  <i class="fas fa-pen penIcon2"></i> -->
	          <input class="modiIf-content modiIf-curPw pw" id='curPw' type="password" placeholder="현재 비밀번호" >
	          <p class="alert"></p>
	        </div>
	          <div class="error-message-empty-new-pw" id="new-pw-text">새 비밀번호를 입력하세요.</div>
	        <input class="modiIf-content modiIf-pw pw" id='pw' name="user_pw" type="password" placeholder="새 비밀번호" >
	        <p class="alert"></p>
	          <div class="error-message-empty-new-pw2" id="new-pw2-text">새 비밀번호를 다시한번 입력하세요.</div>
	        <input class="modiIf-content modiIf-rePw pw" id='rePw' type="password" placeholder="새 비밀번호 재입력" >
	        <p class="alert"></p>
	          <div class="error-message-empty-pw-correct" id="pw-correct-text">새 비밀번호가 서로 일치 하지 않습니다.</div>
	       
	        <div class="bt">
	          <input class='modiIf-bt submit-bt' type="button" value="회원정보 수정" onclick="modiif()">
	          <input class='modiIf-bt cancle-bt' type="button" onclick="location.href='./mypage.jsp'" value="뒤로가기">
	        </div>
	        <p class="completedMessage alert"></p>
      </form>
    </div>
  </div>
</body>
<script>
	function modiif(){
		var user_old_pw = ${session_pw};
		var input_pw = document.getElementById("curPw");
		var user_name = document.getElementById("name");
		var user_new_pw = document.getElementById("pw");
		var user_new_pw2 = document.getElementById("rePw");
		
		if(user_name.value != ""){
			document.getElementById("id-text").style.display = "none";
		}
		if (user_old_pw == input_pw.value) {
			document.getElementById("old-pw-text").style.display = "none";
		}
		if(user_new_pw.value != ""){
			document.getElementById("new-pw-text").style.display = "none";
		}
		if(user_new_pw2.value != ""){
			document.getElementById("new-pw2-text").style.display = "none";
		}
		
		if(user_new_pw.value == user_new_pw2.value){
			document.getElementById("pw-correct-text").style.display = "none";
		}
		
		
		
		if(user_name.value == ""){
			document.getElementById("id-text").style.display = "block";
			user_name.focus();
			return false;
		}
		if (user_old_pw != input_pw.value) {
			document.getElementById("old-pw-text").style.display = "block";
		return false;
		}
		if(user_new_pw.value == ""){
			document.getElementById("new-pw-text").style.display = "block";
			user_new_pw.focus();
			return false;
		}
		if(user_new_pw2.value == ""){
			document.getElementById("new-pw2-text").style.display = "block";
			user_new_pw2.focus();
			return false;
		}
		
		if(user_new_pw.value != user_new_pw2.value){
			document.getElementById("pw-correct-text").style.display = "block";
			return false;
		}
		
		
		
		
		
		
		
		document.modiIfForm.submit();
	}
</script>
</html>
