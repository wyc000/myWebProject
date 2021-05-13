$('.address span').hover(function(){
    $('.explain').css('display','block')
},function(){
    $('.explain').css('display','none')
})
let coo = tool.getCookie('username');
// 结算栏
window.onscroll = function(){
    var scroll = document.documentElement.scrollTop;
    if(scroll<200){
        $('.settlement').css({
            position:'fixed',
            bottom:'-20px'
        })
    }else{
        $('.settlement').css({
            position:'inherit',
        })
    }
    if(document.body.scrollHeight < window.innerHeight + 200){
        $('.settlement').css({
            position:'inherit',
        })
    }
}
// 全选
function allche(){
    // 下方勾选全部商品按钮点击事件
    $('.menuLeft input').click(function(){
        if($(this).prop('checked')){
            $('.cartcontent input').prop('checked',true);
        }else{
            $('.cartcontent input').prop('checked',false);
        }
        jiesuan();
        checkbg();
    })
    // 上面勾选全部商品按钮点击事件
    $('.operation input').click(function(){
        if($(this).prop('checked')){
            $('.cartcontent input').prop('checked',true);
            $('.menuLeft input').prop('checked',true);
        }else{
            $('.cartcontent input').prop('checked',false);
            $('.menuLeft input').prop('checked',false);
        }
        jiesuan();
        checkbg();
    })
    // 店铺全选
    $('.shop .name input').click(function(){
        if($(this).prop('checked')){
            $(this).parent().next().find('input').prop('checked',true);
        }else{
            $(this).parent().next().find('input').prop('checked',false);
        }
        che();
        jiesuan();
        checkbg();
    })
    // 单个商品勾选
    $('.shop .goods input').click(function(){
        che();
        littleche(this);
        checkbg();
    })
}
// 验证是否选中，改变样式
function checkbg(){
    $('.shop .goods input[type=checkbox]').each(function(i,v){
        if($(v).prop('checked')){
            $(v).parent().parent().css('background','#FFF1E8');
        }else{
            $(v).parent().parent().css('background','#FFF');
        }
    });
}
// 验证全选
function che(){
    var index = 0;
    $('.shop input[type=checkbox]').each(function(i,v){
        if($(v).prop('checked')){
            index ++;
        }
    });
    if(index == $('.shop input[type=checkbox]').length){
        $('.menuLeft input').prop('checked',true);
        $('.operation input').prop('checked',true);
    }else{
        $('.menuLeft input').prop('checked',false);
        $('.operation input').prop('checked',false);
    }
}
// 店铺商品全选
function littleche(that){
    var index = 0;
    var len = $(that).parent().parent().parent().find('input[type=checkbox]').length;
    $(that).parent().parent().parent().find('input[type=checkbox]').each(function(i,v){
        if($(v).prop('checked')){
            index ++;
        }
    });
    if(index == len){
        $(that).parent().parent().parent().prev().find('input').prop('checked',true);
    }else{
        $(that).parent().parent().parent().prev().find('input').prop('checked',false);
    }
    che();
    jiesuan();
}
// 数量增加
function addnum(){
    $('.goods ul .li4 span:nth-child(1)').click(function(){
        $(this).parent().parent().parent().find('.li1 input').prop('checked',true);
        var value = $(this).next().val();
        if(--value<1){
            value = 1;
            $(this).css('color','#999');
            layer.msg('不能再少啦！');
            return false;
        }else{
            $(this).css('color','#000');
        }
        $(this).next().val(value);
        var money = $(this).parent().parent().prev().text().slice(1)-0;
        $(this).parent().parent().next().text(`￥${money * value}.00`);
        let id = $(this).parent().parent().parent().attr('cart-id');
        let user = tool.getCookie('username');
        if(value>0){
            $.ajax({
                url:'http://store/src/php/addcart.php',
                data:{
                    goodsId:id,
                    username:user,
                    num:-1
                },
                dataType:'json',
                type:'post'
            })
            // .then((res)=>{
            //     console.log(res);
            // })
        }
        jiesuan()
    })
    $('.goods ul .li4 span:nth-child(3)').click(function(){
        $(this).parent().parent().parent().find('.li1 input').prop('checked',true);
        var value = $(this).prev().val();
        if(++value>10){
            value = 10;
            $(this).css('color','#999');
            layer.msg('限购十件！');
            return false;
        }else{
            $(this).css('color','#000');
        }
        $(this).prev().val(value);
        var money = $(this).parent().parent().prev().text().slice(1)-0;
        $(this).parent().parent().next().text(`￥${money * value}.00`);
        let id = $(this).parent().parent().parent().attr('cart-id');
        let user = tool.getCookie('username');
        if(value<=11){
            $.ajax({
                url:'http://store/src/php/addcart.php',
                data:{
                    goodsId:id,
                    username:user,
                    num:1
                },
                dataType:'json',
                type:'post'
            })
            // .then((res)=>{
            //     console.log(res);
            // })
        }
        jiesuan()
    })
}
// 结算价钱
function jiesuan(){
    var allMoney = 0;
    $('.shop .goods ul .li5').each((i,v)=>{
        if($(v).parent().find('.li1 input').prop('checked')){
            allMoney += $(v).text().slice(1)-0;
        }
    })
    $('.menuRight b').text(`￥${allMoney}.00`);
}
// 进入页面勾选全部商品
function initckeck(){
    $('input[type=checkbox]').prop('checked',true);
    function all(){
        $('input[type=checkbox]').each((i,v)=>{
            if($(v).prop('checked')){
                jiesuan();
            }
        })
    }
    all();
    checkbg();
}
// 删除操作
function delche(){
    $('.goods ul .li6 p:first-child').click(function(){
        layer.confirm('您确定删除吗？', {
            btn: ['确定','取消'] //按钮
        }, ()=>{
            let currentid = $(this).parent().parent().attr('cart-id');
            coo = tool.getCookie('username');
            $.ajax({
                url:'http://store/src/php/cart.php',
                data:{
                    goodsId:currentid,
                    user:coo
                },
                dataType:'json',
                type:'post'
            }).then(res=>{
                layer.msg(res.meta.message, {icon: 1});
                if(res.meta.status == 1){
                    if($(this).parent().parent().parent().children().length == 1){
                        $(this).parent().parent().parent().parent().remove()
                    }else{
                        $(this).parent().parent().remove();
                    }
                    emptycart();
                    jiesuan();
                }
            })
        });
    })
    
    $('.menuLeft>span').click(function(){
        var flag = 0;
        $('.goods input[type=checkbox]').each((i,v)=>{
            if($(v).prop('checked')){
                flag++;
            }
        })
        if(!flag){
            layer.msg('没有删除项！');
            return false;
        }
        layer.confirm('您确定删除所选项吗？', {
            btn: ['确定','取消'] //按钮
        }, ()=>{
            coo = tool.getCookie('username');
            let arr = [];
            $('.goods input[type=checkbox]').each((i,v)=>{
                if($(v).prop('checked')){
                    arr.push($(v).parent().parent().attr('cart-id'))
                }
            })
            let str = arr.join(',');
            $.ajax({
                url:'http://store/src/php/cart.php',
                data:{
                    user:coo,
                    goodsId:str
                },
                dataType:'json',
                type:'post'
            }).then(res=>{
                layer.msg(res.meta.message, {icon: 1});
                if(res.meta.status == 1){
                    $('.goods input[type=checkbox]').each((i,v)=>{
                        if($(v).prop('checked')){
                            $(v).parent().parent().remove();
                        }
                    })
                    $('.goods').each((i,v)=>{
                        if($(v).children().length == 0){
                            $(v).parent().remove();
                        }
                    })
                    emptycart();
                    jiesuan();
                }
            })
        });
    })
}

