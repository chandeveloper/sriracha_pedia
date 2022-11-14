const signUp = document.querySelector("#js-signUp");
const popSignUp = document.querySelector(".pop_sign-up");
const overlay = document.querySelector(".overlay");
const body = document.querySelector("body");

function showSignUp() {
    popSignUp.style.display = "flex";
    overlay.style.display = "block";
};

function closePopUp(event) {
    let target = event.target;
    if (target.className == "overlay") {
        popSignUp.style.display = "none";
        overlay.style.display = "none";
    }
}



signUp.addEventListener("click", showSignUp);
body.addEventListener("click", closePopUp);


       //영화차트 이미지 슬라이드
       var mySwiper = new Swiper('.swiper-container2', {
        slidesPerView: 5,
        spaceBetween: 15,
//            mousewheel: {
//                invert: true,
//            },
        keyboard: {
            enabled: true,
            onlyInViewport: false,
        },
        autoplay: {
            delay: 6000,
        },
        breakpoints: {
            600: {
            slidesPerView: 3,
            spaceBetween: 15,
            },
            768: {
               slidesPerView: 4,
               spaceBetween: 15,
            },
            960: {
               slidesPerView: 5,
               spaceBetween: 15,
            },
        }
    });
    



    var swiperStep = new Swiper(".mySwiper", {
        // slidesPer
        slidesPerView: 2.2,
        spaceBetween: 0,
        freeMode: true,
        pagination: {
        el: ".swiper-pagination",
        type: "fraction",
        clickable: true,
        },
        navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
        },
    });

    
    var swiperStep = new Swiper(".mySwiper2", {
        // slidesPer
        slidesPerView: 2,
        spaceBetween: 30,
        freeMode: true,
        pagination: {
        el: ".swiper-pagination",
        type: "fraction",
        clickable: true,
        },
        navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
        },
    });
    
    
    // 회원가입 컨펌창  
$().ready(function () {
            $("#logOut").click(function () {
                Swal.fire({
                    title: '정말로 로그아웃 하시겠습니까?',
                    text: "다시 되돌릴 수 없습니다. 신중하세요.",
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: '승인',
                    cancelButtonText: '취소'
                }).then((result) => {
                    if (result.isConfirmed) {
                            window.location.href = '/sriracha/logout.do';
                    }
                    else{
							window.location.reload();
					}
                })
            });
        });