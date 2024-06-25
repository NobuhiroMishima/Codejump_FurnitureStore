const btn = document.querySelector('.menu__btn');
const head = document.querySelector('.menu__cover');
const cover = document.querySelector('.cover');

const menuOpen = function(){
    head.classList.toggle('menu__open');
}

btn.addEventListener('click', menuOpen);
cover.addEventListener('click', menuOpen);