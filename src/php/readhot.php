<?php
header("content-type:text/html;charset:utf8");
$id = $_GET['id'];
$con = mysqli_connect('localhost','administor','administor','store');
mysqli_query($con,"set names utf8");
$res = mysqli_query($con,"select * from list where id=$id");
$goods = mysqli_fetch_assoc($res);
$arr = [];
if($res){
    $num = (int)$goods['readnum'];
    $num++;
    $ok = mysqli_query($con,"update list set readnum = $num where id=$id");
    if($ok){
        $arr = [
            "meta"=>[
                "status"=>2,
                "message"=>"阅读量添加成功"
            ],
            "data"=>null
        ];
    }else{
        $arr = [
            "meta"=>[
                "status"=>2,
                "message"=>"阅读量添加成功"
            ],
            "data"=>null
        ];
    }
}
echo json_encode($arr);