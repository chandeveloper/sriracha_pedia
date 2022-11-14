<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <!-- <meta http-equiv="X-UA-Compatible" content="IE=edge"> -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/commentPage.css">
    <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"> -->
    <!-- <link rel="preconnect" href="https://fonts.gstatic.com"> -->
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css"
        integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc" crossorigin="anonymous">

    <!-- <link rel="stylesheet" href="css/menu.css"> -->

    <!-- <script type="module" src="moviePage.js"></script> -->
    <script type="module" src="../js/commentPage.js"></script>
    <title>코멘트 페이지</title>

</head>
<body>
	<c:set var="boardList" value="${requestScope.boardList}" />
	
    <section class="container">
        
        <!-- 헤더 시작 -->
    	<jsp:include page="../view/common/header.jsp" />
    	<!-- 헤더 끝 -->
    	
        <header class="css-4g5dyy-HeaderBarPrimitive">
            <div class="css-uf1ume">
                <div class="css-0">
                    <a href="contents.jsp">
                    <button class="e1t9gclr0 css-a6n3jw-StylelessButton-HeaderCloseButtonSelf-TopLeftButton e1k34u8y0"></button>
                    </a>
                </div>
                <div class="css-0"></div>
            </div>
            <div class="css-1d4ojes">
                <div class="css-1bvesam">코멘트</div>
            </div>
            <div class="css-10bjf2k">코멘트</div>
        </header>
        
        <section class="allComments">

			<c:if test="${requestScope.boardList != null }">
				<c:forEach var="board" items="${requestScope.boardList}">
            <div class="commentBox">
                <ul class="commentUl">
                    <li class="firstLi">
                        <a href="./mypage.jsp" class="connectToMypage">
                            <div class="photoAndName">
                                <img class="photo" src="https://picsum.photos/200/200?random=2" alt="사진이 없습니다">
                                <span class="name">${board.user_id }</span>
                            </div> 
                        </a>
                        <div class="rate">★5.0</div>
                    </li>
                    <li class="secondLi">
                        <a href="${pageContext.request.contextPath }/sriracha/commentDetailView.do?board_num=1&movie_id=1">
                            <span class="commentText">
								${board.board_content }
                            </span>
                        </a>
                    </li>
                    <li class="thirdLi">
                        <i class="fas fa-thumbs-up"></i>
                        <span class="numOfLikes">${board.board_like }</span>
                        <i class="fas fa-comment"></i>
                        <span class="numOfComments">5</span>
                    </li>
                    
                    <li class="fourthLi">
                        <button class="like">좋아요</button>
                    </li>
                </ul>
            </div>
            </c:forEach>
            </c:if>

            <div class="commentBox">
                <ul class="commentUl">
                    <li class="firstLi">
                        <a href="/view/mypage.jsp" class="connectToMypage">
                            <div class="photoAndName">
                                <img class="photo" src="https://picsum.photos/200/200?random=3" alt="사진이 없습니다">
                                <span class="name">홍길동</span>
                            </div>
                        </a>
                        <div class="rate">★3.0</div>
                    </li>
                    <li class="secondLi">
                        <a href="/view/comment_detail.jsp">
                            <span class="commentText">
                                우주의 낭만과 공포, 죽음에 대한 두려움과 생에 대한 감사함이 고루 느껴지는 황홀하고도 섬찟한 우주 비행.
                                ps. 그 어떤 극찬이 이 영화를 완벽히 형용할 수 있을까. 영화가 끝나는 순간, 떨어져가던 의욕의 맥박이 격렬히 요동치는 기분이며,
                                삶에 대한 애정이 급격히 샘솟는 기분. 누군가 사는 게 지루하고 부질없다 투정한다면 즉시 권해주고 싶은 영화이자,
                                나 역시 지루함과 덧없음에 허우적거릴 때면 어김없이 이 영화를 찾게 될 것 같다.
                            </span>
                        </a>
                    </li>
                    <li class="thirdLi">
                            <i class="fas fa-thumbs-up"></i>
                            <span class="numOfLikes">257</span>
                            <i class="fas fa-comment test1"></i>
                            <span class="numOfComments">8</span>
                    </li>
                    <li class="fourthLi">
                        <button class="like">좋아요</button>
                    </li>
                </ul>
            </div>

            <div class="commentBox">
                <ul class="commentUl">
                    <li class="firstLi">
                        <a href="/view/mypage.jsp" class="connectToMypage">
                            <div class="photoAndName">
                                <img class="photo" src="https://picsum.photos/200/200?random=1" alt="사진이 없습니다">
                                <span class="name">김철수</span>
                            </div>
                        </a>
                        <div class="rate">★4.0</div>
                    </li>
                    <li class="secondLi">
                        <a href="/view/comment_detail.jsp">
                            <span class="commentText">
                                새삼스레 온몸을 압도해오는 우주의 묵직한 존재감
                                모든 것이 안겨있지만 그 무엇도 안아주지 않는,
                                영겁을 그저 존재해온 그 앞에서
                                이토록 하잘것없는 무게의 우리는 얼마나 오만해왔는가
                            </span>
                        </a>
                    </li>
                    <li class="thirdLi">
                        <i class="fas fa-thumbs-up"></i>
                        <span class="numOfLikes">182</span>
                        <i class="fas fa-comment test2"></i>
                        <span class="numOfComments">2</span>
                    </li>
                    <li class="fourthLi">
                        <button class="like">좋아요</button>
                    </li>
                </ul>
            </div>

        </section>
        <nav class="footer">
            <div class="active footer1">
                <i class="fas fa-home footerHome"></i>
                <p class="footerText1">홈</p>
            </div>
            <div class="footer2">
                <i class="fas fa-search footerSearch"></i>
                <p class="footerText2">검색</p>
            </div>
            <div class="footer3">
                <i class="fas fa-star footerStar"></i>
                <p class="footerText3">평가</p>
            </div>
            <div class="footer4">
                <i class="fas fa-user-alt footerUser"></i>
                <p class="footerText4">나의 왓챠</p>
            </div>
        </nav>
    </section>
    
</body>
</html>