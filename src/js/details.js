// 放大镜效果
$('.enlagemidoul').mouseenter(function () {
    $('.mask').css('display', 'block');
    $('.enlagebig').css('display', 'block');
    $('.enlagemidoul').mousemove(function (e) {
        var x = e.pageX;
        var y = e.pageY;
        var left = x - $('.mask').innerWidth() / 2 - $('.contopenlage').position().left;
        var top = y - $('.mask').innerHeight() / 2 - $('.contopenlage').position().top;
        if (left < 0) {
            left = 0
        }
        if (top < 0) {
            top = 0
        }
        if (left >= $('.enlagemidoul').width() - $('.mask').width()) {
            left = $('.enlagemidoul').width() - $('.mask').width();
        }
        if (top >= $('.enlagemidoul').height() - $('.mask').height()) {
            top = $('.enlagemidoul').height() - $('.mask').height();
        }
        $('.mask').css({
            left: left + 'px',
            top: top + 'px'
        })
        $('.enlagebig img').css({
            left: -left * 4 + 'px',
            top: -top * 4 + 'px'
        })
    })
})
$('.enlagemidoul').mouseleave(function () {
    $('.mask').css('display', 'none');
    $('.enlagebig').css('display', 'none');
})

// 点击选择服务
$('.detailist p span').click(function(){
    $(this).css({
        border:'2px #f00 solid'
    }).siblings().css({
        border:'1px #454545 solid'
    })
})

var url = window.location.search;
var parentid = url.slice(url.lastIndexOf('=')+1);
if(!parentid){
    parentid = -1;
    layer.msg('非法访问！！！',{
        time:800,
        icon:2
    },function(){
        location.href = 'list.html'
    })
}
$.post(
    'http://store/src/php/detail.php',
    {
        id:parentid
    },
    function(res){
        var lis = [];
        res.forEach(v=>{
            if(v.shop!=''){
                lis.push(v.shop);
            }
        })
        let lislen = lis.length;
        let ul = $('<ul></ul>');
        let str = `<li>首页</li>`;
        for(var i = 0; i < lislen; i++){
            str += `<li>${lis[i]}</li>`;
        }
        str += `<li>国美服务</li>`;
        ul.html(str);
        $('.nav>div').append(ul);
        $('.storecont>p:nth-child(1)>a:last-child').text(res[0].content);
        $('.storecont>p:nth-child(2)>span:first-child').text(res[2].content);
        $('.conbotStore>p:nth-child(1)>span:first-child').text(res[2].content);
        $('.contopdetails>h3').text(res[0].content);
        $('.contopdetails>p:nth-child(2)').text(res[1].content);
        $('.price>p>span').text(res[0].price);
        lis = [];
        res.forEach(v=>{
            if(v.brand=="enlage"){
                lis.push(v.imgUrl);
            }
        })
        $('.enlagebig img').attr('src',lis[0]);
        $('.enlagemidoul img').attr('src',lis[0]);
        lislen = lis.length;
        for(var i = 0; i < lislen; i++){
            let li = $(`<li>
                <img src='${lis[i]}' alt=''>
            </li>`)
            $('.enlagelis ul').append(li);
        }
        $('.enlagelis ul li').mouseenter(function () {
            $(this).find('img').css('border-color', 'red').end().siblings().find('img').css('border-color', 'transparent');
            $('.enlagebig img').attr('src',$(this).find('img').attr('src'));
            $('.enlagemidoul img').attr('src',$(this).find('img').attr('src'));
        })
        $('.enlagelis ul').css('width',`${Math.ceil(lislen / 5)}00%`);
        var enlageIndex = 0;
        var maxEnlageIndex = $('.enlagelis ul').innerWidth() / $('.enlagelis').innerWidth();
        $('.enlageLeft').click(function () {
            enlageIndex--;
            if(enlageIndex < 0){
                enlageIndex = 0;
                return false;
            }
            $('.enlagelis ul').animate({
                left:-$('.enlagelis').innerWidth()*enlageIndex
            },800)
        })
        $('.enlageRight').click(function () {
            enlageIndex++;
            if(enlageIndex >= maxEnlageIndex){
                enlageIndex = maxEnlageIndex-1;
                return false;
            }
            $('.enlagelis ul').animate({
                left:-$('.enlagelis').innerWidth()*enlageIndex
            },800)
        })
        lis = [];
        res.forEach(v=>{
            if(v.brand=="details"){
                lis.push(v.imgUrl);
            }
        })
        lislen = lis.length;
        for(var i = 0; i < lislen; i++){
            let img = $(`<img src='${lis[i]}' alt=''>`)
            $('.parameter').append(img);
        }
    },
    'json'
)
// 数量加减

