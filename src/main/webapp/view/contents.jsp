<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>스리라차피디아</title>
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="../css/comment_slide.css">
<link rel="stylesheet" href="../css/comment_slide2.css">
<link rel="stylesheet" href="../css/comment_modal_detail.css">
<link rel="stylesheet" href="../css/detail_header_poster.css">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script type="module" src="js/contents.js"></script>

<link
   href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap"
   rel="stylesheet">
<link rel="stylesheet"
   href="https://use.fontawesome.com/releases/v5.14.0/css/all.css"
   integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc"
   crossorigin="anonymous">
   <script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
</head>

<body>
	<c:set var="movie" value="${requestScope.movie }"></c:set>
	<c:set var="creditList" value="${requestScope.creditList }"></c:set>
	<c:set var="key" value="${requestScope.key }" />

   <c:set var="boardList" value="${requestScope.boardList}" />
   <c:set var="commentCntMap" value="${requestScope.commentCntMap}" />
   <c:set var="boardCnt" value="${requestScope.boardCnt }" />
   
   <c:set var="wish" value="${requestScope.wish }" />
   
   <fmt:formatNumber type="number" var="movie_vote_average"  pattern="0.0" value="${movie.movie_vote_average/2}" />
   
    <!-- 헤더 시작 -->
    <jsp:include page="../view/common/header.jsp" />
    <!-- 헤더 끝 -->
   
   <div class="forheader" style="margin-top: 65px"></div>
   <!-- 메뉴바 밑에 콘텐츠 썸네일 -->
   <div class="thumbnail">
   		<div class="css-cshjoi-PosterContainer e1svyhwg1">
	   		<div class="css-oqg1df-BlurPosterBlock e1svyhwg2">
	   			<div color="#6B391C" class="css-1j41bic-LeftBackground e1svyhwg6">
	   			</div>
	   			<div class="css-mshxo0-BlurPoster e1svyhwg4">
	   				<img src="https://image.tmdb.org/t/p/original${movie.movie_backdrop_path }" class="movie_backdrop">
		   			<div color="#6B391C" class="css-u1908p-LeftGradient e1svyhwg8">
		   				
					</div>
	   				<div color="#562D16" class="css-1bn7ma3-RightGradient e1svyhwg9">
	  	 			</div>
	   			</div>
	   			<div color="#562D16" class="css-1bxux8o-RightBackground e1svyhwg7">
	   			</div>
	   			<div class="css-1ubeqqm-DimmedLayer e1svyhwg3">
	   			</div>
	   		</div>
		</div>
   </div>
   <!-- 여기까지 썸네일 -->

   <!-- 썸네일 밑에 겹쳐있는 콘텐츠 정보들입니다. -->
   <div class="content_info-box">

      <!-- 왼쪽 포스터입니다. -->
	<div class="css-11zdk8l-PosterWithRankingInfoBlock e1svyhwg10">
		<div class=" css-1np54po-StyledLazyLoadingImage ezcopuc0">
			<img alt="" src="https://image.tmdb.org/t/p/original${movie.movie_poster_path }" class="css-qhzw1o-StyledImg ezcopuc1">
		</div>
	</div>

      <!-- 여기까지 왼쪽 포스터 -->

      <!-- 포스터 오른쪽 정보들 입니다. -->
      <div class="right-column">
         <!-- 첫번째 줄 -->
         <div class="content_info">
         <br>
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
            <span class="content_star">평점 ★${movie_vote_average }
               (${movie.movie_vote_count }명)</span>
         </div>
         <!-- 네번째 줄 평점 끝 -->

         <!-- 마지막 보고싶어요, 별점 평가하기 -->
         <div class="content_info">
         
         	<c:choose>
         		<c:when test="${empty wish }">
         		
		            <!-- 보고싶어요 버튼 -->
		            <div class="content_info-left">
		               <div class="content_want-see" style="cursor: pointer;" onclick="addWish(${movie.movie_id})">
		                  <i class="fas fa-plus plus-rotate"></i> <span>보고싶어요</span>
		               </div>
		            </div>
		            
		            <!-- 취소할래요 버튼 -->
		            <div class="content_info-left">
		               <div class="content_not_want-see" style="cursor: pointer; display: none;" onclick="deleteWish(${movie.movie_id})">
		                  <i class="fas fa-duotone fa-check"></i> <span>찜한영화에요</span>
		               </div>
		            </div>
         		
         		
         		</c:when>
         		<c:otherwise>
         			<!-- 보고싶어요 버튼 -->
		            <div class="content_info-left">
		               <div class="content_want-see" style="cursor: pointer; display: none;" onclick="addWish(${movie.movie_id})" style="display:hide;">
		                  <i class="fas fa-plus plus-rotate"></i> <span>보고싶어요</span>
		               </div>
		            </div>

					<!-- 취소할래요 버튼 -->		            
		            <div class="content_info-left">
		               <div class="content_not_want-see" style="cursor: pointer;" onclick="deleteWish(${movie.movie_id})">
		                  <i class="fas fa-duotone fa-check"></i> <span>찜한영화에요</span>
		               </div>
		            </div>
         		
         		</c:otherwise>
         	</c:choose>
            
            

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
            <!--댓글 달았을 시 추가되는 부분 : 유진-->
