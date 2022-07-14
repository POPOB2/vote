<?php
include_once "base.php";

$acc=$_POST['acc'];

// $sql="SELECT * FROM `users` WHERE `acc`='$acc'";
// $user=$pdo->query($sql)->fetch();

$user=find('users',['acc'=>$_POST['acc']]);

if(!empty($user)){
    $chkok="當初設置的密碼提示為:<br>".$user['passnote'];
    header("location:../forgot.php?error=$chkok");
}else{
    $error="查無此帳號";
    header("location:../forgot.php?error=$error");
}
?>
