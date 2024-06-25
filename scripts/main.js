const btn = document.querySelector('.menu__btn');
const head = document.querySelector('.menu__cover');
const cover = document.querySelector('.cover');

const menuOpen = function(){
    head.classList.toggle('menu__open');
}

btn.addEventListener('click', menuOpen);
cover.addEventListener('click', menuOpen);

function footerFixed(){
    //ドキュメントの高さ
    var dh = document.getElementsByTagName("body")[0].clientHeight;
    //フッターのtopからの位置
    document.querySelector('.footer').style.top = "0px";
    var ft = document.querySelector('.footer').offsetTop;
    //フッターの高さ
    var fh = document.querySelector('.footer').offsetHeight;

    //ウィンドウの高さ
    if (window.innerHeight){
        var wh = window.innerHeight;
    }else if(document.documentElement && document.documentElement.clientHeight != 0){
        var wh = document.documentElement.clientHeight;
    }
    if(ft+fh<wh){
        document.querySelector('.footer').style.position = "relative";
        document.querySelector('.footer').style.top = (wh-fh-ft-1)+"px";
    }
}

//イベントリスナー
function addEvent(elm,listener,fn){
    try{
        elm.addEventListener(listener,fn,false);
    }catch(e){
        elm.attachEvent("on"+listener,fn);
    }
}

addEvent(window,"load",footerFixed);
addEvent(window,"resize",footerFixed);