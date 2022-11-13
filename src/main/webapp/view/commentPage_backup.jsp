<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <section class="container">
        <!-- <nav class="nav">
            <div class="nav1">
                <a href="./../index.jsp" class="logo scrollLogo"><span>HJPARK</span><span>PEDIA</span></a>
                <div class="logoText scrollText">
                    <p>영화</p>
                    <p>TV 프로그램</p>
                    <p>책</p>
                </div>
            </div>
            <div class="nav2">
                <p class="searchBox scrollBox">
                    <i class="fas fa-search"></i>
                    <input class="searchBoxInput" type="text" placeholder="콘텐츠, 인물, 컬렉션, 유저를 검색해보세요" />
                </p>
                <p class="navEst scrollEst">평가하기</p>
                <i class="fas fa-search navSearch"></i>
                <i class="fas fa-star navStar"></i>
                <i class="fas fa-user-circle navProfile"></i>
            </div>
        </nav> -->
        <header class="menu-box">
            <div class="menu">
                <div class="menu_left">
                    <a href="./main.jsp"><img class="menu_logo" src="../img/logo.png"
                            style="max-width:200px; width:100%; height:auto;" /></a>
                    <span class="menu_movie">영화</span>
                    <span class="menu_tv">TV 프로그램</span>
                    <span class="menu_book">책</span>
                </div>
                <div class="menu_right">
                    <div class="menu_search-box">
                        <i class="fas fa-search"></i>
                        <input class="menu_search" type="text" placeholder="작품 제목,배우,감독을 검색해보세요.">
                    </div>
                    <span class="menu_login" onclick="location.href='./login.jsp'" style="cursor: pointer;">로그아웃 </span>
                    <span class="menu_sign-up" id="js-signUp" onclick="location.href='./mypage.jsp'"
                        style="cursor: pointer;">마이페이지</span>
                </div>
                
                <div class="overlay"></div>
            </div>
        </header>
        <!-- <section class="commentTop">
            <a href="./../index.jsp">
                <i class="fas fa-arrow-left"></i>
            </a>
            <div class="commentTopText">코멘트</div>
        </section> -->
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

            <div class="commentBox">
                <ul class="commentUl">
                    <li class="firstLi">
                        <a href="./mypage.jsp" class="connectToMypage">
                            <div class="photoAndName">
                                <img class="photo" src="https://picsum.photos/200/200?random=2" alt="사진이 없습니다">
                                <span class="name">박현정</span>
                            </div>
                        </a>
                        <div class="rate">★5.0</div>
                    </li>
                    <li class="secondLi">
                        <a href="./comment_detail.jsp">
                            <span class="commentText">
                                <!-- Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                Cumque repudiandae ad maiores recusandae necessitatibus
                                adipisci quos dolor architecto libero repellendus?
                                Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                Cumque repudiandae ad maiores recusandae necessitatibus
                                adipisci quos dolor architecto libero repellendus?
                                Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                Cumque repudiandae ad maiores recusandae necessitatibus
                                adipisci quos dolor architecto libero repellendus? -->
                                * 이 프로젝트의 비하인드 스토리 * <br />
                                원래 왓챠피디아 클론은 제가 속한 개발스터디의 첫 팀프로젝트였습니다. <br />
                                스터디가 결성됐을 당시, 저를 포함한 팀원 모두가 아직 스스로 뭔가를 만들어본 경험이 없는 초보자들이었습니다. &nbsp;
                                그런 상황에서 일단 각자 구현할 페이지를 정하고 html, css, vanilla js로 보이는 화면만 구현하는 것을 1차 목표로 정했습니다.<br />
                                하지만 구현하면 할수록 당시 저희 팀의 수준으로는 사이트 전체를 완전하게 클론하는 것이 어렵겠다는 것을 느끼고있던 찰나에, &nbsp;
                                프론드엔드와 백엔드를 모두 활용한 완전한 프로젝트를 해보신 분이 새로 팀원으로 들어왔습니다.<br />
                                그 분께서 저희 팀의 상황을 파악하시더니 단번에 왓챠피디아 클론은 현재 수준에선 무리라고 단정지으셨고,&nbsp;
                                저를 포함한 팀원 모두가 그 말에 동의하면서 일단 각자 공부를 더 하고 추후에 새로운 프로젝트를 시작해보는 걸로 결정했습니다.<br />
                                하지만 저는 당시에 제가 맡은 파트를 많이 구현해놓은 상태였고 이대로 내려놓기엔 아쉬워서,&nbsp; 개인프로젝트로 구현이 안된 나머지 부분을 마저 구현하였습니다.<br />
                                이 프로젝트는 당시 제가 맡았던 파트로,&nbsp; 모든 코드는 스스로 짰으며 일체의 어떠한 라이브러리도 사용하지 않았습니다.<br />
                                처음으로 스스로 만든 프로젝트라 코드의 퀄리티가 상당히 낮지만, &nbsp;일단 보이는 화면만 완벽하게 구현하는 것을 목표로 했습니다.<br />
                                추후에 차차 리팩토링해나가는 것도 재밌을 것 같습니다.
                            </span>
                        </a>
                    </li>
                    <li class="thirdLi">
                        <i class="fas fa-thumbs-up"></i>
                        <span class="numOfLikes">271</span>
                        <i class="fas fa-comment"></i>
                        <span class="numOfComments">5</span>
                    </li>
                    <!-- <div class="css-hy68ty">
                        <button class="css-1h18l7j-StylelessButton">좋아요</button>
                    </div> -->
                    <li class="fourthLi">
                        <button class="like">좋아요</button>
                    </li>
                </ul>
            </div>

            <div class="commentBox">
                <ul class="commentUl">
                    <li class="firstLi">
                        <a href="./mypage.jsp" class="connectToMypage">
                            <div class="photoAndName">
                                <img class="photo" src="https://picsum.photos/200/200?random=3" alt="사진이 없습니다">
                                <span class="name">홍길동</span>
                            </div>
                        </a>
                        <div class="rate">★3.0</div>
                    </li>
                    <li class="secondLi">
                        <a href="comment_detail.jsp">
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
                        <a href="./mypage.jsp" class="connectToMypage">
                            <div class="photoAndName">
                                <img class="photo" src="https://picsum.photos/200/200?random=1" alt="사진이 없습니다">
                                <span class="name">김철수</span>
                            </div>
                        </a>
                        <div class="rate">★4.0</div>
                    </li>
                    <li class="secondLi">
                        <a href="./comment_detail.jsp">
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