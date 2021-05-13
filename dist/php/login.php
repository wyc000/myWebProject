<?php
header("content-type:text/html;charset:utf8");
$username = $_POST['username'];
$password = $_POST['password'];
$con = mysqli_connect('localhost','administor','administor','store');
mysqli_query($con,"set names utf8");
$res = mysqli_query($con,"select * from user where username='$username'");
$row = mysqli_fetch_assoc($res);
if($row){
    if($password == $row['password']){
        $arr = [
            "meta"=>[
                "status"=>1,
                "message"=>"登录成功"
            ],
            "data"=>null
        ];
    }else{
        $arr = [
            "meta"=>[
                "status"=>0,
                "message"=>"登录失败，用户名或密码错误"
            ],
            "data"=>null
        ];
    }
}else{
    $arr = [
        "meta"=>[
            "status"=>2,
            "message"=>"用户不存在"
        ],
        "data"=>null
    ];
}
echo json_encode($arr);