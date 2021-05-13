<?php
header("content-type:text/html;charset:utf8");
$parentID = $_POST['id'];
$con = mysqli_connect('localhost','administor','administor','store');
mysqli_query($con,"set names utf8");
$res = mysqli_query($con,"select * from list where parentID='$parentID'");
$arr = [];
while($str = mysqli_fetch_assoc($res)){
    $arr[]=$str;
}
if(count($arr)>0){
    echo json_encode($arr);
}else{
    echo null;
}