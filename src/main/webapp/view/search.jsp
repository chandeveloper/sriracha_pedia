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
	<c:set var="search_content" value="${requestScope.search_content }" />
	<c:set var="searchedList" value="${requestScope.searchedList }" />

    <!-- 헤더 시작 -->
    <jsp:include page="../view/common/header.jsp" />
    <!-- 헤더 끝 -->

    <main class="first_contents-box">
        <div class="contents">
            <div class="movie">
                <div class="contents_title">"${search_content }" 검색 결과</div>
                    <br>
                    <div class="movie_chart">
                        <div class="swiper-container2">
                            <div class="chart_cont1 swiper-wrapper">
                            	
                            	<c:choose>
                            		<c:when test="${not empty searchedList }">
                            			<c:forEach var="searchedMovie" items="${searchedList }" varStatus="status">
		                            		<div class="swiper-slide">
			                                    <div class="poster">
			                                        <a href="/sriracha/get_contents_page.do?movie_id=${searchedMovie.movie_id }">
			                                        <img src="https://image.tmdb.org/t/p/original${searchedMovie.movie_poster_path}" style="max-width:250px;  width:100%; max-height:auto;"  alt="">
			                                        <div class="rank"><strong>${status.count }</strong></div>
			                                    </a>
			                                    </div>
			                                    <div class="infor">
			                                        <div class="infor_btn">
			                                            <span class="type1-content_title">${searchedMovie.movie_title }</span>
			                                            <span class="type1-content_year">${searchedMovie.movie_date }</span>
			                                            <span class="type1-content_star">평균★ ${searchedMovie.movie_vote_average/2 }</span>
			                                            <span class="type1-content_info">인기 점수 : ${searchedMovie.movie_popularity}점</span>
			                                        </div>
			                                    </div>
			                                </div>
		                            	</c:forEach>
                            		</c:when>
                            		<c:otherwise>
                            			<span class="type1-content_title">검색 내용이 없습니다. <br>키워드만 검색해주세요.</span>
                            			<br>
                            			<span class="type1-content_star">ex) 블랙 팬서 = 블랙</span>
                            		</c:otherwise>
                            	</c:choose>
	                                
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