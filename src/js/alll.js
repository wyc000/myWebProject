// 购物车数量验证；
$.ajax({
    url:'http://store/src/php/list.php',
    data:{
        username:coo
    },
    dataType:'json',
    type:'post'
}).then((res)=>{
    let sum = 0;
    res.forEach(v=>{
        let num = v.num -0;
        sum += num;
    })
    $('.cart').attr('data-attr',sum);
}).catch(()=>{
    $('.cart').attr('data-attr','×');
})

// 点击购物车验证登录
function isLogin(){
    coo = tool.getCookie('username')
    if(!coo){
        layer.msg('还有没登录呢！');
    }else{
        location.href = 'cart.html'
    }
}
// 购物车验证
$('.cart>p>a').click(function(){
    isLogin()
    return false;
})
$('.rightNav_top>ul>li:nth-child(2) a').click(function(){
    isLogin();
    return false;
})

// 用户名获取

if(coo != undefined){
    $('.top_nav_left li:first-child a').html(`Hi,${coo}<i class="iconfont">&#xe60c;</i>`);
    $('.top_nav_left li:last-child').css('display','none');
    $('.top_nav_left li:nth-child(2) a:first-child').css('display','none');
    $('.top_nav_left li:first-child div').html(`
        <div>头像</div>
        <p>Hi,<b style="color:red;">${coo}</b>,欢迎来到真快乐！</p>    
    `)
}else{
    $('.top_nav_left li:nth-child(2) a:last-child').css('display','none');
}
// 退出登录
$('.top_nav_left li:nth-child(2) a:last-child').click(function(){
    layer.confirm('您确定退出吗？', {
        btn: ['确定','取消'] //按钮
    }, ()=>{
        tool.removeCookie('username');
        $('.top_nav_left li:first-child a').html(`真快乐会员<i class="iconfont">&#xe60c;</i>`);
        $('.top_nav_left li:last-child').css('display','block');
        $('.top_nav_left li:nth-child(2) a:last-child').css('display','none');
        $('.top_nav_left li:nth-child(2) a:first-child').css('display','block');
        $('.top_nav_left li:first-child div').html(`
            <div>头像</div>
            <p>欢迎来到真快乐，<a href="login.html">请登录！</a></p>
        `);
        $('.cart').attr('data-attr','×');
        layer.msg('退出成功！',{time:1500});
    })
})

// 回到顶部
$('.goTop').click(function(){
    var top = document.documentElement.scrollTop;
    var speed = top / 35;
    var timerId = setInterval(function(){
        top -= speed;
        if(top <= 0){
            clearInterval(timerId);
        }
        document.documentElement.scrollTop = top;
    },15)
})

//点击logo回到首页
$('.logo').click(function(){
    location.href = 'index.html';
})