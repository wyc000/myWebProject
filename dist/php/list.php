<?php
header("content-type:text/html;charset:utf8");
$brand = $_POST['brand'];
$user = $_POST['username'];
$id = $_POST['id'];
$parent = $_POST['parentid'];
$con = mysqli_connect('localhost','administor','administor','store');
mysqli_query($con,"set names utf8");
if($brand){
    $res = mysqli_query($con,"select * from list where brand='$brand'");
}elseif($user){
    $res = mysqli_query($con,"select * from cart where user='$user'");
}elseif($id){
    $res = mysqli_query($con,"select * from list where id in ($id)");
}elseif($parent == 0){
    $res = mysqli_query($con,"select * from list where parentID=$parent");
}
$arr = [];
while($str = mysqli_fetch_assoc($res)){
    $arr[]=$str;
}
if(count($arr)>0){
    echo json_encode($arr);
}else{
    echo null;
}