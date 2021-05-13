<?php
header("content-type:text/html;charset:utf8");
$username = $_POST['username'];
$password = $_POST['password'];
$tell = $_POST['tell'];
$con = mysqli_connect('localhost','administor','administor','store');
mysqli_query($con,"set names utf8");
$res = mysqli_query($con,"select * from user where username='$username'");
$row = mysqli_fetch_assoc($res);
if($row){
    $arr = [
        "meta"=>[
            "status"=>2,
            "message"=>"用户名已经存在"
        ],
        "data"=>null
    ];
}else{
    $res = mysqli_query($con,"insert user(username,password,tell) values('$username','$password',$tell)");
    if($res){
        $arr = [
            "meta"=>[
                "status"=>1,
                "message"=>"注册成功"
            ],
            "data"=>null
        ];
    }else{
        $arr = [
            "meta"=>[
                "status"=>0,
                "message"=>"注册失败"
            ],
            "data"=>null
        ];
    }
}
echo json_encode($arr);