$('.detailscart>div:first-child span i').click(function(){
    var iptv = $('.detailscart>div:first-child input').val();
    if($(this).text() == '+'){
        iptv++;
        if(iptv>10){
            layer.msg('限购十件',{time:500});
            iptv = 10;
        }
    }
    if($(this).text() == '-'){
        iptv--;
        if(iptv<1){
            layer.msg('不能再少啦！',{time:500});
            iptv = 1;
        }
    }
    $('.detailscart>div:first-child input').val(iptv);
})
$('.detailscart>div:first-child input').blur(function(){
    var iptv = $('.detailscart>div:first-child input').val();
    if(iptv<=0){
        layer.msg('最少一件',{time:500});
        iptv = 1;
    }
    if(iptv>=11){
        layer.msg('限购十件',{time:500});
        iptv = 10;
    }
    $('.detailscart>div:first-child input').val(iptv);
})
let coo = tool.getCookie('username');
// 加入购物车
$('.addcart').click(function(){
    let flag = addcart();
    if(flag){
        return false;
    }
    var num = $('.detailscart>div:first-child input').val() - 0;
    var user = tool.getCookie('username');
    $.ajax({
        url:'http://store/src/php/addcart.php',
        data:{
            goodsId:parentid,
            username:user
        },
        dataType:'json',
        type:'post',
    }).then(function(res){
        if(res){
            var all = num + (res.num - 0);
            if(all>10){
                layer.msg('超过最大限购数量,快去购物车看看吧');
            }else{
                $.ajax({
                    url:'http://store/src/php/addcart.php',
                    data:{
                        goodsId:parentid,
                        username:user,
                        num
                    },
                    dataType:'json',
                    type:'post',
                    success:(res)=>{
                        if(res.status != 0){
                            layer.msg('成功添加到购物车');
                        }else{
                            layer.msg('添加失败了')
                        }
                    }
                })
            }
        }else{
            $.ajax({
                url:'http://store/src/php/addcart.php',
                data:{
                    goodsId:parentid,
                    username:user,
                    num
                },
                dataType:'json',
                type:'post',
                success:(res)=>{
                    if(res.status != 0){
                        layer.msg('成功添加到购物车');
                    }else{
                        layer.msg('添加失败了')
                    }
                }
            })
        }
    })
})

// 加购物车验证登录状态
function addcart(){
    coo = tool.getCookie('username');
    if(!coo){
        let url = location.href;
        layer.confirm(
            '您还没有登录呢',
            {
                btn: ['去登陆','算了'] //按钮
            }, function (){
                localStorage.setItem('url',url);
                location.href = 'login.html';
            }
        );
        return true;
    }
}
// 回到顶部按钮显示隐藏
window.addEventListener('scroll',function(){
    var top = document.documentElement.scrollTop;
    if(top >= 200){
        $('.goTop').css('display','block');
    }else{
        $('.goTop').css('display','none');
    }
})

// 点击立即购买跳转到购物车页面
$('.pay').click(function(){
    isLogin();
})
// 添加历史记录cookie
if(coo){
    let goid = tool.getCookie('history');
    if(goid !== 'undefined'){
        goid = JSON.parse(goid);
        goid.forEach(v=>{
            if(v.user == coo){
                let nn = 0;
                v.id.forEach(s=>{
                    if(s != parentid){
                        nn++;
                    }
                })
                if(v.id.length>=3){
                    if(nn == v.id.length){
                        v.id.shift();
                        v.id.push(parentid);
                    }
                }else{
                    if(nn == v.id.length){
                        v.id.push(parentid);
                    }
                }
            }
        })
    }else{
        goid = [
            {
                user:coo,
                id:[parentid]
            }
        ];
    }
    tool.setCookie('history',JSON.stringify(goid),3600*24*7);
}

// 增加阅读量
setTimeout(()=>{
    $.ajax({
        url:'http://store/src/php/readhot.php',
        data:{
            id: parentid
        },
        dataType:'json',
        type:'get'
    })
},2000)
