<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>스리라차 피디아</title>
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/slide.css">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css"
        integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="../slick/slick.css" />
    <link rel="stylesheet" type="text/css" href="../slick/slick-theme.css" />

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css" />
    <script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
</head>

<body>
	<c:set var="movieList" value="${requestScope.movieList }"></c:set>
	<c:set var="nowPlayingMovieList" value="${requestScope.nowPlayingMovieList }"></c:set>
	<c:set var="popularMovieList" value="${requestScope.popularMovieList }"></c:set>
	<c:set var="topRatedMovieList" value="${requestScope.topRatedMovieList }"></c:set>
	<c:set var="upComingMovieList" value="${requestScope.upComingMovieList }"></c:set>



    <!-- 헤더 시작 -->
    <header class="menu-box">
        <div class="menu">
            <div class="menu_left">
                <a href="./main.jsp"><img class="menu_logo" src="../img/logo.png"
                        style="max-width:200px; width:100%; height:auto;" /></a>
                
            </div>
            <div class="menu_right">
                <div class="menu_search-box">
                    <i class="fas fa-search"></i>
                    <input class="menu_search" type="text" placeholder="작품 제목,배우,감독을 검색해보세요.">
                </div>
                <span class="menu_login" onclick="location.href='/sriracha/logout.do'" style="cursor: pointer;">로그아웃 </span>
                <span class="menu_sign-up" id="js-signUp" onclick="location.href='../view/mypage.jsp'"
                    style="cursor: pointer;">마이페이지</span>
            </div>
            
            <div class="overlay"></div>
        </div>
    </header>
    
    <div class="forheader" style="margin-top: 65px"></div>

    <main class="first_contents-box">
        <div class="contents">
            <div class="movie">
                <div class="contents_title">현재 상영작</div>
                    <br>
                    <div class="movie_chart">
                        <div class="swiper-container2">
                            <div class="chart_cont1 swiper-wrapper">

                            	
                            	<c:forEach var="nowPlayingMovie" items="${nowPlayingMovieList }" varStatus="status">
                            		<div class="swiper-slide">
	                                    <div class="poster">
	                                        <a href="/sriracha/get_contents_page.do?movie_id=${nowPlayingMovie.movie_id }">
	                                        <img src="https://image.tmdb.org/t/p/original${nowPlayingMovie.movie_poster_path}" style="max-width:250px; width:100%; height:auto;"  alt="침묵">
	                                        <div class="rank"><strong>${status.count }</strong></div>
	                                    </a>
	                                    </div>
	                                    <div class="infor">
	                                        <div class="infor_btn">
	                                            <span class="type1-content_title">${nowPlayingMovie.movie_title }</span>
	                                            <span class="type1-content_year">${nowPlayingMovie.movie_date }</span>
	                                            <span class="type1-content_star">평균★ ${nowPlayingMovie.movie_vote_average/2 }</span>
	                                            <span class="type1-content_info">인기 점수 : ${nowPlayingMovie.movie_popularity}점</span>
	                                        </div>
	                                    </div>
	                                </div>
                            	</c:forEach>
	                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
	</main>
	
	
    <main class="first_contents-box">
        <div class="contents">
            <div class="movie">
                <div class="contents_title">인기영화</div>
                    <br>
                    <div class="movie_chart">
                        <div class="swiper-container2">
                            <div class="chart_cont1 swiper-wrapper">

                            	
                            	<c:forEach var="popularMovie" items="${popularMovieList }" varStatus="status">
                            		<div class="swiper-slide">
	                                    <div class="poster">
	                                        <a href="/sriracha/get_contents_page.do?movie_id=${popularMovie.movie_id }">
	                                        <img src="https://image.tmdb.org/t/p/original${popularMovie.movie_poster_path}" style="max-width:250px; width:100%; height:auto;"  alt="침묵">
	                                        <div class="rank"><strong>${status.count }</strong></div>
	                                    </a>
	                                    </div>
	                                    <div class="infor">
	                                        <div class="infor_btn">
	                                            <span class="type1-content_title">${popularMovie.movie_title }</span>
	                                            <span class="type1-content_year">${popularMovie.movie_date }</span>
	                                            <span class="type1-content_star">평균★ ${popularMovie.movie_vote_average/2 }</span>
	                                            <span class="type1-content_info">인기 점수 : ${popularMovie.movie_popularity}점</span>
	                                        </div>
	                                    </div>
	                                </div>
                            	</c:forEach>
	                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
	</main>
	
	
    <main class="first_contents-box">
        <div class="contents">
            <div class="movie">
                <div class="contents_title">최고순위 영화</div>
                    <br>
                    <div class="movie_chart">
                        <div class="swiper-container2">
                            <div class="chart_cont1 swiper-wrapper">

                            	
                            	<c:forEach var="topRatedMovie" items="${topRatedMovieList }" varStatus="status">
                            		<div class="swiper-slide">
	                                    <div class="poster">
	                                        <a href="/sriracha/get_contents_page.do?movie_id=${topRatedMovie.movie_id }">
	                                        <img src="https://image.tmdb.org/t/p/original${topRatedMovie.movie_poster_path}" style="max-width:250px; width:100%; height:auto;"  alt="침묵">
	                                        <div class="rank"><strong>${status.count }</strong></div>
	                                    </a>
	                                    </div>
	                                    <div class="infor">
	                                        <div class="infor_btn">
	                                            <span class="type1-content_title">${topRatedMovie.movie_title }</span>
	                                            <span class="type1-content_year">${topRatedMovie.movie_date }</span>
	                                            <span class="type1-content_star">평균★ ${topRatedMovie.movie_vote_average/2 }</span>
	                                            <span class="type1-content_info">인기 점수 : ${topRatedMovie.movie_popularity}점</span>
	                                        </div>
	                                    </div>
	                                </div>
                            	</c:forEach>
	                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
	</main>
	
	
    <main class="first_contents-box">
        <div class="contents">
            <div class="movie">
                <div class="contents_title">실시간 급상승 영화</div>
                    <br>
                    <div class="movie_chart">
                        <div class="swiper-container2">
                            <div class="chart_cont1 swiper-wrapper">

                            	
                            	<c:forEach var="upComingMovie" items="${upComingMovieList }" varStatus="status">
                            		<div class="swiper-slide">
	                                    <div class="poster">
	                                        <a href="/sriracha/get_contents_page.do?movie_id=${upComingMovie.movie_id }">
	                                        <img src="https://image.tmdb.org/t/p/original${upComingMovie.movie_poster_path}" style="max-width:250px; width:100%; height:auto;"  alt="침묵">
	                                        <div class="rank"><strong>${status.count }</strong></div>
	                                    </a>
	                                    </div>
	                                    <div class="infor">
	                                        <div class="infor_btn">
	                                            <span class="type1-content_title">${upComingMovie.movie_title }</span>
	                                            <span class="type1-content_year">${upComingMovie.movie_date }</span>
	                                            <span class="type1-content_star">평균★ ${upComingMovie.movie_vote_average/2 }</span>
	                                            <span class="type1-content_info">인기 점수 : ${upComingMovie.movie_popularity}점</span>
	                                        </div>
	                                    </div>
	                                </div>
                            	</c:forEach>
	                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
	</main>
    

    <footer>
        <div class="small-box ">
            <span class="review">
                지금까지&nbsp;
            </span>
            <span class="review review-red">
                ★ 562,339,084 개의 평가가&nbsp;
            </span>
            <span class="review">
                쌓였어요.
            </span>
        </div>
        <div class="big-box">
            <div class="first-column column">
                <span class="footer_info cursor">
                    서비스 이용약관 &nbsp;|&nbsp; 개인정보 처리방침 &nbsp;|&nbsp; 회사 안내
                </span>
            </div>
            <div class="second-column column">
                <span class="footer_info cursor">
                    고객센터 &nbsp;|&nbsp; cs@srirachapedia.co.kr
                </span>
                <span class="footer_info cursor">
                    제휴 및 대외 협력 &nbsp;|&nbsp; contact@sriracha.com, 070-1234-5678
                </span>
            </div>
            <div class="third-column column">
                <span class="footer_info">
                    주식회사 스리라차 &nbsp;|&nbsp; 대표 강태석 &nbsp;|&nbsp; 서울특별시 역삼동 코리아IT 아카데미
                </span>
                <span class="footer_info">
                    사업자 등록 번호 123-45-78910
                </span>
                <div class="footer_info">
                    <img src="../img/logo2.png" style="max-width:200px; width:100%; height:auto;" class="footer_logo">
                    <span class="footer_info">© 2022 sriracha. Inc</span>
                </div>
            </div>
        </div>
    </footer>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="../slick/slick.js"></script>
    <script src="../js/main.js"></script>
</body>

</html>