<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="../css/mypage.css" />
    <link rel="stylesheet" href="../css/style.css">

    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css"
        integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc" crossorigin="anonymous">

 
    <link
      rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.15.3/css/all.css"
      integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk"
      crossorigin="anonymous"
    />
    <title>스리라차 피디아</title>

  </head>
  <body>
     <!-- 헤더 시작 -->
     <jsp:include page="../view/common/header.jsp" />
     <!-- 헤더 끝 -->

    <!-- 상세페이지 & footer -->
    <div id="middle_buttom">
      <section class="explanation">
        <div class="explanation__border">
          <div class="top_page" style="background-image: im;">
            <div class="pageBox">
              <button onclick="location.href='./modiIf.jsp'"><i class="fas fa-cog"></i></button>
            </div>
          </div>
          <div id="middleLike">
            <section class="middle">
              <div class="introduction">
                <ul class="introduction_items">
                  <li><i class="fas fa-user-circle"></i></li>
                  <li>
                    <h1>강태석
                    <!-- <span src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTIiIGhlaWdodD0iMTIiIHZpZXdCb3g9IjAgMCAxMiAxMiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICA8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTQuNzcwNDYgMC41NjI0NTlDNS4yNDMyOCAtMC4xNTY0MzIgNi4zMTE0NyAtMC4xOTMwNyA2LjgzNTM1IDAuNDkyMTU1QzcuMTczMzcgMC45MzM3ODggNy43NzM4NSAxLjEwMTEzIDguMzAxODEgMC45MDAxMjFDOS4xMTk4IDAuNTg4MjA1IDEwLjAwNjIgMS4xNjc0OCAxMC4wMTQ0IDIuMDIxMDRDMTAuMDE5NSAyLjU2OTYxIDEwLjQwNTUgMy4wNDc4OCAxMC45NTM5IDMuMTg1NTJDMTEuODA0NiAzLjM5OTQxIDEyLjE3MDIgNC4zNzQ3NiAxMS42NjA2IDUuMDY4OUMxMS4zMzE4IDUuNTE2NDggMTEuMzUzMiA2LjEyMTQ5IDExLjcxMzcgNi41NDYyOUMxMi4yNzIzIDcuMjA0NzggMTEuOTc3MiA4LjIwMTkyIDExLjE0MzggOC40NzIyNUMxMC42MDY3IDguNjQ3NTIgMTAuMjU3NCA5LjE1MDU0IDEwLjI5MTEgOS42OTkxMkMxMC4zNDQyIDEwLjU0OTcgOS41MDE3NCAxMS4xODc0IDguNjYzMzIgMTAuOTMxOUM4LjEyMjA4IDEwLjc2NzYgNy41MzQ4OCAxMC45NzQ1IDcuMjI5NTQgMTEuNDM3OUM2Ljc1NjcyIDEyLjE1NjggNS42ODc1MSAxMi4xOTI1IDUuMTY0NjUgMTEuNTA4MkM0LjgyNjYzIDExLjA2NTYgNC4yMjYxNSAxMC44OTgzIDMuNjk4MTkgMTEuMTAwM0MyLjg4MDIgMTEuNDEyMiAxLjk5Mzc4IDEwLjgzMTkgMS45ODQ1OSA5Ljk4MDM0QzEuOTgwNTEgOS40Mjk3OCAxLjU5NTUxIDguOTUyNSAxLjA0NjEgOC44MTM4N0MwLjE5NTQyOCA4LjU5OTk5IC0wLjE3MDE2NiA3LjYyNjYxIDAuMzM5NDE5IDYuOTMyNDdDMC42NjgyNDkgNi40ODM5MSAwLjY0NjgwNCA1Ljg3NzkgMC4yODYzMTYgNS40NTMxQy0wLjI3MjI4NyA0Ljc5NDYxIDAuMDIyODQzIDMuNzk5NDUgMC44NTYxNTIgMy41MjcxNUMxLjM5MzMxIDMuMzUyODcgMS43NDM1OSAyLjg1MDgzIDEuNzA4ODYgMi4zMDEyN0MxLjY1NTc2IDEuNDUwNjggMi40OTgyNiAwLjgxMTk5MiAzLjMzNjY4IDEuMDY4NDZDMy44Nzc5MiAxLjIzMjgzIDQuNDY1MTIgMS4wMjU4OCA0Ljc3MDQ2IDAuNTYyNDU5WiIgZmlsbD0iIzBFMEYxMCIvPgogIDxwYXRoIGQ9Ik03LjY5NzMzIDIuNDUwMkw3LjI4NjEyIDcuNzkzOTJMNy4xNzc3NCA3Ljc5ODI4TDYuNDUyMjYgMy45Nzk3NUg1LjI2MTIzTDQuNjY1NTggNy44OTE1N0w0LjUzNTc1IDcuODk2OEwzLjk1MDk2IDMuOTc5NzVIMi41TDMuODEwMjcgOS43MTU4Mkw1LjMxNTI4IDkuNjE0MzlMNS44NDU3NCA1Ljk3MTdINS45NjQ5OEw2LjU2MDM1IDkuNTMwMTFMOC4wNzY1MSA5LjQyNzIzTDkuMTA1MTEgMi40NTAySDcuNjk3MzNaIiBmaWxsPSIjRkYwNTU4Ii8+Cjwvc3ZnPgo=" class="css-1rvu9sa-Badge e19zkogf8"></span> -->
                    </h1>
                  </li>
                  <li class="profile__no">프로필이 없습니다.</li>
                </ul>
              </div>

              <div class="preference">
                <a href="#"  style="text-decoration: none;" title="취향분석">
                    <span class="chart"></span>
                    <span style="color: black;">취향분석</span>
                </a>
              </div>
            </section>
            <section id="like">
              <div class="like">
                <ul class="like__items">
                  <li class="item__movie">
                    <a href="#">
                      <ul>
                        <li><span style="color: white; font-weight: bold;">영화</span></li>
                        <li>⭐0</li>
                        <li class="third" style="color: white; font-weight: bold;">보고싶어요</li>
                      </ul>
                    </a>
                  </li>
                  <li class="item__tv">
                    <a href="#"
                      ><ul>
                        <li><span style="color: white; font-weight: bold;">TV프로그램</span></li>
                        <li>⭐0</li>
                        <li class="third" style="color: white; font-weight: bold;">보고싶어요</li>
                      </ul></a
                    >
                  </li>
                  <li class="item__book">
                    <a href="#"
                      ><ul>
                        <li><span style="color: white; font-weight: bold;">책</span></li>
                        <li>⭐0</li>
                        <li class="third" style="color: white; font-weight: bold;">보고싶어요</li>
                      </ul></a
                    >
                  </li>
                </ul>
              </div>
            </section>
          </div>
        </div>
      </section>
    </div>
    
    <!-- 푸터 시작 -->
	<jsp:include page="../view/common/footer.jsp" />
    <!-- 푸터 끝 -->
  </body>
  
<script>
function logout_mypage(){
	if(confirm("로그아웃 하시겠습니까?\n(로그인 페이지로 이동합니다)")){
		location.href="/sriracha/logout.do";
	}
}

function searchEnter_mypage(){
	if(window.event.keyCode == 13){
		searchForm.submit();
	}
}
</script>
</html>