<!--                 <div data-rowindex="1" class="w_exposed_cell css-sd2jre-SectionBlock eue8w0j0" id="commented" > -->
<!--                     <div class="css-12ru3m0"> -->
<!--                         <div class="css-1gkas1x-Grid e1689zdh0"> -->
<!--                             <div class="css-1y901al-Row emmoxnt0"> -->
<!--                                 <section class="css-10tfsfb-MyCommentSection eue8w0j3"> -->
<!--                                     <div class="css-vo2laf-MyCommentBlock eue8w0j6"> -->
<!--                                         <div class="css-1rek3mo-MyProfilePhotoBlock eue8w0j4"> -->
<!--                                             <div class="css-ffwxzk"> -->
<!--                                                 <div class="css-h6h0rq-ProfilePhotoImage"></div> -->
<!--                                             </div> -->
<!--                                         </div> -->
<!--                                         <a class="css-1bh5fq7-StylelessLocalLink-LinkToMyComment eue8w0j13" href="comment_detail_me.html"> -->
<!--                                             <div class="css-2a9q6o-MyComment eue8w0j5"> -->
<!--                                                 <div class=" css-gujidv-StyledSelf eb5y16b0"> -->
<!--                                                     <div class="css-1fucs4t-StyledText eb5y16b1" id="commentarea">내가 댓글 단 내용 표시하는 부분입니다.</div> -->
<!--                                                 </div> -->
<!--                                             </div> -->
<!--                                         </a> -->
<!--                                         <ul class="css-llsddo-VisualUl-CommentUpdateButtons eue8w0j7"> -->
<!--                                             <li class="css-15b6b8j-CommentUpdateButtonListItem eue8w0j8"> -->
<!--                                                 <button class="css-1nmgbsq-StylelessButton-CommentUpdateButton eue8w0j9" id="delete_btn"> -->
<!--                                                     <img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxOCIgaGVpZ2h0PSIxOCIgdmlld0JveD0iMCAwIDE4IDE4Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZmlsbD0iI0EwQTBBMCIgZD0iTTUuMjUgMTQuMjVoNy41di03LjVoMS41VjE1YS43NS43NSAwIDAgMS0uNzUuNzVoLTlhLjc1Ljc1IDAgMCAxLS43NS0uNzVWNi43NWgxLjV2Ny41ek0xMiA0LjVoMy43NVY2SDIuMjVWNC41SDZWM2EuNzUuNzUgMCAwIDEgLjc1LS43NWg0LjVBLjc1Ljc1IDAgMCAxIDEyIDN2MS41em0tMS41IDB2LS43NWgtM3YuNzVoM3pNNi43NSA2Ljc1aDEuNXY2Ljc1aC0xLjVWNi43NXptMyAwaDEuNXY2Ljc1aC0xLjVWNi43NXoiLz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="delete comment"> -->
<!--                                                     삭제 -->
<!--                                                 </button> -->
<!--                                             </li> -->
<!--                                             <li class="css-15b6b8j-CommentUpdateButtonListItem eue8w0j8"> -->
<!--                                                 <button class="css-1nmgbsq-StylelessButton-CommentUpdateButton eue8w0j9" id="modify_btn"> -->
<!--                                                     <img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxOCIgaGVpZ2h0PSIxOCIgdmlld0JveD0iMCAwIDE4IDE4Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZmlsbD0iI0EwQTBBMCIgZD0iTTIuMTggMTUuMzlsLjcwMy0zLjk4IDMuNzEzIDMuNzEyLTMuOTgxLjcwMmEuMzc0LjM3NCAwIDAgMS0uNDM0LS40MzR6bTEuNDk4LTQuNzc2bDYuMzY0LTYuMzY0IDMuNzEzIDMuNzEyLTYuMzY0IDYuMzY0LTMuNzEzLTMuNzEyek0xNS42MDcgNS4wNGEuNzUuNzUgMCAwIDEgMCAxLjA2bC0xLjA2IDEuMDYxLTMuNzEzLTMuNzEyIDEuMDYtMS4wNmEuNzUuNzUgMCAwIDEgMS4wNiAwbDIuNjUzIDIuNjUxeiIvPgogICAgPC9nPgo8L3N2Zz4K" alt="edit comment"> -->
<!--                                                     수정 -->
<!--                                                 </button> -->
<!--                                             </li> -->
<!--                                         </ul> -->
<!--                                     </div> -->
<!--                                 </section> -->
<!--                             </div> -->
<!--                         </div> -->
                        
