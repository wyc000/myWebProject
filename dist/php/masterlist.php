<?php
header("content-type:text/html;charset:utf8");
$list = $_GET['floor'];
$con = mysqli_connect('localhost','administor','administor','store');
mysqli_query($con,"set names utf8");
$res = mysqli_query($con,"select * from navlist where parentList='$list'");
$arr = [];
while($str = mysqli_fetch_assoc($res)){
    $arr[]=$str;
}
echo json_encode($arr);