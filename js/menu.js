let menu = document.getElementById('menu');
let menuOpenBtn = document.getElementById('menu-open-btn');
let menuCloseBtn = document.getElementById('close-menu-btn');

menuOpenBtn.addEventListener('click', function(){
    menu.style.width = '100%';
});


menuCloseBtn.addEventListener('click', function(){
    menu.style.width = '0';
});

let headerLinkMenu = document.getElementById('header-link-menu');
headerLinkMenu.innerHTML = "<li><a href='./about-us.html'>Rreth nesh</a></li><li><a href='./our-facilities.html'>Kabinete Tona</a></li><li><a href='./blog.html'>Blog</a></li><li><a href='./courses.html'>Profilet Tona</a></li><li><a href='./teachers.html'>Profesorët</a></li><li><a href='./student-registration.html'>Apliko Këtu</a></li>";
