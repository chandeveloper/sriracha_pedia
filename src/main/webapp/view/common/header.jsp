<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<header class="menu-box">
        <div class="menu">
            <div class="menu_left">
                <a href="/sriracha/get_main_page.do"><img class="menu_logo" src="../img/logo.png"
                        style="max-width:200px; width:100%; height:auto;" /></a>
                
            </div>
            <div class="menu_right">
                <div class="menu_search-box">
                    <i class="fas fa-search"></i>
                    <input class="menu_search" type="text" placeholder="작품 제목,배우,감독을 검색해보세요.">
                </div>
                <span class="menu_login" onclick="doLogout()" style="cursor: pointer;">로그아웃 </span>
                <span class="menu_sign-up" id="js-signUp" onclick="location.href='../view/mypage.jsp'"
                    style="cursor: pointer;">마이페이지</span>
            </div>
            
            <div class="overlay"></div>
        </div>
    </header>
    
    <div class="forheader" style="margin-top: 65px"></div>
</body>

<script>
	function doLogout(){
		if(confirm("로그아웃 하시겠습니까?\n(로그인 페이지로 이동합니다)")){
			location.href="/sriracha/logout.do";
		}
	}
</script>

</html>