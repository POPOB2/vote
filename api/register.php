
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

function alert($text){
    echo "<script>
          alert('$text');window.history.back(-1);
          </script>";
    
}
if(!empty($_POST['acc']&&$_POST['pw']&&$_POST['name']&&$_POST['birthday']&&$_POST['addr']&&$_POST['email']&&$_POST['passnote'])){
    save('users',$sql);
    header("location:../login.php");
}else{
    $text1="資料填寫不完全,請重新填寫";
    alert($text1);
}




?>


