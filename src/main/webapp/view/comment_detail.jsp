<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <!-- <meta http-equiv="X-UA-Compatible" content="IE=edge" /> -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/comment_detail.css">

    <!-- <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet"> -->
    <!-- <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css" -->
        <!-- integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc" crossorigin="anonymous"> -->
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css"
        integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc" crossorigin="anonymous">
    
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
 <script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
 
   
    <title>OO님이 OO에 남긴 코멘트 - 스리라차피디아</title>
  
  
      
</head>
    <body>
    
<%--     <c:set var="boardComment" value="${requestScope.boardComment}" /> --%>
    <c:set var="BoardComment_Movie" value="${requestScope.BoardComment_Movie}"/>
    <c:set var="BoardComment" value="${requestScope.BoardComment}"/>
    <c:set var="getCommentCnt" value="${requestScope.getCommentCnt}"/>
    <c:set var="CommentList" value="${requestScope.CommentList}"/>
    <c:set var="movie" value="${requestScope.movie }"></c:set>
    
    <c:set var="sameuser" value="${requestScope.same_user}" />
    
        <!-- 헤더 시작 -->
    	<jsp:include page="../view/common/header.jsp" />
    	<!-- 헤더 끝 -->
    	
<!--     	nfhjhfsjkdfhsjdkfhasdfhdsifh -->
   <!-- 11/10 유진 -->
            <section class="css-18gwkcr">
               <div class="css-leo5si-Self e1rmcw6u0">
                  <section class="css-funxdv-StyledCommentPageContainer e1rmcw6u1">
                     <section class="css-tq98he-Self e1r63cvc0">
                        <div class="css-fr521c">
                           <div class="css-1d7xpnn">
                              <section class="css-0">
                              <c:forEach var="BoardComment" items="${requestScope.BoardComment}">
                                 <div class="css-1p3jp2v">
                                 
                                    <div class="css-1cvf9dk">
                                       <a title="재원" class="css-1f9m1s4-StylelessLocalLink eovgsd01" href="/ko-KR/users/DgwxABBQMqrMj">
                                          <div class="css-1byz60h">
                                                           <div class="css-jno9px-ProfilePhotoImage"></div>
                                                       </div>
                                                       <div class="css-1sg2lsz">
                                                           <div class="css-a7gqjg">${BoardComment.user_id }</div>
                                                           <div class="css-1hy7aba">${BoardComment.board_date }</div>
                                                       </div>
                                                   </a>
                                                   <c:forEach var="boardMovie" items="${BoardComment_Movie}">
                                                   <a title="자백" class="css-1f9m1s4-StylelessLocalLink eovgsd01" href="/ko-KR/contents/mOPVxED">
                                                       <div class="css-0">
                                                           <div class="css-dbu6le">${boardMovie.movie_title }</div>
                                                           <div class="css-1futg35">영화 · ${boardMovie.movie_date }</div>
                                                       </div>
                                                   </a>
                                                   </c:forEach>
                                                   <div class="css-1edcxeb">
                                                       <div class="css-1cxhrll">
                                                           <img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9IiM0QTRBNEEiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTEyIDE3Ljk4bC02LjAxNSA0LjM5MmMtLjUwOC4zNzItMS4xOTQtLjEyNi0uOTk4LS43MjVsMi4zMTctNy4wODEtNi4wMzUtNC4zNjdjLS41MS0uMzY5LS4yNDctMS4xNzUuMzgyLTEuMTc0bDcuNDQ3LjAxNiAyLjI4Ni03LjA5MWMuMTkyLS42IDEuMDQtLjYgMS4yMzMgMGwyLjI4NiA3LjA5IDcuNDQ3LS4wMTVjLjYyOS0uMDAxLjg5LjgwNS4zOCAxLjE3NGwtNi4wMzMgNC4zNjcgMi4zMTYgNy4wOGMuMTk2LjYtLjQ5IDEuMDk4LS45OTkuNzI2TDEyIDE3Ljk4eiIvPgo8L3N2Zz4K" width="16px" height="16px" alt="star">
                                                           <span>3.0</span>
                                                       </div>
                                                   </div>
                                               </div>
                                               <a title="자백" class="css-1f9m1s4-StylelessLocalLink eovgsd01" href="/ko-KR/contents/mOPVxED">
                                                   <div class=" css-1dl0k9f-StyledLazyLoadingImage ezcopuc0">
                                                       <img alt="" src="https://image.tmdb.org/t/p/original${movie.movie_poster_path }" class="css-qhzw1o-StyledImg ezcopuc1">
                                                   </div>
                                               </a>
                                           </div>
                                           <div class="css-cb09zq">
                                               <div class="css-1g78l7j">
                                                   <span class="content-content"><br>${BoardComment.board_content }
                                                   </span>
                                               </div>
                                           </div>
                                           <div class="css-hkgyal">
                                               <div class="css-prw2jl">
                                                   <span class="css-1n0dvqq">좋아요 ${BoardComment.board_like }</span>
                                                   <span class="css-0">댓글 ${getCommentCnt }</span>
                                               </div>
                                               <!--수정, 삭제하기 추가 시작 : 유진(11/08)-->
                                               <c:if test="${sameuser == 'true'}">
                                                <div class="css-j985f6">
                                                   <button class="css-1nfwvb4-StylelessButton" id="modifyBtn">
                                                      <svg class="css-s99igu" viewBox="0 0 18 18">
                                                         <g fill-rule="evenodd">
                                                         	<path d="M2.18 15.39l.703-3.98 3.713 3.712-3.981.702a.374.374 0 0 1-.434-.434zm1.498-4.776l6.364-6.364 3.713 3.712-6.364 6.364-3.713-3.712zM15.607 5.04a.75.75 0 0 1 0 1.06l-1.06 1.061-3.713-3.712 1.06-1.06a.75.75 0 0 1 1.06 0l2.653 2.651z"></path>
                                                         </g>
                                                      </svg>
                                                        수정
                                                    </button>
                                                    <button class="css-1nfwvb4-StylelessButton" id="deleteBtn">
                                                        <svg class="css-s99igu" viewBox="0 0 18 18">
                                                            <g fill-rule="evenodd">
                                                                <path d="M5.25 14.25h7.5v-7.5h1.5V15a.75.75 0 0 1-.75.75h-9a.75.75 0 0 1-.75-.75V6.75h1.5v7.5zM12 4.5h3.75V6H2.25V4.5H6V3a.75.75 0 0 1 .75-.75h4.5A.75.75 0 0 1 12 3v1.5zm-1.5 0v-.75h-3v.75h3zM6.75 6.75h1.5v6.75h-1.5V6.75zm3 0h1.5v6.75h-1.5V6.75z"></path>
                                                        	</g>
                                                      	</svg>
                                                         삭제
                                                   </button>
                                                </div>
                                             </c:if>
                                                   <!--수정, 삭제하기 추가 끝 : 유진(11/08)-->
                                           </div>
                                           
										</c:forEach>
                                           <section class="css-0">
                                               <hr class="css-god8tc">
                                               <div class="css-1gkas1x-Grid e1689zdh0">
                                                   <div class="css-1y901al-Row emmoxnt0">
                                                       <div class="css-cxqjs3">
                                                           <button id="deckLike" class="css-135c2b4-StylelessButton-StyledActionButton e19d4hrp0">
                                                               <div class="css-1umclh2-StyledIconContainer e19d4hrp1">
                                                                   <svg viewBox="0 0 20 20" class="css-vkoibk">
                                                                       <path class="fillTarget" fill-rule="evenodd" clip-rule="evenodd" d="M5.6252 7.9043H3.1252C2.6652 7.9043 2.29187 8.27763 2.29187 8.73763V17.071C2.29187 17.531 2.6652 17.9043 3.1252 17.9043H5.6252C6.08604 17.9043 6.45854 17.531 6.45854 17.071V8.73763C6.45854 8.27763 6.08604 7.9043 5.6252 7.9043Z" fill="#87898B"></path>
                                                                       <path class="fillTarget" fill-rule="evenodd" clip-rule="evenodd" d="M11.71 4.34525L11.7017 3.99359L11.6825 3.14525L11.6809 3.09692L11.6759 3.04942C11.6684 2.96942 11.6792 2.93442 11.6775 2.93275C11.6917 2.92442 11.7534 2.90442 11.8725 2.90442C12.115 2.90442 13.3225 2.97609 13.3225 4.38692C13.3225 4.93359 13.2775 5.35859 13.1809 5.72692L12.8375 7.03275C12.8034 7.16525 12.9025 7.29442 13.0392 7.29442H14.3892H15.7317C16.0575 7.29442 16.3684 7.43692 16.585 7.68442C16.7975 7.93025 16.9009 8.25609 16.87 8.58275L15.6717 14.7703L15.6634 14.8119L15.6584 14.8536C15.59 15.3961 15.0959 15.8211 14.5334 15.8211H8.54169V8.19942C8.54169 7.89109 8.71169 7.56275 9.04835 7.22359L11.3417 4.90025L11.5775 4.66109C11.71 4.52359 11.71 4.34525 11.71 4.34525ZM17.5275 6.86525C17.0734 6.34275 16.4184 6.04442 15.7317 6.04442H14.3892C14.5167 5.56025 14.5725 5.02942 14.5725 4.38692C14.5725 2.50942 13.1734 1.65442 11.8725 1.65442C11.3825 1.65442 11 1.80775 10.7367 2.11025C10.5667 2.30359 10.3792 2.64442 10.4325 3.17359L10.4517 4.02192L8.15835 6.34525C7.58335 6.92692 7.29169 7.55109 7.29169 8.19942V16.2378C7.29169 16.6978 7.66502 17.0711 8.12502 17.0711H14.5334C15.7342 17.0711 16.7559 16.1603 16.8992 15.0078L18.1067 8.77192C18.1925 8.08109 17.9809 7.38692 17.5275 6.86525Z" fill="#87898B"></path>
                                                                   </svg>
                                                               </div> 
                                                               좋아요
                                                           </button>
                                                           <button class="css-135c2b4-StylelessButton-StyledActionButton e19d4hrp0" id="btn-modal">
                                                               <div class="css-1umclh2-StyledIconContainer e19d4hrp1">
                                                                   <svg viewBox="0 0 20 20" class="css-vkoibk">
                                                                       <path class="fillTarget" fill-rule="evenodd" clip-rule="evenodd" d="M9.99963 2.08325C5.65046 2.08325 2.12546 5.02159 2.12546 8.64575C2.12546 10.5891 3.13962 12.3358 4.74962 13.5374L4.61129 17.2416C4.61129 17.4899 4.81462 17.6591 5.03046 17.6591C5.12129 17.6591 5.21462 17.6291 5.29462 17.5616L8.12462 15.0208C8.72629 15.1433 9.35379 15.2083 9.99963 15.2083C14.3496 15.2083 17.8746 12.2699 17.8746 8.64575C17.8746 5.02159 14.3496 2.08325 9.99963 2.08325ZM9.99962 3.33325C13.653 3.33325 16.6246 5.71659 16.6246 8.64575C16.6246 11.5749 13.653 13.9583 9.99962 13.9583C9.44962 13.9583 8.90296 13.9041 8.37379 13.7966C8.29129 13.7791 8.20796 13.7708 8.12462 13.7708C7.81962 13.7708 7.52046 13.8833 7.28962 14.0908L5.93462 15.3074L5.99879 13.5841C6.01462 13.1733 5.82712 12.7808 5.49796 12.5349C4.14879 11.5291 3.37546 10.1116 3.37546 8.64575C3.37546 5.71659 6.34712 3.33325 9.99962 3.33325Z" fill="#87898B"></path>
                                                                   </svg>
                                                               </div>
                                                               댓글
                                                           </button>
                                                           <button class="css-135c2b4-StylelessButton-StyledActionButton e19d4hrp0">
                                                               <div class="css-1umclh2-StyledIconContainer e19d4hrp1">
                                                                   <svg viewBox="0 0 20 20" class="css-vkoibk">
                                                                       <path class="fillTarget" fill-rule="evenodd" clip-rule="evenodd" d="M14.6475 13.314C13.9492 13.314 13.3192 13.6015 12.8658 14.0631L6.98249 10.664C7.04166 10.4515 7.08333 10.2315 7.08333 9.99981C7.08333 9.76815 7.04166 9.54815 6.98333 9.33565L12.8658 5.93565C13.3192 6.39731 13.9492 6.68481 14.6475 6.68481C16.0275 6.68481 17.1475 5.56565 17.1475 4.18481C17.1475 2.80481 16.0275 1.68481 14.6475 1.68481C13.2675 1.68481 12.1475 2.80481 12.1475 4.18481C12.1475 4.41648 12.1892 4.63648 12.2483 4.84981L6.365 8.24898C5.91166 7.78731 5.28166 7.49981 4.58333 7.49981C3.20249 7.49981 2.08333 8.61898 2.08333 9.99981C2.08333 11.3806 3.20249 12.4998 4.58333 12.4998C5.28166 12.4998 5.91166 12.2123 6.365 11.7506L12.2483 15.1498C12.1892 15.3623 12.1475 15.5823 12.1475 15.814C12.1475 17.1948 13.2675 18.314 14.6475 18.314C16.0275 18.314 17.1475 17.1948 17.1475 15.814C17.1475 14.4331 16.0275 13.314 14.6475 13.314Z" fill="#87898B"></path>
                                                                   </svg>
                                                               </div>
                                                               공유
                                                           </button>
                                                           <div class="css-pfmsf9">
                                                               <div class="css-ve4kut">
                                                                   <a href="https://twitter.com/intent/tweet?url=https%3A%2F%2Fpedia.watcha.com%2Fko-KR%2Fcomments%2F6PzQ4nzppo2qV&amp;text=%EC%9E%90%EB%B0%B1&amp;browser_open_type=external" target="_blank" class="css-1cqdd33-StylelessHref">
                                                                       <div class="css-3wahtm">
                                                                           <div class="Icon twitter icon css-ormu9t-SVG e1282e850" color="#292a32">
                                                                               <div>
                                                                                   <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" class="injected-svg" data-src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik04LjQ3NTM1IDE5LjdDMTUuNjQ1NSAxOS43IDE5LjU2NjUgMTMuODUyNyAxOS41NjY1IDguNzgyMzVDMTkuNTY2NSA4LjYxNjE5IDE5LjU2MzEgOC40NTA3OCAxOS41NTUzIDguMjg2MjdDMjAuMzE2NCA3Ljc0NDcxIDIwLjk3OCA3LjA2ODk0IDIxLjUgNi4yOTk1MUMyMC44MDE1IDYuNjA0ODkgMjAuMDQ5OCA2LjgxMDc3IDE5LjI2MTMgNi45MDM1NEMyMC4wNjYyIDYuNDI4NjMgMjAuNjg0MSA1LjY3NjkzIDIwLjk3NTQgNC43ODA5OUMyMC4yMjIxIDUuMjIwNTEgMTkuMzg4MiA1LjU0MDE4IDE4LjUwMDMgNS43MTIzMkMxNy43ODkgNC45NjY1MiAxNi43NzU5IDQuNSAxNS42NTQ5IDQuNUMxMy41MDIgNC41IDExLjc1NjIgNi4yMTg0OSAxMS43NTYyIDguMzM2OTJDMTEuNzU2MiA4LjYzODExIDExLjc5MDUgOC45MzA4NSAxMS44NTczIDkuMjExODRDOC42MTc2MiA5LjA1MTUyIDUuNzQ0ODIgNy41MjQ1NCAzLjgyMjQgNS4yMDI3OEMzLjQ4NzMyIDUuNzY5NyAzLjI5NDUgNi40Mjg2MyAzLjI5NDUgNy4xMzEzNEMzLjI5NDUgOC40NjI2OCAzLjk4MjY4IDkuNjM3ODkgNS4wMjkxMyAxMC4zMjU0QzQuMzg5ODIgMTAuMzA2IDMuNzg5MDQgMTAuMTMzMSAzLjI2MzY1IDkuODQ1MzRDMy4yNjI3NCA5Ljg2MTM1IDMuMjYyNzQgOS44Nzc0MyAzLjI2Mjc0IDkuODk0MjdDMy4yNjI3NCAxMS43NTI5IDQuNjA2NjQgMTMuMzA0MyA2LjM5MDE0IDEzLjY1NjFDNi4wNjI4IDEzLjc0MzggNS43MTgyMiAxMy43OTExIDUuMzYyNTQgMTMuNzkxMUM1LjExMTQ0IDEzLjc5MTEgNC44NjcxNyAxMy43NjY2IDQuNjI5NzUgMTMuNzIxOUM1LjEyNjAzIDE1LjI0NjQgNi41NjUwMSAxNi4zNTU4IDguMjcxMzYgMTYuMzg3MUM2LjkzNjk2IDE3LjQxNjIgNS4yNTYyOSAxOC4wMjk1IDMuNDI5OTQgMTguMDI5NUMzLjExNTM3IDE4LjAyOTUgMi44MDUxNCAxOC4wMTE5IDIuNSAxNy45NzY0QzQuMjI1MjggMTkuMDY0NyA2LjI3MzYzIDE5LjcgOC40NzUzNSAxOS43WiIgZmlsbD0iY3VycmVudENvbG9yIi8+Cjwvc3ZnPgo=" xmlns:xlink="http://www.w3.org/1999/xlink">
                                                                                       <path fill-rule="evenodd" clip-rule="evenodd" d="M8.47535 19.7C15.6455 19.7 19.5665 13.8527 19.5665 8.78235C19.5665 8.61619 19.5631 8.45078 19.5553 8.28627C20.3164 7.74471 20.978 7.06894 21.5 6.29951C20.8015 6.60489 20.0498 6.81077 19.2613 6.90354C20.0662 6.42863 20.6841 5.67693 20.9754 4.78099C20.2221 5.22051 19.3882 5.54018 18.5003 5.71232C17.789 4.96652 16.7759 4.5 15.6549 4.5C13.502 4.5 11.7562 6.21849 11.7562 8.33692C11.7562 8.63811 11.7905 8.93085 11.8573 9.21184C8.61762 9.05152 5.74482 7.52454 3.8224 5.20278C3.48732 5.7697 3.2945 6.42863 3.2945 7.13134C3.2945 8.46268 3.98268 9.63789 5.02913 10.3254C4.38982 10.306 3.78904 10.1331 3.26365 9.84534C3.26274 9.86135 3.26274 9.87743 3.26274 9.89427C3.26274 11.7529 4.60664 13.3043 6.39014 13.6561C6.0628 13.7438 5.71822 13.7911 5.36254 13.7911C5.11144 13.7911 4.86717 13.7666 4.62975 13.7219C5.12603 15.2464 6.56501 16.3558 8.27136 16.3871C6.93696 17.4162 5.25629 18.0295 3.42994 18.0295C3.11537 18.0295 2.80514 18.0119 2.5 17.9764C4.22528 19.0647 6.27363 19.7 8.47535 19.7Z" fill="currentColor"></path>
                                                                                   </svg>
                                                                               </div>
                                                                           </div>트위터
                                                                       </div>
                                                                   </a>
                                                                   <a href="https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fpedia.watcha.com%2Fko-KR%2Fcomments%2F6PzQ4nzppo2qV&amp;browser_open_type=external" target="_blank" class="css-1cqdd33-StylelessHref">
                                                                       <div class="css-3wahtm">
                                                                           <div class="Icon facebook icon css-ormu9t-SVG e1282e850" color="#292a32">
                                                                               <div>
                                                                                   <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" class="injected-svg" data-src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0yMS41IDEyLjA1ODFDMjEuNSA2Ljc3OTMgMTcuMjQ2NyAyLjUgMTIgMi41QzYuNzUzMjkgMi41IDIuNSA2Ljc3OTMgMi41IDEyLjA1ODFDMi41IDE2LjgyODggNS45NzQwMSAyMC43ODMgMTAuNTE1NiAyMS41VjE0LjgyMUg4LjEwMzUyVjEyLjA1ODFIMTAuNTE1NlY5Ljk1MjMyQzEwLjUxNTYgNy41NTY4MiAxMS45MzM5IDYuMjMzNjMgMTQuMTAzOSA2LjIzMzYzQzE1LjE0MzMgNi4yMzM2MyAxNi4yMzA1IDYuNDIwMzEgMTYuMjMwNSA2LjQyMDMxVjguNzcyNDlIMTUuMDMyNUMxMy44NTI0IDguNzcyNDkgMTMuNDg0NCA5LjUwOTI3IDEzLjQ4NDQgMTAuMjY1MVYxMi4wNTgxSDE2LjExOTFMMTUuNjk3OSAxNC44MjFIMTMuNDg0NFYyMS41QzE4LjAyNiAyMC43ODMgMjEuNSAxNi44Mjg4IDIxLjUgMTIuMDU4MVoiIGZpbGw9ImN1cnJlbnRDb2xvciIvPgo8L3N2Zz4K" xmlns:xlink="http://www.w3.org/1999/xlink">
                                                                                       <path fill-rule="evenodd" clip-rule="evenodd" d="M21.5 12.0581C21.5 6.7793 17.2467 2.5 12 2.5C6.75329 2.5 2.5 6.7793 2.5 12.0581C2.5 16.8288 5.97401 20.783 10.5156 21.5V14.821H8.10352V12.0581H10.5156V9.95232C10.5156 7.55682 11.9339 6.23363 14.1039 6.23363C15.1433 6.23363 16.2305 6.42031 16.2305 6.42031V8.77249H15.0325C13.8524 8.77249 13.4844 9.50927 13.4844 10.2651V12.0581H16.1191L15.6979 14.821H13.4844V21.5C18.026 20.783 21.5 16.8288 21.5 12.0581Z" fill="currentColor"></path>
                                                                                   </svg>
                                                                               </div>
                                                                           </div>페이스북
                                                                       </div>
                                                                   </a>
                                                                   <a id="shareCommentForKakao" target="_blank" class="css-1cqdd33-StylelessHref">
                                                                       <div class="css-3wahtm">
                                                                           <div class="Icon kakaotalk icon css-ormu9t-SVG e1282e850" color="#292a32">
                                                                               <div>
                                                                                   <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" class="injected-svg" data-src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMi4wMzk0IDE4LjNDMTcuMDMxOCAxOC4zIDIxLjA3ODkgMTUuMDk4OCAyMS4wNzg5IDExLjE1QzIxLjA3ODkgNy4yMDExNiAxNy4wMzE4IDQgMTIuMDM5NCA0QzcuMDQ3MDkgNCAzIDcuMjAxMTYgMyAxMS4xNUMzIDEzLjcyNDkgNC43MjA3NSAxNS45ODE5IDcuMzAyMjkgMTcuMjQwN0M3LjAzNjA3IDE4LjM1NTQgNi41Njg1NSAyMC4zMTk4IDYuNTUxNDcgMjAuNDM4NUM2LjUyNzU0IDIwLjYwNDggNi43MTkyNSAyMC43NDA2IDYuODg3NTggMjAuNjI1MUM3LjAxMDUgMjAuNTQwOCA5LjI1Mjk1IDE5LjAxMDIgMTAuNDU0MSAxOC4xOTA0QzEwLjk2ODggMTguMjYyNCAxMS40OTg2IDE4LjMgMTIuMDM5NCAxOC4zWiIgZmlsbD0iY3VycmVudENvbG9yIi8+Cjwvc3ZnPgo=" xmlns:xlink="http://www.w3.org/1999/xlink">
                                                                                       <path fill-rule="evenodd" clip-rule="evenodd" d="M12.0394 18.3C17.0318 18.3 21.0789 15.0988 21.0789 11.15C21.0789 7.20116 17.0318 4 12.0394 4C7.04709 4 3 7.20116 3 11.15C3 13.7249 4.72075 15.9819 7.30229 17.2407C7.03607 18.3554 6.56855 20.3198 6.55147 20.4385C6.52754 20.6048 6.71925 20.7406 6.88758 20.6251C7.0105 20.5408 9.25295 19.0102 10.4541 18.1904C10.9688 18.2624 11.4986 18.3 12.0394 18.3Z" fill="currentColor"></path>
                                                                                   </svg>
                                                                               </div>
                                                                           </div>카카오톡
                                                                       </div>
                                                                   </a>
                                                                   <div class="css-3wahtm">
                                                                       <div class="Icon link icon css-ormu9t-SVG e1282e850" color="#292a32">
                                                                           <div>
                                                                               <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" class="injected-svg" data-src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTMuOSAxMkMzLjkgMTAuMjkgNS4yOSA4LjkgNyA4LjlIMTFWN0g3QzQuMjQgNyAyIDkuMjQgMiAxMkMyIDE0Ljc2IDQuMjQgMTcgNyAxN0gxMVYxNS4xSDdDNS4yOSAxNS4xIDMuOSAxMy43MSAzLjkgMTJaTTggMTNIMTZWMTFIOFYxM1pNMTcgN0gxM1Y4LjlIMTdDMTguNzEgOC45IDIwLjEgMTAuMjkgMjAuMSAxMkMyMC4xIDEzLjcxIDE4LjcxIDE1LjEgMTcgMTUuMUgxM1YxN0gxN0MxOS43NiAxNyAyMiAxNC43NiAyMiAxMkMyMiA5LjI0IDE5Ljc2IDcgMTcgN1oiIGZpbGw9ImN1cnJlbnRDb2xvciIvPgo8L3N2Zz4K" xmlns:xlink="http://www.w3.org/1999/xlink">
                                                                                   <path d="M3.9 12C3.9 10.29 5.29 8.9 7 8.9H11V7H7C4.24 7 2 9.24 2 12C2 14.76 4.24 17 7 17H11V15.1H7C5.29 15.1 3.9 13.71 3.9 12ZM8 13H16V11H8V13ZM17 7H13V8.9H17C18.71 8.9 20.1 10.29 20.1 12C20.1 13.71 18.71 15.1 17 15.1H13V17H17C19.76 17 22 14.76 22 12C22 9.24 19.76 7 17 7Z" fill="currentColor"></path>
                                                                               </svg>
                                                                           </div>
                                                                       </div>링크 복사
                                                                   </div>
                                                               </div>
                                                           </div>
                                                           <textarea readonly="" class="css-1hxlv9b">https://pedia.watcha.com/ko-KR/comments/6PzQ4nzppo2qV</textarea>
                                                       </div>
                                                   </div>
                                               </div>
                                               <hr class="css-god8tc">
                                           </section>
                                       </section>
                                       
                                       
                                       <!-- dkfjskfjsidfjd -->
                                       <section class="css-1r5nwql">
                                       <c:forEach var="CommentList" items="${CommentList}">
                                           <div class="css-0">
                                               <div class="css-1m1whp6">
                                                   <div class="css-ov1ktg">
                                                       <a class="css-255jr8" href="/ko-KR/users/6ADvGQN6EKxzZ">
                                                           <div class="css-1vlofig"></div>
                                                       </a>
                                                       <div class="css-199ku80">
                                                           <div class="css-1sg2lsz">
                                                               <a class="css-255jr8" href="/ko-KR/users/6ADvGQN6EKxzZ">
                                                                   <div class="css-72k174">${CommentList.user_id }</div>
                                                               </a>
                                                               <div class="css-maxfbg">${CommentList.comment_date }</div>
                                                           </div>
                                                           <div class="css-yb0jaq">${CommentList.comment_content }</div>
                                                           <div class="css-ov1ktg">
                                                               <div class="css-1d8juai">
                                                                   <div class="Icon like css-1tuvmpc-SVG e1282e850">
                                                                       <div>
                                                                           <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 14 14" fill="none" class="injected-svg" data-src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTQiIGhlaWdodD0iMTQiIHZpZXdCb3g9IjAgMCAxNCAxNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0zLjkzNzgzIDUuNTMzMkgyLjE4NzgzQzEuODY1ODMgNS41MzMyIDEuNjA0NDkgNS43OTQ1NCAxLjYwNDQ5IDYuMTE2NTRWMTEuOTQ5OUMxLjYwNDQ5IDEyLjI3MTkgMS44NjU4MyAxMi41MzMyIDIuMTg3ODMgMTIuNTMzMkgzLjkzNzgzQzQuMjYwNDEgMTIuNTMzMiA0LjUyMTE2IDEyLjI3MTkgNC41MjExNiAxMS45NDk5VjYuMTE2NTRDNC41MjExNiA1Ljc5NDU0IDQuMjYwNDEgNS41MzMyIDMuOTM3ODMgNS41MzMyWiIgZmlsbD0iIzg3ODk4QiIvPgo8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTguMTk3MzMgMy4wNDE3OUw4LjE5MTQ5IDIuNzk1NjJMOC4xNzgwOCAyLjIwMTc5TDguMTc2OTEgMi4xNjc5NUw4LjE3MzQxIDIuMTM0N0M4LjE2ODE2IDIuMDc4NyA4LjE3NTc0IDIuMDU0MiA4LjE3NDU4IDIuMDUzMDRDOC4xODQ0OSAyLjA0NzIgOC4yMjc2NiAyLjAzMzIgOC4zMTEwOCAyLjAzMzJDOC40ODA4MyAyLjAzMzIgOS4zMjYwOCAyLjA4MzM3IDkuMzI2MDggMy4wNzA5NUM5LjMyNjA4IDMuNDUzNjIgOS4yOTQ1OCAzLjc1MTEyIDkuMjI2OTEgNC4wMDg5NUw4Ljk4NjU4IDQuOTIzMDRDOC45NjI2NiA1LjAxNTc5IDkuMDMyMDggNS4xMDYyIDkuMTI3NzQgNS4xMDYySDEwLjA3MjdIMTEuMDEyNUMxMS4yNDA2IDUuMTA2MiAxMS40NTgyIDUuMjA1OTUgMTEuNjA5OCA1LjM3OTJDMTEuNzU4NiA1LjU1MTI5IDExLjgzMDkgNS43NzkzNyAxMS44MDkzIDYuMDA4MDRMMTAuOTcwNSAxMC4zMzkzTDEwLjk2NDcgMTAuMzY4NUwxMC45NjEyIDEwLjM5NzZDMTAuOTEzMyAxMC43Nzc0IDEwLjU2NzQgMTEuMDc0OSAxMC4xNzM3IDExLjA3NDlINS45Nzk0OVY1LjczOTdDNS45Nzk0OSA1LjUyMzg3IDYuMDk4NDkgNS4yOTQwNCA2LjMzNDE2IDUuMDU2NjJMNy45Mzk0OSAzLjQzMDI5TDguMTA0NTggMy4yNjI4N0M4LjE5NzMzIDMuMTY2NjIgOC4xOTczMyAzLjA0MTc5IDguMTk3MzMgMy4wNDE3OVpNMTIuMjY5NiA0LjgwNTc5QzExLjk1MTcgNC40NDAwNCAxMS40OTMyIDQuMjMxMiAxMS4wMTI1IDQuMjMxMkgxMC4wNzI3QzEwLjE2MiAzLjg5MjI5IDEwLjIwMTEgMy41MjA3IDEwLjIwMTEgMy4wNzA5NUMxMC4yMDExIDEuNzU2NyA5LjIyMTY2IDEuMTU4MiA4LjMxMTA4IDEuMTU4MkM3Ljk2ODA4IDEuMTU4MiA3LjcwMDMzIDEuMjY1NTQgNy41MTU5OSAxLjQ3NzI5QzcuMzk2OTkgMS42MTI2MiA3LjI2NTc0IDEuODUxMiA3LjMwMzA4IDIuMjIxNjJMNy4zMTY0OSAyLjgxNTQ1TDUuNzExMTYgNC40NDE3OUM1LjMwODY2IDQuODQ4OTUgNS4xMDQ0OSA1LjI4NTg3IDUuMTA0NDkgNS43Mzk3VjExLjM2NjVDNS4xMDQ0OSAxMS42ODg1IDUuMzY1ODMgMTEuOTQ5OSA1LjY4NzgzIDExLjk0OTlIMTAuMTczN0MxMS4wMTQyIDExLjk0OTkgMTEuNzI5NCAxMS4zMTIzIDExLjgyOTcgMTAuNTA1NUwxMi42NzUgNi4xNDA0NUMxMi43MzUxIDUuNjU2ODcgMTIuNTg2OSA1LjE3MDk1IDEyLjI2OTYgNC44MDU3OVoiIGZpbGw9IiM4Nzg5OEIiLz4KPC9zdmc+Cg==" xmlns:xlink="http://www.w3.org/1999/xlink">
                                                                               <path fill-rule="evenodd" clip-rule="evenodd" d="M3.93783 5.5332H2.18783C1.86583 5.5332 1.60449 5.79454 1.60449 6.11654V11.9499C1.60449 12.2719 1.86583 12.5332 2.18783 12.5332H3.93783C4.26041 12.5332 4.52116 12.2719 4.52116 11.9499V6.11654C4.52116 5.79454 4.26041 5.5332 3.93783 5.5332Z" fill="#87898B"></path>
                                                                               <path fill-rule="evenodd" clip-rule="evenodd" d="M8.19733 3.04179L8.19149 2.79562L8.17808 2.20179L8.17691 2.16795L8.17341 2.1347C8.16816 2.0787 8.17574 2.0542 8.17458 2.05304C8.18449 2.0472 8.22766 2.0332 8.31108 2.0332C8.48083 2.0332 9.32608 2.08337 9.32608 3.07095C9.32608 3.45362 9.29458 3.75112 9.22691 4.00895L8.98658 4.92304C8.96266 5.01579 9.03208 5.1062 9.12774 5.1062H10.0727H11.0125C11.2406 5.1062 11.4582 5.20595 11.6098 5.3792C11.7586 5.55129 11.8309 5.77937 11.8093 6.00804L10.9705 10.3393L10.9647 10.3685L10.9612 10.3976C10.9133 10.7774 10.5674 11.0749 10.1737 11.0749H5.97949V5.7397C5.97949 5.52387 6.09849 5.29404 6.33416 5.05662L7.93949 3.43029L8.10458 3.26287C8.19733 3.16662 8.19733 3.04179 8.19733 3.04179ZM12.2696 4.80579C11.9517 4.44004 11.4932 4.2312 11.0125 4.2312H10.0727C10.162 3.89229 10.2011 3.5207 10.2011 3.07095C10.2011 1.7567 9.22166 1.1582 8.31108 1.1582C7.96808 1.1582 7.70033 1.26554 7.51599 1.47729C7.39699 1.61262 7.26574 1.8512 7.30308 2.22162L7.31649 2.81545L5.71116 4.44179C5.30866 4.84895 5.10449 5.28587 5.10449 5.7397V11.3665C5.10449 11.6885 5.36583 11.9499 5.68783 11.9499H10.1737C11.0142 11.9499 11.7294 11.3123 11.8297 10.5055L12.675 6.14045C12.7351 5.65687 12.5869 5.17095 12.2696 4.80579Z" fill="#87898B"></path>
                                                                           </svg>
                                                                       </div>
                                                                   </div>
                                                                    ${CommentList.comment_like }
                                                               </div>
                                                               <div class="css-4ygot5">
                                                                   <div class="Icon more css-1b4hoch-SVG e1282e850">
                                                                       <div>
                                                                           <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none" class="injected-svg" data-src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjAiIGhlaWdodD0iMjAiIHZpZXdCb3g9IjAgMCAyMCAyMCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMS4yNTEgNS40MjY3NkMxMS4yNTEgNi4xMTc1OSAxMC42OTEgNi42NzY3NiAxMC4wMDEgNi42NzY3NkM5LjMxMDE0IDYuNjc2NzYgOC43NTA5OCA2LjExNzU5IDguNzUwOTggNS40MjY3NkM4Ljc1MDk4IDQuNzM2NzYgOS4zMTAxNCA0LjE3Njc2IDEwLjAwMSA0LjE3Njc2QzEwLjY5MSA0LjE3Njc2IDExLjI1MSA0LjczNjc2IDExLjI1MSA1LjQyNjc2Wk0xMC4wMDEgOC43NDk5M0M5LjMxMDE0IDguNzQ5OTMgOC43NTA5OCA5LjMwOTkzIDguNzUwOTggOS45OTk5M0M4Ljc1MDk4IDEwLjY5MDggOS4zMTAxNCAxMS4yNDk5IDEwLjAwMSAxMS4yNDk5QzEwLjY5MSAxMS4yNDk5IDExLjI1MSAxMC42OTA4IDExLjI1MSA5Ljk5OTkzQzExLjI1MSA5LjMwOTkzIDEwLjY5MSA4Ljc0OTkzIDEwLjAwMSA4Ljc0OTkzWk0xMC4wMDEgMTMuMzIzMUM5LjMxMDE0IDEzLjMyMzEgOC43NTA5OCAxMy44ODIzIDguNzUwOTggMTQuNTczMUM4Ljc1MDk4IDE1LjI2MzkgOS4zMTAxNCAxNS44MjMxIDEwLjAwMSAxNS44MjMxQzEwLjY5MSAxNS44MjMxIDExLjI1MSAxNS4yNjM5IDExLjI1MSAxNC41NzMxQzExLjI1MSAxMy44ODIzIDEwLjY5MSAxMy4zMjMxIDEwLjAwMSAxMy4zMjMxWiIgZmlsbD0iI0EwQTBBMCIvPgo8L3N2Zz4K" xmlns:xlink="http://www.w3.org/1999/xlink">
                                                                               <path fill-rule="evenodd" clip-rule="evenodd" d="M11.251 5.42676C11.251 6.11759 10.691 6.67676 10.001 6.67676C9.31014 6.67676 8.75098 6.11759 8.75098 5.42676C8.75098 4.73676 9.31014 4.17676 10.001 4.17676C10.691 4.17676 11.251 4.73676 11.251 5.42676ZM10.001 8.74993C9.31014 8.74993 8.75098 9.30993 8.75098 9.99993C8.75098 10.6908 9.31014 11.2499 10.001 11.2499C10.691 11.2499 11.251 10.6908 11.251 9.99993C11.251 9.30993 10.691 8.74993 10.001 8.74993ZM10.001 13.3231C9.31014 13.3231 8.75098 13.8823 8.75098 14.5731C8.75098 15.2639 9.31014 15.8231 10.001 15.8231C10.691 15.8231 11.251 15.2639 11.251 14.5731C11.251 13.8823 10.691 13.3231 10.001 13.3231Z" fill="#A0A0A0"></path>
                                                                           </svg>
                                                                       </div>
                                                                   </div>
                                                                   <div class="css-aa3xw">
                                                                       <div class="css-6btlr7">
                                                                           <div class="css-ve4kut">
                                                                               <div class="css-19hkid5">부적절한 표현 신고</div>
                                                                           </div>
                                                                       </div>
                                                                   </div>
                                                               </div>
                                                           </div>
                                                       </div>
                                                   </div>
                                               </div>
                                           </div>
                                           </c:forEach>
                                       </section>   
                                       <!-- dkfjskfjsidfjd -->
                                       
                                   </div>
                               </div>
                           </section>
                       </section>
                   </div>
               </section>


