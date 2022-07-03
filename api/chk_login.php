<?php
include_once "../api/base.php";

$acc=$_POST['acc'];
$pw=md5($_POST['pw']);

$error='';

$sql="SELECT count(*) FROM `users` WHERE `acc`='$acc' && `pw`='$pw'";


$chk=$pdo->query($sql)->fetchColumn();

if($chk){
    $_SESSION['user']=$acc;
    header("location:../index.php");
}else{
    $error="Incorrect account or password Re-enter";
    header("location:../login.php?error=$error");
    
}
?>
