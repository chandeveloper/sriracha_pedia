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
        spaceBetween: 10,
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