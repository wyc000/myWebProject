$(function(){
    // 验证变量
    var test = {
        user:false,
        pass:false,
        repass:false,
        phone:false,
        treaty:false
    }
    // 验证函数
    function verification(input,reg,nodeP,txt,flag){
        input.blur(function(){
            if(input.val() === '' ||!reg.test(input.val())){
                nodeP.show();
                nodeP.text(txt[0]);
                nodeP.css('color','red');
                nodeP.prev().css('border-color','red');
                test[flag] = false;
            }else{
                nodeP.hide();
                nodeP.prev().css('border-color','#aaa');
                test[flag] = true;
            }
        })
        input.focus(function(){
            nodeP.show();
            nodeP.text(txt[1]);
            nodeP.css('color','#575757');
        })
    }
    // 用户名验证
    verification($('[type=text]'),
    /(^\d{6,12}$)|(^[a-zA-Z]\w{5,11})$/,
    $('.register_form form p:nth-child(2)'),
    ['请输入正确的用户名','6-20个字符，支持字母、数字及"-""_"'],
    'user'
    );
    // 密码验证
    verification($('[name=password]'),
    /^.{6,20}$/,
    $('.register_form form p:nth-child(4)'),
    ['请输入格式正确的密码','6-20个字符，支持字母、数字或符号'],
    'pass'
    );
    // 确认密码验证
    $('[name=repass]').blur(function(){
        var nodeP = $('.register_form form p:nth-child(6)');
        if($('[name=repass]').val() !== $('[name=password]').val()){
            nodeP.show();
            nodeP.text('确认密码不一致');
            nodeP.css('color','red');
            nodeP.prev().css('border-color','red');
            test['repass'] = false;
        }else if($('[name=repass]').val() === ''){
            nodeP.show();
            nodeP.text('请输入确认密码');
            nodeP.css('color','red');
            nodeP.prev().css('border-color','red');
            test['repass'] = false;
        }else{
            test['repass'] = true;
            nodeP.prev().css('border-color','#aaa');
            nodeP.hide();
        }
    })
    $('[name=repass]').focus(function(){
        var nodeP = $('.register_form form p:nth-child(6)');
        nodeP.show();
        nodeP.text('请再次输入密码');
        nodeP.css('color','#575757');

    })
    // 手机号验证
    verification($('[name=tell]'),
    /^1[3-9]\d{9}$/,
    $('.register_form form p:nth-child(8)'),
    ['请输入格式正确的手机号码','请输入手机号码'],
    'phone'
    );
    // 提交
    $('[name=sub]').click(function(){
        if($('[type=checkbox]').prop('checked')){
            test['treaty'] = true;
        }else{
            test['treaty'] = false;
        }
        var username = $('[name=username]').val();
        var password = $('[name=repass]').val();
        var tell = $('[name=tell]').val();
        if(test['user']&&test['pass']&&test['repass']&&test['phone']&&test['treaty']){
            $.post(
                'http://store/src/php/register.php',
                {
                    username,
                    password,
                    tell
                },
                function(res){
                    layer.msg(res.meta.message);
                    if(res.meta.status == 1){
                        setTimeout(function(){
                            window.location.href = 'http://store/src/login.html';
                        },1000)
                    }else if(res.meta.status == 2){
                        $('[name=username]').val('').focus();
                    }
                },
                'json'
            );
            $('.bod').css('border-color','#aaa');
        }else if(!test['user']||!test['pass']||!test['repass']||!test['phone']){
            $('.bod').css('border-color','red');
            layer.msg('请完整填写注册信息！');
        }else if(!test['treaty']){
            layer.msg('请勾选协议！');
        }
    })
})