<!--                     </div> -->
<!--                 </div> -->
                <!--댓글 달았을 시 추가되는 부분 끝 : 유진-->
            <div class="leave-comment-box">
               <span class="go-leave-comment"> 이 작품에 대한 회원 님의 평가를 글로 남겨보세요.
               </span> 
               <span class="leave-comment" id="btn-modal"
                  style="cursor: pointer;">코멘트 남기기</span>
            </div>
            <div class="contents_contents-box">
            
           <!--  <div class="contents_contents_column">
                  <div>
                    <span class="contents_contents_title">예고편</span>
							
                  </div>
            </div> -->
            <iframe width="100%" height="400" src="https://www.youtube.com/embed/${key}" 
               				title="YouTube video player" frameborder="0" 
               				allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            	
               <!-- 첫번째(기본정보) 박스입니다 -->
               <div class="contents_contents_column">
                  <div>
                     <span class="contents_contents_title">기본 정보</span>

                     <!-- 기본정보 더보기 링크 연결해주세요 ./overview.jsp -->
                     <a href="${pageContext.request.contextPath }/sriracha/overView.do?movie_id=${movie.movie_id }"> <span
                        class="contents_contents_more">더보기</span>
                     </a>
                     <!-- 여기입니다 -->

                  </div>
                  <br>
                  <span class="contents_contents_name contents_info" style="font-weight: bolder;">${movie.movie_title }</span>
                  <span class="contents_contents_info contents_info">${movie.movie_date }</span>
                  <!-- <span class="contents_contents_runtime contents_info">2시간 12분</span> -->
                  <span class="contents_contents_summary contents_info">
                     ${movie.movie_overview } </span>
               </div>

               <!-- 여기까지 했음 ------------------------------------------------------------------------------------------------------ -->

               <!-- 첫번째(기본정보) 끝입니다 -->

               <!-- 두번째(출연/제작) 시작 -->
                    <section class="step">
                        <div class="contents_contents_column">
                            <span class="contents_contents_title">출연/제작</span>
                            <div class="contents_contents_container">
                                <div class="swiper-wrap">        
                                    <!-- Swiper -->
                                    <div #swiperRef="" class="swiper mySwiper">            
                                        <div class="swiper-wrapper">                
                                            <div class="swiper-slide slide">
                                               <ul>
                                                  <c:forEach var="credit" items="${creditList }">
                                                     	<c:if test="${not empty credit.job }">
                                                       		<li class="contents_contents_profile">
                                                           		<img src="https://image.tmdb.org/t/p/original${credit.profile_path }" alt="" class="profile_img">
                                                             	<div class="txt">
                                                               	<span class="profile_name">${credit.name }</span>
                                                               	<span class="profile_job">${credit.job }</span>
                                                             </div>
                                                        	</li>
                                                  		</c:if>   
                                               		</c:forEach>
                                            	</ul>
                                           </div>
                                           
                                         <div class="swiper-slide slide">
                                               <ul>
                                                <c:forEach var="credit" items="${creditList }" varStatus="status">
                                                      <c:if test="${status.index<3 }">
                                                      <c:if test="${not empty credit.profile_path }">
                                                         <c:if test="${not empty credit.character }">
                                                            <li class="contents_contents_profile">
                                                               <img src="https://image.tmdb.org/t/p/original${credit.profile_path }" alt="" class="profile_img">
                                                               <div class="txt">
                                                                  <span class="profile_name">${credit.name }</span> 
                                                                  <span class="profile_job">${credit.character }역</span>
                                                               </div>
                                                            </li>
                                                         </c:if>
                                                         </c:if>
                                             </c:if>
                                                </c:forEach>
                                             </ul>
                                             </div>
                                           <div class="swiper-slide slide">
                                             <ul>
                                               
                                                <c:forEach var="credit" items="${creditList }" varStatus="status">
                                                      <c:if test="${status.index>2 && status.index<6 }">
                                                      
                                                      	<c:if test="${not empty credit.profile_path }">
                                                         <c:if test="${not empty credit.character }">
                                                            <li class="contents_contents_profile">
                                                               <img src="https://image.tmdb.org/t/p/original${credit.profile_path }" alt="" class="profile_img">
                                                               <div class="txt">
                                                                  <span class="profile_name">${credit.name }</span> 
                                                                  <span class="profile_job">${credit.character }역</span>
                                                               </div>
                                                            </li>
                                                         </c:if>
                                                      	</c:if>
                                                       </c:if>
                                                </c:forEach>
                                             	
                                             </ul>
                                             </div>
                                             
                                             <c:if test="${creditList.size()>6 }">
                                              <div class="swiper-slide slide" style="width:280px;">
                                             <ul>
                                                <c:forEach var="credit" items="${creditList }" varStatus="status">
                                                      <c:if test="${status.index>5 && status.index<9 }">
                                                      <c:if test="${not empty credit.profile_path }">
                                                         <c:if test="${not empty credit.character }">
                                                            <li class="contents_contents_profile">
                                                               <img src="https://image.tmdb.org/t/p/original${credit.profile_path }" alt="" class="profile_img">
                                                               <div class="txt">
                                                                  <span class="profile_name">${credit.name }</span> 
                                                                  <span class="profile_job">${credit.character }역</span>
                                                               </div>
                                                            </li>
                                                         </c:if>
                                                         </c:if>
                                             </c:if>
                                                </c:forEach>
                                             </ul>
                                             </div>
                                             </c:if>
                                             </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
