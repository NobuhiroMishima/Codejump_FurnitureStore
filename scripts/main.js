const btn = document.querySelector('.menu__btn');
const cover = document.querySelector('.menu__cover');

const menuOpen = function(){
    cover.classList.toggle('menu__open')
}

btn.addEventListener('click', menuOpen);