<!--     	nfhjhfsjkdfhsjdkfhasdfhdsifh -->
                   
          
        <!--모달창 !!!!!!!!!!! 대댓글 !!!!!!!!!!!!!!!!!!11-->
        <div class="css-14gy7wr" id="modal">
            <div id="modal-container-SYLPdBTcEzZ6-wfGcd5Go" class="css-rpyl6s">
                <div class="css-1p257d1-modalAddStyle">
                    <header title="" class="css-166ww79-HeaderBarPrimitive-headerAddStyle">
                        <div class="css-19pxr9t"></div>
                        <em class="css-10mjbgt">댓글</em>
                        <div class="css-19pxr9t">
                            <button class="css-1lvet1d-StylelessButton"></button>
                        </div>
                    </header>
                    <div class="css-1iv0iqc">
                        <div height="100%" class="css-2zu8pq">
                            <div class="css-cdzmq7">
                                <div class="css-iowq1w">
                                    <div class="css-iowq1w">
	                                    <c:forEach var="BoardComment" items="${BoardComment}">
		                                    <form action="${pageContext.request.contextPath }/sriracha/addComment.do" id="addCommentForm" method="post">
		                                    	<input type="hidden" name="board_num" value="${BoardComment.board_num }">
		                                    	<input type="hidden" name="movie_id" value="${BoardComment.movie_id }">
		                                    	<input type="hidden" name="user_num" value="${BoardComment.user_num }">
		                                     	<c:forEach var="boardMovie" items="${BoardComment_Movie}">
		                                        	<textarea maxlength="10000" placeholder="이 ${boardMovie.movie_title}에 대한 생각을 자유롭게 표현해주세요." class="css-1k5ei58" id="writecomment1" name="comment_content"></textarea>
		                                        </c:forEach>
		                                       </form>
	                                     </c:forEach>
                                        <div class="css-238o9r"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="css-183vuuo">
                        <div class="css-a2jbfo">
                            <div class="css-6qnjre"></div>
                            <div class="css-6qnjre">
                                <p class="css-1s08rlk"></p>
                                <p class="css-ynpx67" id="reCount">0/10000</p>
                                <input class="css-1ukikc-StylelessButton" type="button" id="commentbtn" value="저장" onclick="addcomment()">