<!--                         </div> -->
                    </section>
            <!-- 두번째(출연/제작) 끝 -->

            <!-- 세번째(별점 그래프) 시작 -->
            <div class="contents_contents_column">
               
            </div>
            <!-- 세번째(별점 그래프) 끝 -->

            <!-- 네번째(코멘트) 시작 -->
            <div class="contents_contents_column">
               <div class="column_column">
                  <div>
                     <span class="contents_contents_title">코멘트</span> <span
                        class="contents_contents_title-number">${boardCnt }</span>
                  

                  <!-- 코멘트 더보기 링크 연결해주세요 -->
                  <a href="${pageContext.request.contextPath }/sriracha/BoardView.do?movie_id=${movie.movie_id}"> <span
                     class="contents_contents_more">더보기</span>
                  </a>
                  <!-- 여기입니다 -->
				  </div>
               </div>
               <section class="step2">
                <div class="contents_contents_comment-container">
                    <div class="swiper-wrap">        
                        <!-- Swiper -->
                        <div #swiperRef="" class="swiper mySwiper2">            
                            <div class="swiper-wrapper" id="boardWrapper"> 
                            
								<c:forEach var="board_" items="${boardList }">
									<div class="swiper-slide slide">
	                                    <ul>
	                                        <li>
	                                            <div class="comment-nemo">
	                                                <div class="comment_user">
	                                                    <img src="../img/user_profile.jfif" class="comment_user-img">
	                                                    <span class="user_name">${board_.user_id }</span>
	                                                </div>
	                                                <div class="comment_comment">
	                                                    ${board_.board_content }
	                                                </div>
	                                                <div class="comment_feel">
	                                                    <span class="comment_feel-good">
	                                                        <i class="fas fa-thumbs-up"></i>
	                                                        ${board_.board_like }
	                                                    </span>
	                                                    <span class="comment_feel-comment">
	                                                        <i class="fas fa-comment"></i>
	                                                        ${board_.comment_cnt}
	                                                    </span>
	                                                </div>
	                                                <div class="comment_click-good">좋아요</div>
	                                            </div>
	                                        </li>
	                                    </ul>
	                                </div>	
								</c:forEach>   
                                
                            </div>
                        </div>
                    </div>
                </div>
            </section>
         </div>
            <!-- 네번째(코멘트) 끝 -->

         </div>
      </div>
      <div class="contents_side-box"></div>
      </div>
     
   </main>
   <!-- 여기까지 메인 컨텐츠 박스였습니다 -->

   <!--모달창 !!!!!!!!!!! 대댓글 !!!!!!!!!!!!!!!!!!11-->
   
   <div class="css-14gy7wr" id="modal">
      <div id="modal-container-SYLPdBTcEzZ6-wfGcd5Go" class="css-rpyl6s">
         <div class="css-1p257d1-modalAddStyle">
            <header title=""
               class="css-166ww79-HeaderBarPrimitive-headerAddStyle">
               <div class="css-19pxr9t"></div>
               <em class="css-10mjbgt">${movie.movie_title }</em>
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
                             		placeholder="이 작품에 대한 생각을 자유롭게 표현해주세요." class="css-1k5ei58" id="writecomment1" name="board_content"></textarea>
                           
                           <div class="css-238o9r" id="writecomment2" ></div>
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
                     <p class="css-ynpx67" id="reCount">0/10000</p>
