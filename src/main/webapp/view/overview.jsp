<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <!-- <meta http-equiv="X-UA-Compatible" content="IE=edge"> -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/overview.css">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css"
        integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc" crossorigin="anonymous">
    <title>Document</title>


</head>
<body>

	<c:set var="overview" value="${requestScope.overview }"></c:set>
	
        <!-- Google Tag Manager (noscript) -->
        <noscript>
            <iframe src="https://www.googletagmanager.com/ns.jsp?id=GTM-KVV8C33"
        height="0" width="0" style="display:none;visibility:hidden"></iframe>
        </noscript>
        <!-- End Google Tag Manager (noscript) -->
        <div id="root">
            <div class="css-5jq76">
                <div class="css-1xm32e0">
                    <!--헤더-->
                        <header class="menu-box">
                            <div class="menu">
                                <div class="menu_left">
                                    <a href="main.jsp"><img class="menu_logo" src="../img/logo.png"
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
                    <!--헤더-->
                    <section class="css-18gwkcr">
                        <section class="css-9v5p4g-StyledSectionWithShrinkHeaderBar e1ntr3260">
                            <header class="css-4g5dyy-HeaderBarPrimitive">
                                <div class="css-uf1ume">
                                    <div class="css-0">
                                        <a href="./contents.jsp">
                                        <button class="e1t9gclr0 css-a6n3jw-StylelessButton-HeaderCloseButtonSelf-TopLeftButton e1k34u8y0"></button>
                                        </a>
                                    </div>
                                    <div class="css-0"></div>
                                </div>
                                <div class="css-1d4ojes">
                                    <div class="css-1bvesam">기본 정보</div>
                                </div>
                                <div class="css-10bjf2k">기본 정보</div>
                            </header>
                            <div class="css-1gkas1x-Grid e1689zdh0">
                                <div class="css-1y901al-Row emmoxnt0">
                                    <ul class="css-f4q6l4-VisualUl-DescriptionUl e1kvv3950">
                                        <dl class="css-14a04hc-DescriptionList e1kvv3951">
                                            <dt class="css-2ugu0-DescriptionTitle e1kvv3952">원제</dt>
                                            <dd class="css-11yx0y9-DescriptionDetail e1kvv3953">${overview.movie_title }</dd>
                                        </dl>
                                        <dl class="css-14a04hc-DescriptionList e1kvv3951">
                                            <dt class="css-2ugu0-DescriptionTitle e1kvv3952">개봉일</dt>
                                            <dd class="css-11yx0y9-DescriptionDetail e1kvv3953">${overview.movie_date }</dd>
                                        </dl>
                                        <dl class="css-14a04hc-DescriptionList e1kvv3951">
                                            <dt class="css-2ugu0-DescriptionTitle e1kvv3952">인기점수</dt>
                                            <dd class="css-11yx0y9-DescriptionDetail e1kvv3953">${overview.movie_popularity }점</dd>
                                        </dl>
                                        <dl class="css-14a04hc-DescriptionList e1kvv3951">
                                            <dt class="css-2ugu0-DescriptionTitle e1kvv3952">별점</dt>
                                            <dd class="css-11yx0y9-DescriptionDetail e1kvv3953">★ ${overview.movie_vote_average/2 }</dd>
                                        </dl>
