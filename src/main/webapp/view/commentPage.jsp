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
                        <a href="${pageContext.request.contextPath }/sriracha/commentDetailView.do?board_num=${board.board_num }&user_num=${board.user_num }">
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
        </section>
        
    </section>
    
</body>
</html>