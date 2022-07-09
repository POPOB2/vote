<?php
include_once "base.php";

$acc=$_POST['acc'];
$pw=md5($_POST['pw']);

$error='';
// ---------------------------------------------------------
$users=find('users',['acc'=>$acc]); // users資料表的acc為POST的acc
if($acc==$users['acc']&&$pw==$users['pw']){ // 若POSTacc和資料表acc相同&&POSTpw和資料表pw相同時 執行
    $_SESSION['user']=$users['acc']; //  $users的'acc' 賦值給 $_SESSION的'user'
    $_SESSION['user_id']=$users['id']; // $users的'id' 賦值給 $_SESSION的'user_id'
    // echo $_SESSION['user_id'];
    to('../index.php');
}else{
    $error="Incorrect account or password Re-enter";
    to("../login.php?error=$error");
}
// ---------------------------------------------------------
// $sql="SELECT count(*) FROM `users` WHERE `acc`='$acc' && `pw`='$pw'";
// $chk=$pdo->query($sql)->fetchColumn();

//     if($chk){
//         $_SESSION['user']=$acc;
//         header("location:../index.php");
//     }else{
//         $error="Incorrect account or password Re-enter";
//         header("location:../login.php?error=$error");
        
//     }


?>