<!--                                         <dl class="css-14a04hc-DescriptionList e1kvv3951"> -->
<!--                                             <dt class="css-2ugu0-DescriptionTitle e1kvv3952">상영시간</dt> -->
<!--                                             <dd class="css-11yx0y9-DescriptionDetail e1kvv3953">1시간 45분</dd> -->
<!--                                         </dl> -->
<!--                                         <dl class="css-14a04hc-DescriptionList e1kvv3951"> -->
<!--                                             <dt class="css-2ugu0-DescriptionTitle e1kvv3952">연령 등급</dt> -->
<!--                                             <dd class="css-11yx0y9-DescriptionDetail e1kvv3953">15세 관람가</dd> -->
<!--                                         </dl> -->
                                        <dl class="css-1gkwvxt-DescriptionList e1kvv3951">
                                            <dt class="css-2ugu0-DescriptionTitle e1kvv3952">내용</dt>
                                            <dd class="css-17t919k-SummaryDetail e1kvv3954">${overview.movie_overview }
                                            </dd>
                                        </dl>
                                    </ul>
                                </div>
                            </div>
                        </section>
                    </section>
                    <footer class="css-1jjny0x">
                        <nav class="css-1ho7bw2">
                            <ul class="css-vsvx7g-VisualUl">
                                <li class="css-1hz4g3g">
                                    <a href="/ko-KR">
                                        <svg fill="#292a32" width="24" height="24" viewBox="0 0 24 24" class="css-1u7hvrn">
                                            <g fill="none">
                                                <path class="fillTarget" fill="#292A32" fill-rule="evenodd" d="M22.818 11.45l-.078-.076-10.26-8.698c-.14-.117-.31-.176-.48-.176-.17 0-.34.059-.479.176l-10.26 8.698-.078.076c-.238.27-.247.68-.006.963l.076.077c.14.123.317.181.495.18l-.001.001h1.848l.704 8.63.015.097c.074.348.384.602.746.602h4.187l.104-.007c.373-.051.469-.371.469-.754v-4.16h4.36v4.16c0 .383.095.703.469.754l.105.007h4.186c.362 0 .672-.254.747-.602l.014-.098.705-8.63h1.847c.177.001.354-.057.494-.18l.077-.077c.24-.282.232-.692-.006-.963"></path>
                                            </g>
                                        </svg>
                                        <div class="css-vuw3o9">홈</div>
                                    </a>
                                </li>
                                <li class="css-1hz4g3g">
                                    <a href="/ko-KR/search">
                                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="#babac3" width="24" height="24" class="css-wax28p">
                                            <g fill="none">
                                                <path class="fillTarget" fill="#BABAC3" fill-rule="evenodd" d="M10.707 17.165c-3.499 0-6.346-2.868-6.346-6.393 0-3.527 2.847-6.395 6.346-6.395 3.498 0 6.346 2.868 6.346 6.395 0 3.525-2.848 6.393-6.346 6.393m10.735 2.77l-3.994-4.04c1.07-1.429 1.715-3.2 1.715-5.123 0-4.7-3.794-8.522-8.456-8.522-4.663 0-8.457 3.822-8.457 8.522 0 4.698 3.794 8.52 8.457 8.52 1.994 0 3.825-.703 5.272-1.87l3.968 4.015c.199.202.465.313.748.313.28 0 .544-.11.745-.31.198-.2.309-.467.31-.751.001-.284-.109-.552-.308-.753"></path>
                                            </g>
                                        </svg>
                                        <div class="css-1yjwko3">검색</div>
                                    </a>
                                </li>
                                <li class="css-1hz4g3g">
                                    <a href="/ko-KR/review">
                                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 22 22" fill="#babac3" width="24" height="24" class="css-18sz3ra">
                                            <g fill="none">
                                                <path class="fillTarget" fill="#BABAC3" fill-rule="evenodd" d="M11.404 1.38c.243-.506.949-.506 1.193 0l2.734 5.662c.021.044.061.074.107.08l6.116.909c.547.081.764.767.369 1.16l-4.426 4.41c-.033.033-.048.08-.04.126l1.044 6.226c.094.556-.477.98-.964.717l-5.473-2.94c-.04-.022-.088-.022-.13.001l-5.47 2.939c-.488.263-1.059-.161-.965-.717l1.044-6.225c.008-.047-.007-.094-.04-.128L2.075 9.19c-.394-.393-.176-1.078.37-1.16l6.114-.907c.047-.007.087-.037.108-.08z"></path>
                                            </g>
                                        </svg>
                                        <div class="css-1yjwko3">평가</div>
                                    </a>
                                </li>
                                <li class="css-1hz4g3g">
                                    <a href="/ko-KR/users/Q9L5p88b4Y5Nb">
                                        <svg fill="#babac3" width="24" height="24" viewBox="0 0 24 24" class="css-1yilc26">
                                            <g fill="none">
                                                <path class="fillTarget" fill="#BABAC3" fill-rule="evenodd" d="M14.782 14.236c4.124 0 7.468 3.252 7.468 7.264H1.75c0-4.012 3.344-7.264 7.468-7.264h5.564zM12 2.5c2.695 0 4.881 2.177 4.881 4.861 0 2.685-2.186 4.861-4.881 4.861-2.695 0-4.881-2.176-4.881-4.86C7.119 4.676 9.305 2.5 12 2.5z"></path>
                                            </g>
                                        </svg>
                                        <div class="css-1yjwko3">나의 왓챠</div>
                                    </a>
                                </li>
                            </ul>
                        </nav>
                    </footer>
                </div>
                <div disabled="" class="css-pjxj5o"></div>
                <div class="css-vi9yju">
                    <div></div>
                </div>
                <div class="css-any20b">
                    <div></div>
                </div>
            </div>
        </div>
        
        <script src="https://d2rlq84xifqisi.cloudfront.net/javascripts/web.1bdc53b756660e9b2289.js" crossorigin="anonymous"></script>
      
        
        
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
    </div>
</body>
</html>