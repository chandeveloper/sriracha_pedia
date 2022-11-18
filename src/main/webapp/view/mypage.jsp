<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
      <!DOCTYPE html>
      <html lang="en">

      <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="../css/mypage.css" />
        <link rel="stylesheet" href="../css/style.css">
        <link rel="stylesheet" href="../css/comment_slide3.css">
        <link rel="stylesheet" href="../css/comment_slide4.css">
        <link rel="stylesheet" href="../css/mypag_slide.css">

        <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap"
          rel="stylesheet">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css"
          integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css" />


        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css"
          integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk" crossorigin="anonymous" />
        <script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">
		<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>
        <title>스리라차 피디아</title>

      </head>

      <body>

        <c:set var="user" value="${requestScope.user }" />
        <c:set var="movieList" value="${requestScope.movieList }" />
        <c:set var="boardList" value="${requestScope.boardList }" />

        <!-- 네비게이션바 -->
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
                  <input class="menu_search" type="text" placeholder="영화 제목 키워드를 검색해보세요." name="search_content"
                    onkeyup="searchEnter_mypage()">
                </form>
              </div>
              <span class="menu_login" id="logoutButton" style="cursor: pointer;">로그아웃 </span>
              <span class="menu_sign-up" id="js-signUp" onclick="location.href='/sriracha/get_main_page.do'"
                style="cursor: pointer;">메인페이지</span>
            </div>

            <div class="overlay"></div>
          </div>
        </header>

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
                      <br>
                      <li>
                        <h1>${user.user_name }
                          <!-- <span src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTIiIGhlaWdodD0iMTIiIHZpZXdCb3g9IjAgMCAxMiAxMiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICA8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTQuNzcwNDYgMC41NjI0NTlDNS4yNDMyOCAtMC4xNTY0MzIgNi4zMTE0NyAtMC4xOTMwNyA2LjgzNTM1IDAuNDkyMTU1QzcuMTczMzcgMC45MzM3ODggNy43NzM4NSAxLjEwMTEzIDguMzAxODEgMC45MDAxMjFDOS4xMTk4IDAuNTg4MjA1IDEwLjAwNjIgMS4xNjc0OCAxMC4wMTQ0IDIuMDIxMDRDMTAuMDE5NSAyLjU2OTYxIDEwLjQwNTUgMy4wNDc4OCAxMC45NTM5IDMuMTg1NTJDMTEuODA0NiAzLjM5OTQxIDEyLjE3MDIgNC4zNzQ3NiAxMS42NjA2IDUuMDY4OUMxMS4zMzE4IDUuNTE2NDggMTEuMzUzMiA2LjEyMTQ5IDExLjcxMzcgNi41NDYyOUMxMi4yNzIzIDcuMjA0NzggMTEuOTc3MiA4LjIwMTkyIDExLjE0MzggOC40NzIyNUMxMC42MDY3IDguNjQ3NTIgMTAuMjU3NCA5LjE1MDU0IDEwLjI5MTEgOS42OTkxMkMxMC4zNDQyIDEwLjU0OTcgOS41MDE3NCAxMS4xODc0IDguNjYzMzIgMTAuOTMxOUM4LjEyMjA4IDEwLjc2NzYgNy41MzQ4OCAxMC45NzQ1IDcuMjI5NTQgMTEuNDM3OUM2Ljc1NjcyIDEyLjE1NjggNS42ODc1MSAxMi4xOTI1IDUuMTY0NjUgMTEuNTA4MkM0LjgyNjYzIDExLjA2NTYgNC4yMjYxNSAxMC44OTgzIDMuNjk4MTkgMTEuMTAwM0MyLjg4MDIgMTEuNDEyMiAxLjk5Mzc4IDEwLjgzMTkgMS45ODQ1OSA5Ljk4MDM0QzEuOTgwNTEgOS40Mjk3OCAxLjU5NTUxIDguOTUyNSAxLjA0NjEgOC44MTM4N0MwLjE5NTQyOCA4LjU5OTk5IC0wLjE3MDE2NiA3LjYyNjYxIDAuMzM5NDE5IDYuOTMyNDdDMC42NjgyNDkgNi40ODM5MSAwLjY0NjgwNCA1Ljg3NzkgMC4yODYzMTYgNS40NTMxQy0wLjI3MjI4NyA0Ljc5NDYxIDAuMDIyODQzIDMuNzk5NDUgMC44NTYxNTIgMy41MjcxNUMxLjM5MzMxIDMuMzUyODcgMS43NDM1OSAyLjg1MDgzIDEuNzA4ODYgMi4zMDEyN0MxLjY1NTc2IDEuNDUwNjggMi40OTgyNiAwLjgxMTk5MiAzLjMzNjY4IDEuMDY4NDZDMy44Nzc5MiAxLjIzMjgzIDQuNDY1MTIgMS4wMjU4OCA0Ljc3MDQ2IDAuNTYyNDU5WiIgZmlsbD0iIzBFMEYxMCIvPgogIDxwYXRoIGQ9Ik03LjY5NzMzIDIuNDUwMkw3LjI4NjEyIDcuNzkzOTJMNy4xNzc3NCA3Ljc5ODI4TDYuNDUyMjYgMy45Nzk3NUg1LjI2MTIzTDQuNjY1NTggNy44OTE1N0w0LjUzNTc1IDcuODk2OEwzLjk1MDk2IDMuOTc5NzVIMi41TDMuODEwMjcgOS43MTU4Mkw1LjMxNTI4IDkuNjE0MzlMNS44NDU3NCA1Ljk3MTdINS45NjQ5OEw2LjU2MDM1IDkuNTMwMTFMOC4wNzY1MSA5LjQyNzIzTDkuMTA1MTEgMi40NTAySDcuNjk3MzNaIiBmaWxsPSIjRkYwNTU4Ii8+Cjwvc3ZnPgo=" class="css-1rvu9sa-Badge e19zkogf8"></span> -->
                        </h1>
                      </li>
                      <!-- <li class="profile__no">프로필이 없습니다.</li> -->
                    </ul>
                  </div>
                </section>
                <!-- 영화 부분 -->
                <div class="contents_contents_column">
                  <div class="preference">
                    <a href="#" style="text-decoration: none;" title="취향분석">
                      <span class="chart"></span>
                      <span class="chart-text">찜한 영화</span>
                    </a>
                  </div>
                </div>

                <section class="step3">
                  <div class="contents_contents_comment-container">
                    <div class="swiper-wrap">
                      <!-- Swiper -->
                      <div #swiperRef="" class="swiper mySwiper3">
                        <div class="swiper-wrapper">
                          <c:if test="${not empty movieList}">
                            <c:forEach var="movie" items="${movieList}" varStatus="status">
                              <div class="swiper-slide slide">
                                <ul>
                                  <li>
                                    <div class="poster">
                                      <a href="/sriracha/get_contents_page.do?movie_id=${movie.movie_id }">
                                        <img src="https://image.tmdb.org/t/p/original${movie.movie_poster_path}"
                                          style="max-width:250px;  width:100%; max-height:auto;" alt="">
                                      </a>
                                    </div>
                                    <div class="infor">
                                      <div class="infor_btn">
                                        <span class="type1-content_title">${movie.movie_title }</span>
                                      </div>
                                    </div>
                                  </li>
                                </ul>
                              </div>
                            </c:forEach>
                          </c:if>
                        </div>
                      </div>
                    </div>
                  </div>
                </section>
                <!-- 영화 부분 끝 -->


                <!-- 리뷰 부분 -->
                <div class="contents_contents_column">
                  <div class="preference">
                    <a href="#" style="text-decoration: none;" title="">
                      <span class="chart"></span>
                      <span class="chart-text">내가 쓴 리뷰</span>
                    </a>
                  </div>
                </div>

                <section class="step4">
                  <div class="contents_contents_comment-container">
                    <div class="swiper-wrap">
                      <!-- Swiper -->
                      <div #swiperRef="" class="swiper mySwiper4">
                        <div class="swiper-wrapper">

                          <c:if test="${not empty boardList }">

                            <c:forEach var="board" items="${boardList }">

                              <div class="swiper-slide slide">
                                <ul>
                                  <li>
                                    <div class="comment-nemo">
                                      <div class="comment_user">
                                        <img src="../img/user_profile.jfif" class="comment_user-img">
                                        <span class="user_name">${board.user_id }</span>
                                      </div>
                                      <div class="comment_comment">
                                        ${board.board_content }
                                      </div>
                                      <div class="comment_feel">
                                        <span class="comment_feel-good">
                                          <i class="fas fa-thumbs-up"></i>
                                          ${board.board_like }
                                        </span>
                                        <span class="comment_feel-comment">
                                          <i class="fas fa-comment"></i>
                                          ${board.comment_cnt }
                                        </span>
                                      </div>
                                      <div class="comment_click-good">좋아요</div>
                                    </div>
                                  </li>
                                </ul>
                              </div>

                            </c:forEach>
                          </c:if>


                        </div>
                      </div>
                    </div>
                  </div>
                </section>
              </div>
            </div>
          </section>


        </div>

        <!-- 푸터 시작 -->
        <jsp:include page="../view/common/footer.jsp" />
        <!-- 푸터 끝 -->
        <script src="../js/main.js"></script>
      </body>

      <script>
        function logout_mypage() {
          if (confirm("로그아웃 하시겠습니까?\n(로그인 페이지로 이동합니다)")) {
            location.href = "/sriracha/logout.do";
          }
        }

        function searchEnter_mypage() {
          if (window.event.keyCode == 13) {
            searchForm.submit();
          }
        }
        
     // 로그아웃 컨펌창  
        $().ready(function () {
                    $("#logoutButton").click(function () {
                        Swal.fire({
                            title: '정말로 로그아웃 하시겠습니까?',
                            text: "다시 되돌릴 수 없습니다. 신중하세요.",
//                            icon: 'warning',
                            showCancelButton: true,
                            confirmButtonColor: '#7066e0',
//                            cancelButtonColor: '#d33',
                            confirmButtonText: '승인',
                            cancelButtonText: '취소',
                        }).then((result) => {
                            if (result.isConfirmed) {
                            	location.href = "/sriracha/logout.do";
                            }
                            else{
        							window.location.reload();
        					}
                        })
                    });
                });
      </script>

      </html>