<?php
$default_acc='ke';
$default_pwd='123';

$acc=$_POST['acc'];
$pwd=$_POST['pwd'];

$error='';

if($acc!==$default_acc&&$default_pwd){
    $error="Incorrect account or password Re-enter";
    header("location:../login.php?error=$error");
}else{
    header("location:../index.php");
}
?>