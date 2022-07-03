
<?php
include_once "base.php";
                    
$remind='';
$sql=[
    'acc'=>$_POST['acc'],
    'pw'=>md5($_POST['pw']),
    'name'=>$_POST['name'],
    'birthday'=>$_POST['birthday'],
    'addr'=>$_POST['addr'],
    'email'=>$_POST['email'],
    'passnote'=>$_POST['passnote']
];


save('users',$sql);
header("location:../login.php");


?>


