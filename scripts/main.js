const btn = document.querySelector('.menu__btn');

const menuOpen = function(){
    this.style.backgroundColor = 'red';
}

btn.addEventListener('click', menuOpen);