<%--                     <a href="${pageContext.request.contextPath }/sriracha/addComment.do?movie_id=${movie.movie_id}"> --%>
                     <input class="css-1ukikc-StylelessButton" type="button" id="commentbtn" value="저장" onclick="addBoard(${movie.movie_id})">
<!--                      <button disabled="" class="css-1ukikc-StylelessButton">저장</button> -->
<!-- 					</a> -->
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
   <!----모달창 !!! 대댓글 끝!!!!!------>
   <!--모달창 : 알림 - 코멘트를 삭제하시겠어요 ?-->
<!--     <div class="css-14gy7wr" id="modal2"> -->
<!--         <div id="modal-container-7jMaFDbYzaXVi3tG2JxKy" class="css-rpyl6s"> -->
<!--             <div class="css-1yszxv0"> -->
<!--                 <div class="css-f35o9y"> -->
<!--                     <div class="css-1gkas1x-Grid e1689zdh0"> -->
<!--                         <div class="css-1y901al-Row emmoxnt0"> -->
<!--                             <div class="css-2djw8f">알림</div> -->
<!--                             <div class="css-148qwic">코멘트를 삭제하시겠어요?</div> -->
<!--                             <div size="2" class="css-gy4ioq"> -->
<!--                                 <button class="css-1gdw77k-StylelessButton" id="cancel">취소</button> -->
<!--                                 <button class="css-sfhtz9-StylelessButton" id="deletecomment">확인</button> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                 </div> -->
<!--             </div> -->
<!--         </div> -->
<!--     </div> -->
    <!--모달창 : 알림 - 코멘트를 삭제하시겠어요 ? 끝-->
    
    <!-- 푸터 시작 -->
	<jsp:include page="../view/common/footer.jsp" />
    <!-- 푸터 끝 -->

   <script src="../js/main.js"></script>
   <script src="../js/star.js"></script>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</body>
