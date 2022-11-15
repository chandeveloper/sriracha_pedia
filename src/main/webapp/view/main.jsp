<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
            <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
                <!DOCTYPE html>
                <html lang="en">

                <head>
                    <meta charset="UTF-8">
                    <meta name="viewport" content="width=device-width, initial-scale=1.0">
                    <title>스리라차 피디아</title>
                    <link rel="stylesheet" href="../css/style.css">
                    <link rel="stylesheet" href="../css/slide.css">
                    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap"
                        rel="stylesheet">
                    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css"
                        integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc"
                        crossorigin="anonymous">
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
                    <jsp:include page="../view/common/header.jsp" />
                    <!-- 헤더 끝 -->

                    <main class="first_contents-box">
                        <div class="contents">
                            <div class="movie">
                                <div class="contents_title">현재 상영작</div>
                                <br>
                                <div class="movie_chart">
                                    <div class="swiper-container2">
                                        <div class="chart_cont1 swiper-wrapper">

                                            <c:forEach var="nowPlayingMovie" items="${nowPlayingMovieList }"
                                                varStatus="status">
                                                <fmt:formatNumber type="number" var="nowPlayingMovie_vote_average"
                                                    pattern="0.0" value="${nowPlayingMovie.movie_vote_average/2}" />
                                                <div class="swiper-slide">
                                                    <div class="poster">
                                                        <a
                                                            href="/sriracha/get_contents_page.do?movie_id=${nowPlayingMovie.movie_id }">
                                                            <img src="https://image.tmdb.org/t/p/original${nowPlayingMovie.movie_poster_path}"
                                                                style="max-width:250px;  width:100%; max-height:auto;"
                                                                alt="">
                                                            <div class="rank"><strong>${status.count }</strong></div>
                                                        </a>
                                                    </div>
                                                    <div class="infor">
                                                        <div class="infor_btn">
                                                            <span
                                                                class="type1-content_title">${nowPlayingMovie.movie_title
                                                                }</span>
                                                            <span
                                                                class="type1-content_year">${nowPlayingMovie.movie_date
                                                                }</span>
                                                            <span class="type1-content_star">평균★
                                                                ${nowPlayingMovie_vote_average }</span>
                                                            <span class="type1-content_info">인기 점수 :
                                                                ${nowPlayingMovie.movie_popularity}점</span>
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


                                            <c:forEach var="popularMovie" items="${popularMovieList }"
                                                varStatus="status">
                                                <fmt:formatNumber type="number" var="popularMovie_vote_average"
                                                    pattern="0.0" value="${popularMovie.movie_vote_average/2}" />
                                                <div class="swiper-slide">
                                                    <div class="poster">
                                                        <a
                                                            href="/sriracha/get_contents_page.do?movie_id=${popularMovie.movie_id }">
                                                            <img src="https://image.tmdb.org/t/p/original${popularMovie.movie_poster_path}"
                                                                style="max-width:250px; width:100%; max-height:auto;"
                                                                alt="침묵">
                                                            <div class="rank"><strong>${status.count }</strong></div>
                                                        </a>
                                                    </div>
                                                    <div class="infor">
                                                        <div class="infor_btn">
                                                            <span class="type1-content_title">${popularMovie.movie_title
                                                                }</span>
                                                            <span class="type1-content_year">${popularMovie.movie_date
                                                                }</span>
                                                            <span class="type1-content_star">평균★
                                                                ${popularMovie_vote_average }</span>
                                                            <span class="type1-content_info">인기 점수 :
                                                                ${popularMovie.movie_popularity}점</span>
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


                                            <c:forEach var="topRatedMovie" items="${topRatedMovieList }"
                                                varStatus="status">
                                                <fmt:formatNumber type="number" var="topRatedMovie_vote_average"
                                                    pattern="0.0" value="${topRatedMovie.movie_vote_average/2}" />
                                                <div class="swiper-slide">
                                                    <div class="poster">
                                                        <a
                                                            href="/sriracha/get_contents_page.do?movie_id=${topRatedMovie.movie_id }">
                                                            <img src="https://image.tmdb.org/t/p/original${topRatedMovie.movie_poster_path}"
                                                                style="max-width:250px; width:100%; max-height:auto;"
                                                                alt="침묵">
                                                            <div class="rank"><strong>${status.count }</strong></div>
                                                        </a>
                                                    </div>
                                                    <div class="infor">
                                                        <div class="infor_btn">
                                                            <span
                                                                class="type1-content_title">${topRatedMovie.movie_title
                                                                }</span>
                                                            <span class="type1-content_year">${topRatedMovie.movie_date
                                                                }</span>
                                                            <span class="type1-content_star">평균★
                                                                ${topRatedMovie_vote_average }</span>
                                                            <span class="type1-content_info">인기 점수 :
                                                                ${topRatedMovie.movie_popularity}점</span>
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


                                            <c:forEach var="upComingMovie" items="${upComingMovieList }"
                                                varStatus="status">
                                                <fmt:formatNumber type="number" var="upComingMovie_vote_average"
                                                    pattern="0.0" value="${upComingMovie.movie_vote_average/2}" />
                                                <div class="swiper-slide">
                                                    <div class="poster">
                                                        <a
                                                            href="/sriracha/get_contents_page.do?movie_id=${upComingMovie.movie_id }">
                                                            <img src="https://image.tmdb.org/t/p/original${upComingMovie.movie_poster_path}"
                                                                style="max-width:250px; width:100%; max-height:auto;"
                                                                alt="침묵">
                                                            <div class="rank"><strong>${status.count }</strong></div>
                                                        </a>
                                                    </div>
                                                    <div class="infor">
                                                        <div class="infor_btn">
                                                            <span
                                                                class="type1-content_title">${upComingMovie.movie_title
                                                                }</span>
                                                            <span class="type1-content_year">${upComingMovie.movie_date
                                                                }</span>
                                                            <span class="type1-content_star">평균★
                                                                ${upComingMovie_vote_average }</span>
                                                            <span class="type1-content_info">인기 점수 :
                                                                ${upComingMovie.movie_popularity}점</span>
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

                    <!-- 푸터 시작 -->
                    <jsp:include page="../view/common/footer.jsp" />
                    <!-- 푸터 끝 -->

                    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
                    <script src="../slick/slick.js"></script>
                    <script src="../js/main.js"></script>
                </body>

                </html>