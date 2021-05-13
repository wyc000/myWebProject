<?php
header("content-type:text/html;charset:utf8");
$goodsId = (int)$_POST['goodsId'];
$username = $_POST['username'];
$num = (int)$_POST['num'];
$con = mysqli_connect('localhost','administor','administor','store');
mysqli_query($con,"set names utf8");
$res = mysqli_query($con,"select * from cart where goodsId=$goodsId and user='$username'");
$row = mysqli_fetch_assoc($res);
if($num != ""){
    if($row){
        $cont = (int)$row['num'];
        $cont = $cont + $num;
        $ok = mysqli_query($con,"update cart set num = $cont where goodsId=$goodsId and user='$username'");
        if($ok){
            $arr = [
                "meta"=>[
                    "status"=>2,
                    "message"=>"添加成功"
                ],
                "data"=>null
            ];
        }
    }elseif($num != 0){
        $ok = mysqli_query($con,"insert into cart(goodsId,user,num) values($goodsId,'$username',$num)");
        if($ok){
            $arr = [
                "meta"=>[
                    "status"=>1,
                    "message"=>"添加成功"
                ],
                "data"=>null
            ];
        }else{
            $arr = [
                "meta"=>[
                    "status"=>0,
                    "message"=>"添加失败"
                ],
                "data"=>null
            ];
        }
    }
    echo json_encode($arr);
}else{
    echo json_encode($row);
}
