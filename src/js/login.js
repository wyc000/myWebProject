let coo = tool.getCookie('reusername');
if(coo != undefined){
    $('input[type=text]').val(coo);
    $('input[name=rem]').prop('checked',true);
    $('input[type=password]').focus();
}

$('.erweima>div').hover(function(){
    $(this).css({
        'transform':'translateX(-60px)',
        'transition': 'all .7s'
    });
    setTimeout(()=>{
        $('.lii').css('opacity','1')
    },400)
},function(){
    $(this).css({
        'transform':'translateX(0px)',
        'transition': 'all .7s'
    });
    $('.lii').css('opacity','0')
});


$('.right p span').click(function(){
    $(this).addClass('focus').siblings().removeClass('focus');
    if($(this).text() == '扫码登录'){
        $('.right form').css('display','none');
        $('.right .erweima').css('display','block');
    }else{
        $('.right form').css('display','block');
        $('.right .erweima').css('display','none');
    }
})


$('input[type=submit]').click(function(){
    var username = $('input[type=text]').val();
    var password = $('input[type=password]').val();
    if(username === ''){
        layer.msg('请输入用户名',{time:1000,anim:6});
        return false;
    }
    if(password === ''){
        layer.msg('请输入密码',{time:1000,anim:6});
        return false;
    }
    var laoding = null;
    $.ajax({
        url:'http://store/src/php/login.php',
        timeout:5000,
        data:{
            username,
            password
        },
        dataType:'json',
        type:'post',
        beforeSend:(XMLHttpRequest)=>{
            $(this).prop('disabled',true);
            laoding = layer.msg('正在登陆中...',{time:false,anim:1});
        },
        success:(res)=>{
            layer.close(laoding);
            layer.msg(res.meta.message);
            if(res.meta.status == 1){
                tool.setCookie('username',`${$('[name=username]').val()}`,86400);
                if($('input[name=rem]').prop('checked')){
                    tool.setCookie('reusername',`${$('[name=username]').val()}`,604800)
                }
                var flag = localStorage.getItem('url');
                if(flag){
                    localStorage.removeItem('url');
                    window.location.href = flag;
                }else{
                    window.location.href = 'http://store/src/index.html';
                }
                
            }else if(res.meta.status == 0){
                $('input[type=password]').focus();
            }
            else if(res.meta.status == 2){
                $('input[type=text]').focus();
            }
            $(this).prop('disabled',false);
        },
        complete:(XMLHttpRequest,status)=>{
            if(status=='timeout'){//超时,status还有success,error等值的情况
                layer.close(laoding);
                layer.msg('连接超时！',{time:1000})
            }
        },
        error:()=>{
            layer.msg('登陆失败！');
        }
    })
    return false;
})