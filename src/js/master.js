// 滚动搜索框提示信息
let arr_placeholder = ['美的空调','海尔洗衣机','华为手机','海尔冰箱','空调','热水器','冰箱','手机','洗衣机'];

$(function () {
    // 自动轮播文本框中的提示文字
    var len = arr_placeholder.length;
    let time = setInterval(function () {
        let v = arr_placeholder[(parseInt(Math.random() * len))];
        $(".search_input_center input").attr('placeholder', v);
    }, 2000);
})
// 轮播图
class ActiveImg{
    constructor(classname){
        this.wrap = document.querySelector(classname);
        this.ulis = this.wrap.querySelectorAll('ul li');
        this.linum = this.ulis.length;
        this.ol = this.wrap.querySelector('ol');
        this.btnL = this.wrap.querySelector('.leftBtn');
        this.btnR = this.wrap.querySelector('.rightBtn');
        this.bg = document.querySelector('.banner');
        this.color = ['#CDE9FC','#D9CEFB','#CDFEDB','#CDE9FD','#CDFEDB','#CFFFF1','#CAFAF4'];
        this.index = 0;
        this.timer;
        this.olclick();
    }

    renderOli(){
        for(var i = 0; i < this.linum; i++){
            this.ol.appendChild(document.createElement('li'));
        }
        this.ol.firstElementChild.className = 'active';
    }
    
    move (){
        this.renderOli();
        this.btnR.onclick = ()=>{
            this.index++;
            if(this.index === this.linum){
                this.index = 0;
            }
            this.imgMove();
        };
        this.btnL.onclick = ()=>{
            this.index--;
            if(this.index < 0){
                this.index = this.linum - 1;
            }
            this.imgMove();
        };
        this.timer = setInterval(()=>{
            this.index++;
            if(this.index === this.linum){
                this.index = 0;
            }
            this.imgMove();
        },3000);
        this.wrap.onmouseover = ()=> clearInterval(this.timer);
        this.wrap.onmouseout = ()=> this.timer = setInterval(()=>{
            this.index++;
            if(this.index === this.linum){
                this.index = 0;
            }
            this.imgMove();
        },3000);
    }
    imgMove (){
        var old = this.wrap.querySelector('ol li.active');
        var uld = this.wrap.querySelector('ul li.active');
        old.className = uld.className = '';
        this.ulis[this.index].className = this.ol.children[this.index].className = 'active';
        this.bg.style.backgroundColor = this.color[this.index];
    }
    olclick (){
        this.ol.onclick = (e)=>{
            e = e || window.event;
            var target = e.target || e.srcElement;
            if(target.nodeName === 'LI'){
                var old = this.wrap.querySelector('ol li.active');
                var uld = this.wrap.querySelector('ul li.active');
                old.className = uld.className = '';
                this.index = Array.prototype.slice.call(this.wrap.querySelectorAll('ol li')).indexOf(target);
                target.className = this.ulis[this.index].className = 'active';
                this.bg.style.backgroundColor = this.color[this.index];
            }
        }
    }
}

var lb = new ActiveImg('.activeImg');
lb.move();
// 优品二手机滚动
var eRollIndex = 0;
$($('.hdrsideRoll p i')[1]).click(function(){
    eRollIndex++;
    if(eRollIndex>2){
        eRollIndex = 0;
    }
    RollAct(eRollIndex);
})
$($('.hdrsideRoll p i')[0]).click(function(){
    eRollIndex--;
    if(eRollIndex<0){
        eRollIndex = 2;
    }
    RollAct(eRollIndex);
})
function RollAct(eRollIndex){
    $('.hdrsideRoll ul').css({
        'transition':'.3s',
        'transform':`translateY(-${eRollIndex * 40}px)`
    })
}

// 顶部固定搜索框、右侧回到顶部按钮、左侧楼层跳转的显示隐藏
window.addEventListener('scroll',function(){
    var top = document.documentElement.scrollTop;
    if(top >= 200){
        $('.goTop').css('display','block');
    }else{
        $('.goTop').css('display','none');
    }
    if(top >= 600){
        $('.hide').css('display','block');
        $('.jump').css('display','block');
        $('.search_input').css({'position':'fixed','top':'8px','z-index':'1000'});
        $('.list h2').css({'position':'fixed','top':'8px','z-index':'1000'});
    }else{
        $('.hide').css('display','none');
        $('.jump').css('display','none');
        $('.search_input').css({'position':'inherit'});
        $('.list h2').css({'position':'inherit','top':'0'});
    }
})

// 去到底部
$('.goBottom').click(function(){
    var hei = document.body.scrollHeight;
    var endTop = hei - window.innerHeight;
    var top  = document.documentElement.scrollTop;
    var timerId = setInterval(function(){
        top += 50;
        if(top >= endTop){
            clearInterval(timerId);
        }
        document.documentElement.scrollTop = top;
    },5)
})