<script type="text/javascript">
/*코멘트 남기기 모달창*/
const modal = document.getElementById("modal")
const btnModal = document.getElementById("btn-modal")
btnModal.addEventListener("click", e => {
    modal.style.display = "flex"
})

/*코멘트 남기기 x버튼 클릭 시 모달창 꺼짐*/
const closeBtn = modal.querySelector(".css-1lvet1d-StylelessButton")
closeBtn.addEventListener("click", e => {
    modal.style.display = "none"
})

/*코멘트 남기기 바깥 부분 클릭 시 모달창 꺼짐*/
modal.addEventListener("click", e => {
const evTarget = e.target
    if(evTarget.classList.contains("css-rpyl6s")) {
        modal.style.display = "none"
    }
})

const elCommentbtn = document.getElementById('commentbtn')
const elwritecomment1 = document.getElementById('writecomment1')
elCommentbtn.disabled = true;
elwritecomment1.addEventListener('keyup', button)

function button() {
    if (!(elwritecomment1.value == "")) {
        elCommentbtn.disabled = false;
        document.getElementById("reCount").innerHTML = elwritecomment1.value.length + "/" + 10000;
    } else {
        elCommentbtn.disabled = true;
    }
}

 /*코멘트 남기기 x버튼 클릭 시 모달창 꺼짐*/
 const closeBtn2 = modal.querySelector("#commentbtn")
closeBtn2.addEventListener("click", e => {
    modal.style.display = "none"
})


function addBoard(movie_id){
	
	 $.ajax({
		url:'/sriracha/addBoard.do',
		type:'post',
		data:{	
					"movie_id" : movie_id,
					"star_value" : starValue,
					"board_content" : $("#writecomment1").val()
				},
		success:function(data){
		    console.log("success");
		    /* $("#boardWrapper").appendTo("<div class=\"swiper-slide slide\"><ul><li><div class=\"comment-nemo\"><div class=\"comment_user\"><img src=\"../img/user_profile.jfif\" class=\"comment_user-img\"><span class=\"user_name\">유저아이디</span></div><div class=\"comment_comment\">보드컨텐트</div><div class=\"comment_feel\"><span class=\"comment_feel-good\"><i class=\"fas fa-thumbs-up\"></i>보드라이크</span><span class=\"comment_feel-comment\"><i class=\"fas fa-comment\"></i>보드코멘트카운트</span></div><div class=\"comment_click-good\">좋아요</div></div></li></ul></div>"); */
		}
	});
    
}

function addWish(movie_id){
	$.ajax({
		url:'/sriracha/addWish.do',
		type:'post',
		data:{"movie_id" : movie_id},
		success:function(data){
		    $(".content_want-see").hide();
		    $(".content_not_want-see").show();
		}
	});
}

function deleteWish(movie_id){
	$.ajax({
		url:'/sriracha/deleteWish.do',
		type:'post',
		data:{"movie_id" : movie_id},
		success:function(data){
		    $(".content_not_want-see").hide();
		    $(".content_want-see").show();
		}
	});
		
}

</script>

</html>