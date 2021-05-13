<?php
header("content-type:text/html;charset:utf8");
$user = $_POST['user'];
$goodsId = $_POST['goodsId'];
$con = mysqli_connect('localhost','administor','administor','store');
mysqli_query($con,"set names utf8");
$res = mysqli_query($con,"delete from cart where user='$user' and goodsId in ($goodsId)");
$arr = [];
if($res){
    $arr=[
        "meta"=>[
            "status"=>1,
            "message"=>"删除成功"
        ],
        "data"=>null
    ];
}else{
    $arr=[
        "meta"=>[
            "status"=>0,
            "message"=>"删除失败"
        ],
        "data"=>null
    ];
}
echo json_encode($arr);