<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko-KR">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="../css/signUp.css">
  <script defer src="../js/signUp.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.css">
  <title>회원가입 | WATFLECHA</title>
</head>
<body>
  <div class="bg bgBlur">
    <h1 class="logo"><a href="/"><img class="logo-img" src="../img/logo2.png" style="max-width:200px; width:100%; height:auto;" alt="로고"></a></h1>
    <div class="signUp">
      <h2>회원가입</h2>
      <form class="signUp-form" action="/sriracha/join.do" name="signUp" method="POST">
      	
      	<fieldset>
        <input class="signUp-input signup-name" id='user_name' name="user_name" type="text" placeholder="이름">
        <div class="name-success hide">이름은 한글 2~10자 이내로 입력해주세요.</div>
        </fieldset>
        
        <fieldset>
        <input class="signUp-input signup-id" id='user_id' name="user_id" type="text" placeholder="아이디">
        <div class="idFailure-message hide">아이디는 영문자로 시작하는 <br>6~20자 영문자 또는 숫자로 입력해주세요. </div>
    	<div class="idSuccess-message hide">사용할 수 있는 아이디 입니다.</div>
    	<div class="idOverlap-message hide">중복된 아이디입니다.</div>
        </fieldset>
        
        <fieldset>
        <input class="signUp-input signup-pw" id='user_pw' name="user_pw" type="password" placeholder="비밀번호">
        <div class="pwFailure-message hide">비밀번호는 8~16자 이내 <br> 영문/숫자 조합으로 입력해주세요. </div>
    	<div class="pwSuccess-message hide">사용할 수 있는 비밀번호 입니다.</div>
        </fieldset>
        
        <fieldset>
        <input class="signUp-input signup-repw" id='user_repw' name="user_repw" type="password" placeholder="비밀번호 재입력">
        <div class="pwMissmatch-message hide">두 비밀번호가 일치하지 않습니다.</div>
        <div class="pwMatch-message hide">두 비밀번호가 일치합니다.</div>
        </fieldset>
        <div class="bt">
          <input class='joinbutton' type="button" id="joinbutton" name="joinbutton" value="회원가입" > 
          <input class='signUp-bt cancle-bt' type="button" value="취소하기" onClick="location.href='./login.jsp'">
        </div>
        <p class="guideMessage">정보를 올바르게 입력해주세요.</p>
      </form>
    </div>
  </div>
</body>
</html>			
