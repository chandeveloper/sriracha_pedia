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
                    <form action="/sriracha/search.do" id="searchForm">
	                    <input class="menu_search" type="text" placeholder="영화 제목 키워드를 검색해보세요." name="search_content" onkeyup="searchEnter()">
                    </form>
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

	let searchForm = document.getElementById("searchForm");
	
	function doLogout(){
		if(confirm("로그아웃 하시겠습니까?\n(로그인 페이지로 이동합니다)")){
			location.href="/sriracha/logout.do";
		}
	}
	
	function searchEnter(){
		if(window.event.keyCode == 13){
			searchForm.submit();
		}
	}
	
	
	
	
	
</script>

</html>