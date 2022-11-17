<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>로그인 | SRIRACHA</title>
    <link rel="stylesheet" href="../css/reset2.css" />
    <link rel="stylesheet" href="../css/login.css" />
   <!--  <script defer src="../js/login.js"></script>  -->
  </head>
  <body>
  <c:set var="user_pw" value="${requestScope.user_pw }" />
  <c:set var="real_pw" value="${requestScope.real_pw }" />
  
    <div class="container">
      <h1 class="logo-img">
        <a href="../"> <img src="../img/logo2.png" style="max-width:200px; width:100%; height:auto;"/></a>
      </h1>
      <div class="login-box">
        <h2>로그인</h2> 
        <c:choose>
        	<c:when test="${user_pw ne real_pw}">
        		<div class="login-error">아이디 비밀번호가 정확하지 않습니다.</div>
        	</c:when>
        </c:choose>
        	<div>
				<form action="/sriracha/login.do" method="post" id="loginForm"
					name="loginForm">
					<input class="inputBox login-id" type="text" name="user_id"
						id="user_id" placeholder="아이디를 입력하세요." />
					<p class="error-message-empty-id" id="login-id-text">정확한 이메일
						주소나 전화번호를 입력하세요.</p>
					<input class="inputBox login-pw" type="password" name="user_pw"
						id="user_pw" placeholder="비밀번호를 입력하세요." onkeyup="enterKey()"/>
					<p class="error-message-empty-pw" id="login-pw-text">비밀번호는
						4~60자 사이여야 합니다.</p>
					<input type="button" class="login-button" value="로그인"
						onclick="checkLogin()" />
					<div class="form-bottom">
						<div class="login-remember">
							<input type="checkbox" id="saveId" name="saveId" /> <label
								for="saveId">아이디 정보 저장</label>
						</div>
				</form>

			</div>
          <div class="underline"></div>
          <div class="login-other">
            <p class="no-member">회원이 아니신가요?</p>
            <button class="sign-up-go" onclick="location.href='../view/signUp.jsp'">회원가입</button>
          </div>
        </div>
      </div>
    </div>
  </body>
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script>
  window.onload = function() {
	  
      if (getCookie("id")) { // getCookie함수로 id라는 이름의 쿠키를 불러와서 있을경우
          document.loginForm.user_id.value = getCookie("id"); //input 이름이 id인곳에 getCookie("id")값을 넣어줌
          document.loginForm.saveId.checked = true; // 체크는 체크됨으로
      }
  }
  
      function setCookie(name, value, expiredays) //쿠키 저장함수
      {
          var todayDate = new Date();
          todayDate.setDate(todayDate.getDate() + expiredays);
          document.cookie = name + "=" + escape(value) + "; path=/; expires="
                  + todayDate.toGMTString() + ";"
      }

      function getCookie(Name) { // 쿠키 불러오는 함수
          var search = Name + "=";
          if (document.cookie.length > 0) { // if there are any cookies
              offset = document.cookie.indexOf(search);
              if (offset != -1) { // if cookie exists
                  offset += search.length; // set index of beginning of value
                  end = document.cookie.indexOf(";", offset); // set index of end of cookie value
                  if (end == -1)
                      end = document.cookie.length;
                  return unescape(document.cookie.substring(offset, end));
              }
          }
      }
      
			function checkLogin() {

				var user_id = document.getElementById("user_id");
				var user_pw = document.getElementById("user_pw");

				if (user_id.value != "") {
					document.getElementById("login-id-text").style.display = "none";
				}
				if (user_pw.value != "") {
					document.getElementById("login-pw-text").style.display = "none";
				}

				if (user_id.value == "") {
					document.getElementById("login-id-text").style.display = "block";
					user_id.focus();
					return false;
				}
				if (user_pw.value == "") {
					document.getElementById("login-pw-text").style.display = "block";
					user_pw.focus();
					return false;
				}
				
				
				if (document.loginForm.saveId.checked == true) { // 아이디 저장을 체크 하였을때
		            setCookie("id", document.loginForm.user_id.value, 7); //쿠키이름을 id로 아이디입력필드값을 7일동안 저장
		        } else { // 아이디 저장을 체크 하지 않았을때
		            setCookie("id", document.loginForm.user_id.value, 0); //날짜를 0으로 저장하여 쿠키삭제
		        }
				
				document.loginForm.submit();

			}
			
			function enterKey(){	// 비밀번호에서 엔터키입력시 로그인 가능 함수
		        if(window.event.keyCode == 13){
		        	document.loginForm.submit();
		        };
		    };
		</script>
</html>
