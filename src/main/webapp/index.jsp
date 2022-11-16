<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta http-equiv="X-UA-Compatible" content="ie=edge" />
        <link
            rel="stylesheet"
            href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css"
        />
        <link rel="stylesheet" href="./css/style2.css" />
        <style>
            body {
                background: url(../img/디자인1.png)
                    no-repeat center center fixed;
                -webkit-background-size: cover;
                -moz-background-size: cover;
                -o-background-size: cover;
                background-size: cover;
            }
        </style>
        <title>스리라차 피디아</title>
    </head>
    <body>
        <div class="back-shadow">
            <header class="header-top">
                <div class="top_header">
                    <div class="header-logo">
                        <a href="index.jsp" class="logo_link">
                            <span class="watcha">SRIRACHA PEDIA</span>
                        </a>
                    </div>

                    <!-- 추가한 부분 끝 -->
                    <div class="index-startButton">
                        <a href="./view/login.jsp">
                            <span class="top-start_button1">시작하기</span>
                        </a>
                    </div>
                </div>
            </header>

            <main>
                <div class="main_promotion">
                    <span class="main_promotion-one">
                        영화 정보의 거의 모든것,
                    </span>
                    <span class="main_promotion-two">
                        SRIRACHA PEDIA 입니다.
                    </span>
                    <a href="./view/login.jsp">
                        <span
                            class="main_promotion-three"
                            style="width: 160px; height: 40px; font-size: 15px"
                        >
                            시작하기
                        </span>
                    </a>
                </div>
            </main>
            <section class="bottom"></section>

            <section class="start_bottom">
                <div class="start_bottom-call">
                    <a href="cs.jsp">고객 센터(이용 및 결제문의) &nbsp; </a>
                    <a href="#" class="font_light">cs@sriracha.net</a>
                    <span>☎02-123-4567(유료)</span> &nbsp; / &nbsp;
                    <strong>제휴 및 대외 협력</strong> &nbsp;
                    <a href="#" class="font_light"
                        >contact@sriracha.com</a
                    >
                    <br />
                    주식회사 스리라차 피디아/대표 강태석/서울특별시 역삼동
                    코리아 IT 아카데미
                    13층/사업자등록번호123-45-67890/통신판매업 신고번호
                    제2022-서울서초-1234호/대표번호 02-123-4567/개인정보 처리
                    방침/청소년 보호정책
                </div>
            </section>
        </div>
    </body>
</html>
