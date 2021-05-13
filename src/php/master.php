<?php
header("content-type:text/html;charset:utf8");
$floor = $_GET['floor'];
$con = mysqli_connect('localhost','administor','administor','store');
mysqli_query($con,"set names utf8");
$res = mysqli_query($con,"select * from floor where bigParent='$floor'");
$arr = [];
while($str = mysqli_fetch_assoc($res)){
    $arr[]=$str;
}
echo json_encode($arr);