<!--                                 <button class="css-1ukikc-StylelessButton" id="commentbtn">저장</button> -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!----모달창 !!! 대댓글 끝!!!!!------>
        <!--모달창 : 알림 - 코멘트를 삭제하시겠어요 ?-->
    <div class="css-14gy7wr" id="modal2">
        <div id="modal-container-7jMaFDbYzaXVi3tG2JxKy" class="css-rpyl6s">
            <div class="css-1yszxv0">
                <div class="css-f35o9y">
                    <div class="css-1gkas1x-Grid e1689zdh0">
                        <div class="css-1y901al-Row emmoxnt0">
                            <div class="css-2djw8f">알림</div>
                            <div class="css-148qwic">코멘트를 삭제하시겠어요?</div>
                            <div size="2" class="css-gy4ioq">
                                <button class="css-1gdw77k-StylelessButton" id="cancel">취소</button>
                                <button class="css-sfhtz9-StylelessButton" id="deletecomment">확인</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--모달창 : 알림 - 코멘트를 삭제하시겠어요 ? 끝-->
      
        <!-- <script src="https://d2rlq84xifqisi.cloudfront.net/javascripts/web.1bdc53b756660e9b2289.js" crossorigin="anonymous"></script>
    
      
      
        <script>
            if ('serviceWorker' in navigator) {
            window.addEventListener('load', function() {
                navigator.serviceWorker.register('/sw.js');
            });
            }
        </script> 
    
  
        <div id="fb-root" class=" fb_reset">
            <div style="position: absolute; top: -10000px; width: 0px; height: 0px;">
                <div></div>
            </div>
        </div> -->


			<!-- 푸터 시작 -->
			<jsp:include page="../view/common/footer.jsp" />
		    <!-- 푸터 끝 -->
            
    </body>
    <script type="text/javascript">
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
		
		function addcomment(){
			
		    let form = document.getElementById("addCommentForm");
		    form.submit();
		}
		
		/*코멘트 삭제 모달창 - 코멘트를 삭제하시겠어요?*/
		const modal2 = document.getElementById("modal2")
		const deleteBtn = document.getElementById("deleteBtn")
		deleteBtn.addEventListener("click", e => {
		     modal2.style.display = "flex"
		})

		modal2.addEventListener("click", e => {
		const evTarget = e.target
		     if(evTarget.classList.contains("css-1yszxv0")) {
		         modal2.style.display = "none"
		     }
		})
		
		//취소 버튼 클릭
		$("#cancel").click(function(){
		    modal2.style.display = "none"
		})
		
		//코멘트 수정하기
		$("#modifyBtn").click(function(){
		    modal.style.display = "flex"
		})

        
    </script>
</html>