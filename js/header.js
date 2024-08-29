// Hide Header on Scroll Down Show on Scroll Up
let nav = document.getElementById('header');
let lastScrollY = window.scrollY;

window.addEventListener('scroll', () =>{
    if (lastScrollY < window.scrollY){
        nav.classList.add('nav-hidden');
    } else{
        nav.classList.remove('nav-hidden');
    }

    lastScrollY = window.scrollY;
})