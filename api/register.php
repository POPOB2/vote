

<!-- 用於判斷註冊 不需要html頁面 -->

<?php
include_once "base.php";


$acc=$_POST['acc'];


$pw=md5($_POST['pw']);
                        

$sql=[
    'acc'=>$_POST['acc'],
    'pw'=>$_POST['pw'],
    'name'=>$_POST['name'],
    'birthday'=>$_POST['birthday'],
    'addr'=>$_POST['addr'],
    'email'=>$_POST['email'],
    'passnote'=>$_POST['passnote']
];

save('users',$sql);
header("location:../login.php");


?>


