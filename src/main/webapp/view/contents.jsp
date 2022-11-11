<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>스리라차피디아</title>
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="../css/comment_modal_detail.css">

<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.14.0/css/all.css"
	integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc"
	crossorigin="anonymous">
</head>

<body>
	<c:set var="movie" value="${requestScope.movie }"></c:set>
	<c:set var="creditList" value="${requestScope.creditList }"></c:set>

	<!-- 메뉴 헤더입니다. -->
	<header class="menu-box">
		<div class="menu">
			<div class="menu_left">
				<a href="/sriracha/get_main_page.do"><img class="menu_logo"
					src="../img/logo.png"
					style="max-width: 200px; width: 100%; height: auto;" /></a>
			</div>
			<div class="menu_right">
				<div class="menu_search-box">
					<i class="fas fa-search"></i> <input class="menu_search"
						type="text" placeholder="작품 제목,배우,감독을 검색해보세요.">
				</div>
				<span class="menu_login" onclick="location.href='./login.jsp'"
					style="cursor: pointer;">로그아웃 </span> <span class="menu_sign-up"
					id="js-signUp" onclick="location.href='./mypage.jsp'"
					style="cursor: pointer;">마이페이지</span>
			</div>

			<div class="overlay"></div>
		</div>
	</header>
	<!-- 여기까지 메뉴 헤더 -->
	<div class="forheader" style="margin-top: 65px"></div>
	<!-- 메뉴바 밑에 콘텐츠 썸네일 -->
	<div class="thumbnail">
		<img class="thumbnail"
			src="https://image.tmdb.org/t/p/original${movie.movie_backdrop_path }"
			alt="">
	</div>
	<!-- 여기까지 썸네일 -->

	<!-- 썸네일 밑에 겹쳐있는 콘텐츠 정보들입니다. -->
	<div class="content_info-box">

		<!-- 왼쪽 포스터입니다. -->
		<div class="left-column">
			<img
				src="https://image.tmdb.org/t/p/original${movie.movie_poster_path }"
				alt="">
		</div>
		<!-- 여기까지 왼쪽 포스터 -->

		<!-- 포스터 오른쪽 정보들 입니다. -->
		<div class="right-column">
			<!-- 첫번째 줄 -->
			<div class="content_info">
				<span class="gray">인기 점수 ·&nbsp;</span> <span class="white">${movie.movie_popularity }점&nbsp;</span>
			</div>
			<!-- 첫번째 줄 끝 -->

			<!-- 두번째 줄 작품명 -->
			<div class="content_info">
				<span class="content_title">${movie.movie_title}</span>
			</div>
			<!-- 두번째 줄 작품명 끝 -->

			<!-- 세번째 줄 년도, 장르, 나라-->
			<div class="content_info">
				<span class="content_type">${movie.movie_date }</span>
			</div>
			<!-- 세번째 줄 년도, 장르, 나라 끝 -->

			<!-- 네번째 줄 평점 -->
			<div class="content_info">
				<span class="content_star">평점 ★${movie.movie_vote_average/2 }
					(${movie.movie_vote_count }명)</span>
			</div>
			<!-- 네번째 줄 평점 끝 -->

			<!-- 마지막 보고싶어요, 별점 평가하기 -->
			<div class="content_info">
				<!-- 보고싶어요 버튼 -->
				<div class="content_info-left">
					<div class="content_want-see" style="cursor: pointer;">
						<i class="fas fa-plus plus-rotate"></i> <span>보고싶어요</span>
					</div>
				</div>
				<!-- 보고싶어요 버튼 끝 -->

				<!-- 별점 평가하기 -->
				<div class="content_info-right">
					<span class="js-leaveStar">평가하기</span>
					<div class="content_info_star">
						<div class="star_box star1" value="0.5"></div>
						<i class="far fa-star real-star1 real-star"></i>
						<div class="star_box star2" value="1"></div>
						<div class="star_box star3" value="1.5"></div>
						<i class="far fa-star real-star2 real-star"></i>
						<div class="star_box star4" value="2"></div>
						<div class="star_box star5" value="2.5"></div>
						<i class="far fa-star real-star3 real-star"></i>
						<div class="star_box star6" value="3"></div>
						<div class="star_box star7" value="3.5"></div>
						<i class="far fa-star real-star4 real-star"></i>
						<div class="star_box star8" value="4"></div>
						<div class="star_box star9" value="4.5"></div>
						<i class="far fa-star real-star5 real-star"></i>
						<div class="star_box star10" value="5"></div>
					</div>
				</div>
				<!-- 별점 평가하기 끝 -->

			</div>
			<!-- 여기까지가 마지막 줄에 보고싶어요, 별점 평가하기 끝 -->

		</div>
		<!-- 여기까지 오른쪽 정보들 -->
	</div>
	<!-- 여기까지 영화 정보들 입니다 -->

	<!-- 여기서부터 메인 컨텐츠 박스입니다 -->
	<main class="contents_main-box">
		<div class="contents_middle-box">
			<div>
				<div class="leave-comment-box">
					<span class="go-leave-comment"> 이 작품에 대한 회원 님의 평가를 글로 남겨보세요.
					</span> <span class="leave-comment" id="btn-modal"
						style="cursor: pointer;">코멘트 남기기</span>
				</div>
				<div class="contents_contents-box">
					<!-- 첫번째(기본정보) 박스입니다 -->
					<div class="contents_contents_column">
						<div>
							<span class="contents_contents_title">기본 정보</span>

							<!-- 기본정보 더보기 링크 연결해주세요 -->
							<a href="./overview.jsp"> <span
								class="contents_contents_more">더보기</span>
							</a>
							<!-- 여기입니다 -->

						</div>
						<span class="contents_contents_name contents_info">${movie.movie_title }</span>
						<span class="contents_contents_info contents_info">${movie.movie_date }</span>
						<!-- <span class="contents_contents_runtime contents_info">2시간 12분</span> -->
						<span class="contents_contents_summary contents_info">
							${movie.movie_overview } </span>
					</div>

					<!-- 여기까지 했음 ------------------------------------------------------------------------------------------------------ -->

					<!-- 첫번째(기본정보) 끝입니다 -->

					<!-- 두번째(출연/제작) 시작 -->

					<div class="contents_contents_column">
						<span class="contents_contents_title">출연/제작</span>
						<div class="contents_contents_container">

							<div class="contents_contents_content">
								<c:forEach var="credit" items="${creditList }">
									<c:if test="${not empty credit.job }">
										<div class="contents_contents_profile">
											<img
												src="https://image.tmdb.org/t/p/original${credit.profile_path }"
												alt="" class="profile_img">
											<div>
												<span class="profile_name">${credit.name }</span> <span
													class="profile_job">${credit.job }</span>
											</div>
										</div>
									</c:if>
								</c:forEach>
							</div>


							<c:set var="doneLoop" value="false" />
							<c:forEach var="credit" items="${creditList }" varStatus="status">

								<c:if test="${status.index%3==0 }">
									<div class="contents_contents_content">
								</c:if>

								<c:if test="${not doneLoop }">
									<c:if test="${status.index>9 }">
										<c:set var="doneLoop" value="true" />
									</c:if>

									<c:if test="${not empty credit.profile_path }">
										<c:if test="${not empty credit.character }">
											<div class="contents_contents_profile">
												<img
													src="https://image.tmdb.org/t/p/original${credit.profile_path }"
													alt="" class="profile_img">
												<div>
													<span class="profile_name">${credit.name }</span> <span
														class="profile_job">${credit.character }역</span>
												</div>
											</div>
										</c:if>
									</c:if>

								</c:if>

								<c:if test="${status.index%3==2 }">
									</div>
								</c:if>

						</c:forEach>


					</div>
				</div>
				<!-- 두번째(출연/제작) 끝 -->

				<!-- 세번째(별점 그래프) 시작 -->
				<div class="contents_contents_column">
					<div>
						<span class="contents_contents_title">별점 그래프</span>
						<div>
							<span class="star_average">평균 ★2.9</span> <span
								class="star_people">(2,225명)</span>
						</div>
					</div>
					<div class="contents_contents_star-box">
						<img src="../img/star_graph.png" alt="별점 그래프" class="star-graph">
					</div>
				</div>
				<!-- 세번째(별점 그래프) 끝 -->

				<!-- 네번째(코멘트) 시작 -->
				<div class="contents_contents_column">
					<div class="column_column">
						<div>
							<span class="contents_contents_title">코멘트</span> <span
								class="contents_contents_title-number">550+</span>
						</div>

						<!-- 코멘트 더보기 링크 연결해주세요 -->
						<a href="./commentPage.jsp"> <span
							class="contents_contents_more">더보기</span>
						</a>
						<!-- 여기입니다 -->

					</div>
					<div class="contents_contents_comment-container">
						<div class="comment-nemo">
							<div class="comment_user">
								<img src="../img/user_profile.jfif" class="comment_user-img">
								<span class="user_name">filmaholic9</span>
							</div>
							<div class="comment_comment">대한민국 대통령 정우성에 김정은은 유연석
								ㅋㅋㅋㅋㅋㅋㅋㅋ 캐스팅부터 장난하냐 ㅋㅋㅋㅋㅋㅋㅋ (대충 예상되는 내용) 미국 : 평화협정 하자고 불러놓고는
								자기들의 이익만 추구하며 훼방을 놓고 억지</div>
							<div class="comment_feel">
								<span class="comment_feel-good"> <i
									class="fas fa-thumbs-up"></i> 381
								</span> <span class="comment_feel-comment"> <i
									class="fas fa-comment"></i> 57
								</span>
							</div>
							<div class="comment_click-good">좋아요</div>
						</div>
						<div class="comment-nemo">
							<div class="comment_user">
								<img src="../img/user_profile.jfif" class="comment_user-img">
								<span class="user_name">filmaholic9</span>
							</div>
							<div class="comment_comment">대한민국 대통령 정우성에 김정은은 유연석
								ㅋㅋㅋㅋㅋㅋㅋㅋ 캐스팅부터 장난하냐 ㅋㅋㅋㅋㅋㅋㅋ (대충 예상되는 내용) 미국 : 평화협정 하자고 불러놓고는
								자기들의 이익만 추구하며 훼방을 놓고 억지</div>
							<div class="comment_feel">
								<span class="comment_feel-good"> <i
									class="fas fa-thumbs-up"></i> 381
								</span> <span class="comment_feel-comment"> <i
									class="fas fa-comment"></i> 57
								</span>
							</div>
							<div class="comment_click-good">좋아요</div>
						</div>
					</div>
				</div>
				<!-- 네번째(코멘트) 끝 -->

				<!-- <div class="contents_contents_column">
                        <div>
                            <span class="contents_contents_title">이 작품이 담긴 컬렉션</span>
                            <span class="contents_contents_title-number">143</span>
                        </div>
                    </div>
                    <div class="contents_contents_column">
                        <span class="contents_contents_title">비슷한 작품</span>
                    </div> -->
			</div>
		</div>
		<div class="contents_side-box"></div>
		</div>
	</main>
	<!-- 여기까지 메인 컨텐츠 박스였습니다 -->

	<!-- footer 시작 -->
	<footer>
		<div class="small-box ">
			<span class="review"> 지금까지&nbsp; </span> <span
				class="review review-red"> ★ 562,339,084 개의 평가가&nbsp; </span> <span
				class="review"> 쌓였어요. </span>
		</div>
		<div class="big-box">
			<div class="first-column column">
				<span class="footer_info cursor"> 서비스 이용약관 &nbsp;|&nbsp; 개인정보
					처리방침 &nbsp;|&nbsp; 회사 안내 </span>
			</div>
			<div class="second-column column">
				<span class="footer_info cursor"> 고객센터 &nbsp;|&nbsp;
					cs@srirachapedia.co.kr </span> <span class="footer_info cursor"> 제휴
					및 대외 협력 &nbsp;|&nbsp; contact@sriracha.com, 070-1234-5678 </span>
			</div>
			<div class="third-column column">
				<span class="footer_info"> 주식회사 스리라차 &nbsp;|&nbsp; 대표 강태석
					&nbsp;|&nbsp; 서울특별시 역삼동 코리아IT 아카데미 </span> <span class="footer_info">
					사업자 등록 번호 123-45-78910 </span>
				<div class="footer_info">
					<img src="../img/logo2.png"
						style="max-width: 200px; width: 100%; height: auto;"
						class="footer_logo"> <span class="footer_info">© 2022
						sriracha. Inc</span>
				</div>
			</div>
		</div>
	</footer>
	<!--모달창 !!!!!!!!!!! 대댓글 !!!!!!!!!!!!!!!!!!11-->
	<div class="css-14gy7wr" id="modal">
		<div id="modal-container-SYLPdBTcEzZ6-wfGcd5Go" class="css-rpyl6s">
			<div class="css-1p257d1-modalAddStyle">
				<header title=""
					class="css-166ww79-HeaderBarPrimitive-headerAddStyle">
					<div class="css-19pxr9t"></div>
					<em class="css-10mjbgt">(영화제목)</em>
					<div class="css-19pxr9t">
						<button class="css-1lvet1d-StylelessButton"></button>
					</div>
				</header>
				<div class="css-1iv0iqc">
					<div height="100%" class="css-2zu8pq">
						<div class="css-cdzmq7">
							<div class="css-iowq1w">
								<div class="css-iowq1w">
									<textarea maxlength="10000"
										placeholder="이 작품에 대한 생각을 자유롭게 표현해주세요." class="css-1k5ei58"></textarea>
									<div class="css-238o9r"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="css-183vuuo">
					<div class="css-a2jbfo">
						<!------>
						<div class="css-5d0dfn">
							<div data-type="spoiler" class="css-hyoixq">
								<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30"
									viewBox="0 0 24 24" fill="none" class="css-7zhfhb">
                                    <path fill-rule="evenodd"
										clip-rule="evenodd"
										d="M11.9998 1.89462C6.41882 1.89462 1.89453 6.41891 1.89453 11.9999C1.89453 17.5809 6.41882 22.1052 11.9998 22.1052C17.5808 22.1052 22.1051 17.5809 22.1051 11.9999C22.1051 6.41891 17.5808 1.89462 11.9998 1.89462ZM7.78928 11.4662C8.02183 11.0634 8.53685 10.9254 8.93962 11.158L12.0061 12.9284L15.0612 11.1645C15.464 10.932 15.979 11.07 16.2116 11.4728C16.4441 11.8755 16.3061 12.3906 15.9034 12.6231L13.6903 13.9008L15.8678 15.158C16.2706 15.3905 16.4086 15.9055 16.1761 16.3083C15.9435 16.7111 15.4285 16.8491 15.0257 16.6165L12.0061 14.8732L8.97515 16.6231C8.57237 16.8556 8.05735 16.7176 7.82481 16.3149C7.59227 15.9121 7.73027 15.3971 8.13304 15.1645L10.3219 13.9008L8.09752 12.6165C7.69474 12.384 7.55674 11.869 7.78928 11.4662ZM7.9998 8.21074C7.9998 7.74566 8.37682 7.36864 8.8419 7.36864H9.05243C9.51751 7.36864 9.89454 7.74566 9.89454 8.21074V8.84232C9.89454 9.3074 9.51751 9.68443 9.05243 9.68443H8.8419C8.37682 9.68443 7.9998 9.3074 7.9998 8.84232V8.21074ZM14.9472 7.36864C14.4821 7.36864 14.1051 7.74566 14.1051 8.21074V8.84232C14.1051 9.3074 14.4821 9.68443 14.9472 9.68443H15.1577C15.6228 9.68443 15.9998 9.3074 15.9998 8.84232V8.21074C15.9998 7.74566 15.6228 7.36864 15.1577 7.36864H14.9472Z"
										fill="#C4C4C4" class="css-7zhfhb"></path>
                                </svg>
							</div>
						</div>
						<!------>
						<div class="css-6qnjre"></div>
						<div class="css-6qnjre">
							<p class="css-1s08rlk"></p>
							<p class="css-ynpx67">0/10000</p>
							<button disabled="" class="css-1ukikc-StylelessButton">저장</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!----모달창 !!! 대댓글 끝!!!!!------>


	<script src="../js/main.js"></script>
	<script src="../js/star.js"></script>
</body>
<script>
    const modal = document.getElementById("modal")
    const btnModal = document.getElementById("btn-modal")
    btnModal.addEventListener("click", e => {
        modal.style.display = "flex"
    })

    const closeBtn = modal.querySelector(".css-1lvet1d-StylelessButton")
    closeBtn.addEventListener("click", e => {
        modal.style.display = "none"
    })

    modal.addEventListener("click", e => {
    const evTarget = e.target
        if(evTarget.classList.contains("css-rpyl6s")) {
            modal.style.display = "none"
        }
    })

    
</script>

</html>