// 楼层跳转
var floors = document.querySelectorAll('.jump ul li');
var floorONE = document.querySelector('#floorONE');
var floorTWO = document.querySelector('#floorTWO');
var floorTHREE = document.querySelector('#floorTHREE');
var floorFOUR = document.querySelector('#floorFOUR');
var floorFIVE = document.querySelector('#floorFIVE');
var floorSIX = document.querySelector('#floorSIX');
var floorSEVEN = document.querySelector('#floorSEVEN');


function jumpFloor(aniu){
    var top = document.documentElement.scrollTop;
    var hei = aniu.offsetTop - 80;
    if(hei - top < 0){
        var tt = setInterval(function(){
            top -= 30;
            if(top <= hei){
                clearInterval(tt);
            }
            document.documentElement.scrollTop = top;
        },10)
    }else{
        var tt = setInterval(function(){
            top += 30;
            if(top >= hei){
                clearInterval(tt);
            }
            document.documentElement.scrollTop = top;
        },10)
    }
    
}
floors[1].onclick = function(){
    jumpFloor(floorONE);
}
floors[2].onclick = function(){
    jumpFloor(floorTWO);
}
floors[3].onclick = function(){
    jumpFloor(floorTHREE);
}
floors[4].onclick = function(){
    jumpFloor(floorFOUR);
}
floors[5].onclick = function(){
    jumpFloor(floorFIVE);
}
floors[6].onclick = function(){
    jumpFloor(floorSIX);
}
floors[7].onclick = function(){
    jumpFloor(floorSEVEN);
}

// 二级下拉菜单渲染
$('.list ul li').mouseover(function(){
    $(this).css('background','#fff').find('a').css('color','#232323').end().siblings('li').css('background','transparent');
    $('.listContent').css('display','block');
    var floorValue = $(this).find('a').text();
    $.get('http://store/src/php/masterlist.php',{
        floor:floorValue
    },
    function(res){
        $('.listContent').html('');
        // 创建空数组接收标题
        var thead = [];
        // 创建空对象用于数组去重
        var obj = {};
        // 遍历接收到的数组将他的的thead属性值放进thead数组
        res.forEach(function(v){
            thead.push(v.thead);
        })
        // 利用对象属性去重
        thead.forEach(function(v){
            obj[v] = 0;
        })
        thead = [];
        for(var attr in obj){
            thead.push(attr);
        }
        // 遍历接收到的数据渲染二级菜单
        var len = thead.length;
        for(var i = 0; i < len; i++){
            var p = document.createElement('p');
            res.forEach(function(v){
                if(v.thead === thead[i]){
                    var span = document.createElement('a');
                    span.innerHTML = v.content;
                    p.appendChild(span);
                }
            })
            $('.listContent').append(p);
        }
    },
    'json'
    )
    return false;
})
$('.list ul li').mouseout(function(){
    $(this).css('background','transparent').find('a').css('color','#fff');
    $('.listContent').css('display','none');
    $('.listContent').mouseover(()=>{
        $(this).css('background','#fff').siblings('li').css('background','transparent').end().find('a').css('color','#232323').end().siblings('li').find('a').css('color','#fff');
        $('.listContent').css({'background':'#fff','display':'block'})
    })
    return false;
})

$('.listContent').mouseout(function(){
    $('.list ul li').css('background','transparent').find('a').css('color','#fff');
    $(this).css('display','none')
})

// 美日必抢倒计时
var countdownTime = 7200;
$('.countdown span')[0].innerText = parseInt(countdownTime/3600)<10?'0'+parseInt(countdownTime/3600):parseInt(countdownTime/3600);
$('.countdown span')[1].innerText = parseInt(countdownTime/60%60)<10?'0'+parseInt(countdownTime/60%60):parseInt(countdownTime/60%60);
$('.countdown span')[2].innerText = parseInt(countdownTime%60)<10?'0'+parseInt(countdownTime%60):parseInt(countdownTime%60);
var countdownTimerID = setInterval(()=>{
    countdownTime--;
    if(countdownTime === 0){
        clearInterval(countdownTimerID);
    }
    $('.countdown span')[0].innerText = parseInt(countdownTime/3600)<10?'0'+parseInt(countdownTime/3600):parseInt(countdownTime/3600);
    $('.countdown span')[1].innerText = parseInt(countdownTime/60%60)<10?'0'+parseInt(countdownTime/60%60):parseInt(countdownTime/60%60);
    $('.countdown span')[2].innerText = parseInt(countdownTime%60)<10?'0'+parseInt(countdownTime%60):parseInt(countdownTime%60);
},1000);

