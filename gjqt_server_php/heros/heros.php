<?php
require_once("./init.php");
$sql = "SELECT * FROM gj_hero_img";
$result = mysqli_query($conn,$sql);
if(!$result){
  echo('{"code":500,"msg":"db execute err"}');
}else{
  $row = mysqli_fetch_all($result,MYSQLI_ASSOC);
  echo json_encode($row);
}