// 判断购物车是否为空
function emptycart(){
    if($('.shop').length == 0){
        $('.cart').css('display','none');
        $('.settlement').css('display','none');
        $('.emptyCart').css('display','block');
    }
}


// 获取用户名
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
        layer.msg('退出成功！',{time:1500});
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
    })
})


// 根据数据库渲染购物车
$.ajax({
    url:'http://store/src/php/list.php',
    data:{
        username:coo
    },
    dataType:'json',
    type:'post'
}).then((cartid)=>{
    let goodsId = [];
    cartid.forEach(v=>{
        goodsId.push(v.goodsId);
    })
    let idstr = goodsId.join(',');
    $.ajax({
        url:'http://store/src/php/list.php',
        data:{
            id:idstr
        },
        dataType:'json',
        type:'post'
    }).then(res=>{
        let shopname = [];
        res.forEach(v=>{
            shopname.push(v.brand+v.shop);
        })
        let obj = {};
        shopname.forEach(v=>{
            obj[v] = 0;
        })
        shopname = [];
        for(let attr in obj){
            shopname.push(attr);
        }
        shopname.forEach(v=>{
            let shop = $('<div class="shop"></div>');
            let nnname = $(`
                <div class="name">
                    <input type="checkbox" name="" id="">
                    <b>国美${v}旗舰店</b>
                    <i class="iconfont">&#xe7bb;</i>
                    <span>在线客服</span>
                </div>
            `);
            let goods = $(`<div class="goods clear"></div>`)
            let randerUl = [];
            let str = v.slice(0,2);
            res.forEach(v=>{
                if(v.brand == str){
                    randerUl.push(v);
                }
            })
            randerUl.forEach(v=>{
                let num;
                let gid;
                cartid.forEach(idv=>{
                    if(v.id == idv.goodsId){
                        num = idv.num - 0;
                        gid = idv.goodsId;
                    }
                })
                let ul = $(`
                    <ul class="clear" cart-id="${gid}">
                        <li class="li1">
                            <input type="checkbox">
                            <img src="${v.imgUrl}" alt="">
                        </li>
                        <li class="li2">
                            <p>${v.content}</p>
                        </li>
                        <li class="li3">￥${v.price}</li>
                        <li class="li4">
                            <div>
                                <span>-</span>
                                <input type="text" value="${num}" disabled>
                                <span>+</span>
                            </div>
                        </li>
                        <li class="li5">￥${(v.price-0) * num}.00</li>
                        <li class="li6">
                            <p>删除</p>
                            <p>移入收藏夹</p>
                        </li>
                    </ul>
                `);
                goods.append(ul);
            })
            shop.append(nnname).append(goods);
            $('.cart').append(shop);
        })
        allche();
        addnum();
        initckeck();
        delche();
    })
}).catch(()=>{
    emptycart();
})

//点击logo回到首页
$('.logo').click(function(){
    location.href = 'index.html';
})