// 美日必抢列表
$.get(
    'http://store/src/php/master.php',
    {
        floor:'美日必抢'
    },
    function(res){
        meiri(0,4,res);
        meiri(4,8,res);
    },
    'json'
)
function meiri(arrstart,arrend,res){
    var arr = res.slice(arrstart,arrend);
    var bigLi = $('<li></li>');
    var ul = $('<ul></ul>');
    arr.forEach(function(v){
        var li = $('<li></li>');
        var a = $('<a></a>');
        var img = $(`<img src='${v.imgUrl}' />`);
        var p1 = $(`<p><span>${v.price}</span><del>${v.oldPrice}</del></p>`);
        var p2 = $(`<p>${v.content}</p>`);
        a.append(img).append(p2).append(p1);
        li.append(a).appendTo(ul);
    })
    bigLi.append(ul);
    $('.robLeftBottom>ul').append(bigLi);
}
showhide(1,'.robLeftBottom .leftBtn','.robLeftBottom .rightBtn','.robLeftBottom>ul>li','.robLeftBottom>ul');
// 猜你喜欢
$.get(
    'http://store/src/php/master.php',
    {
        floor:'猜你喜欢'
    },
    function(res){
        like(0,6,res);
        like(6,12,res);
        like(12,18,res);
    },
    'json'
)
function like(arrstart,arrend,res){
    var arr = res.slice(arrstart,arrend);
    var bigLi = $('<li></li>');
    var ul = $('<ul></ul>');
    arr.forEach(function(v){
        var li = $('<li></li>');
        var a = $('<a></a>');
        var img = $(`<img src='${v.imgUrl}' />`);
        var p1 = $(`<p><span>${v.price}</span></p>`);
        var p2 = $(`<p>${v.content}</p>`);
        a.append(img).append(p2).append(p1);
        li.append(a).appendTo(ul);
    })
    bigLi.append(ul);
    $('.like>ul').append(bigLi);
}
showhide(0,'.likeLeft','.likeRight','.like>ul>li','.like>ul');

// 渐入渐出事件函数
function showhide(index,left,right,target,targetParent){
    $(left).click(function(){
        index--;
        if(index<0){
            index = $(targetParent).children().length-1;
        }
        $(target).eq(index).fadeIn().siblings().fadeOut();
    })
    $(right).click(function(){
        index++;
        if(index>$(targetParent).children().length-1){
            index = 0;
        }
        $(target).eq(index).fadeIn().siblings().fadeOut();
    })
}

// 楼层
function randerFloor(floorStr,parentTxt,wrapid){
    $.get(
        'http://store/src/php/master.php',
        {
            floor:floorStr
        },
        function (res){
            var arr = [];
            res.forEach((v)=>{
                if(v.parent == parentTxt){
                    arr.push(v);
                }
            })
            $(`${wrapid} .floorallBottomLeft>img`).attr('src',`${arr[0].imgUrl}`);
            $(`${wrapid} .RightFirst>div>img`).attr('src',`${arr[1].imgUrl}`);
            var firstulen = $('.RightFirst>ul').children().length;
            $(`${wrapid} .RightFirst>ul>li`).each((i,v)=>{
                $(v).find('img').attr('src',arr[i+2].imgUrl)
            });

            $(`${wrapid} .floorallTop div span`).mouseover(function(){
                var value = $(this).text();
                var arr = [];
                res.forEach((v)=>{
                    if(v.parent == value){
                        arr.push(v);
                    }
                })
                if(value == $(`${wrapid} .floorallTop div span`)[0].innerText){
                    $(`${wrapid} .RightFirst`).fadeIn();
                    $(`${wrapid} .RightAll`).fadeOut();
                }else{
                    $(`${wrapid} .RightFirst`).fadeOut();
                    $(`${wrapid} .RightAll`).fadeIn();
                    var allArr = [];
                    res.forEach(v=>{
                        if(v.parent == value){
                            allArr.push(v);
                        }
                    })
                    $(`${wrapid} .RightAll ul`).html('')
                    allArr.forEach(v=>{
                        var li = $('<li></li>');
                        var a = $('<a></a>');
                        var img = $(`<img src='${v.imgUrl}' />`);
                        var p1 = $(`<p>${v.content}</p>`);
                        var p2 = $(`<p>${v.price}</p>`);
                        a.append(img).append(p1).append(p2);
                        li.append(a);
                        $(`${wrapid} .RightAll ul`).append(li);
                    })
                }
            })
        },
        'json'
    )
}
randerFloor('手机通讯1f','活动精选','#floorONE');
randerFloor('电脑数码2f','精选热卖','#floorTWO');
randerFloor('家用电器3f','精选热卖','#floorTHREE');
randerFloor('厨房卫浴4f','精选热卖','#floorFOUR');
randerFloor('国美超市5f','精选热卖','#floorFIVE');
randerFloor('家居家装6f','精选热卖','#floorSIX');
randerFloor('汽车用品7f','精选热卖','#floorSEVEN');

let coo = tool.getCookie('username');