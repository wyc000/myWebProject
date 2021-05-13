
// 二级菜单隐藏显示
$('.list>h2').click(function(){
    $('.list>ul').css('display','block');
    return false;
})
$(document).click(function(){
    $('.list>ul').css('display','none');
})
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
    $(this).css('display','none');
})
// 右侧回到顶部按钮、左侧楼层跳转的显示隐藏
window.addEventListener('scroll',function(){
    var top = document.documentElement.scrollTop;
    if(top >= 200){
        $('.goTop').css('display','block');
    }else{
        $('.goTop').css('display','none');
    }
})
$('.sort>dl:first-child>dd').click(function(){
    let brand = $(this).text();
    getdata(brand);
})
getdata('苹果');
function getdata(brand){
    $.post(
        'http://store/src/php/list.php',
        {
            brand
        },
        function(res){
            if(res == null){
                layer.msg('玩命加载中',{
                    time:1000
                })
                setTimeout(function(){
                    layer.msg('加载失败',{
                        time:1000
                    })
                },1000)
            }
            $('.relbottom').html('');
            res.forEach(v=>{
                let li = $('<li></li>');
                let a = $(`<a href='http://store/src/details.html?id=${v.id}'>
                    <p><img src='${v.imgUrl}' alt=''></p>
                    <p>${v.price}</p>
                    <p>${v.content}</p>
                    <p>已有${parseInt(Math.random()*1000 + 100)}评价</p>
                    <i>${v.shop}</i>
                    <div class="clear">
                        <span class="iconfont">&#xe629;</span>
                        <span class="iconfont">&#xe607;</span>
                        <span class="iconfont">&#xe7bb;</span>
                    </div>
                </a>`);
                li.append(a);
                $('.relbottom').append(li);
            })
        },  
        'json'
    )
}

// 用户名获取
let coo = tool.getCookie('username');


// 渲染历史记录板块
if(coo){
    let goid = tool.getCookie('history');
    if(goid !== 'undefined'){
        goid = JSON.parse(goid);
        let str;
        goid.forEach(next=>{
            if(next.user == coo){
                str = goid[0].id.join(',');
            }
        })
        $.ajax({
            url:'http://store/src/php/list.php',
            data:{
                id: str
            },
            dataType:'json',
            type:'post'
        }).then((res)=>{
            res.forEach(v=>{
                let li = $(`
                    <li>
                        <p><img src="${v.imgUrl}" alt=""></p>
                        <div>
                            <p>${v.content}</p>
                            <p>${v.price}</p>
                        </div>
                    </li>
                `);
                $('.relcontentLeft ul').append(li);
            })
        })
    }else{
        $('.relcontentLeft ul').html('<h4>暂无历史记录</h4>')
    }
}else{
    $('.relcontentLeft ul').html('<h4>登录后查看历史记录哦</h4>')
}


// 热卖推荐
$.ajax({
    url:'http://store/src/php/list.php',
    data:{
        parentid:0
    },
    dataType:'json',
    type:'post'
}).then((res)=>{
    let len = res.length;
    for(let i = 0; i < len - 1; i++){
        for(let j = i+1; j < len; j++){
            if(res[i].readnum-0<res[j].readnum-0){
                let temp = res[i];
                res[i] = res[j];
                res[j] = temp;
            }
        }
    }
    let arr = res.slice(0,4);
    arr.forEach(v=>{
        let li = $(`
        <li>
            <a href="details.html?id=${v.id}">
                <p><img src="${v.imgUrl}" alt=""></p>
                <div>
                    <p>${v.content}</p>
                    <p>${v.price}</p>
                    <p>立即抢购</p>
                </div>
            </a>
        </li>
        `)
        $('.hot>ul').append(li);
    })
}).catch(()=>{
    $('.hot>ul').html(`
    <p style="text-align:center;line-height:80px;font-size:25px;">暂无热卖</p>
    `);
})