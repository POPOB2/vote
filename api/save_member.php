
<!-- 用於判斷編輯 不需要html頁面 -->

<?php
include_once "base.php";
$users=find('users',['id'=>$_GET['id']]);
$pw=($_POST['pw']);
// 資料更新users資料表 SET設定pw 使用的值為{$_POST['pw']}以此類推 WHERE如何定位哪一筆資料進行改變 `id`='{$_POST['id']}'
$users['pw']=$pw;
$users['name']=$_POST['name'];
$users['birthday']=$_POST['birthday'];
$users['addr']=$_POST['addr'];
$users['email']=$_POST['email'];
$users['passnote']=$_POST['passnote'];



function alert($text){
      echo "<script>alert('$text');window.history.back(-1)</script>";
}
// 密碼先設空值若密碼有值 才改變 否則不改

if(!empty($_POST['name']&&$_POST['birthday']&&$_POST['addr']&&$_POST['email']&&$_POST['passnote'])){
      // $pdo->exec($sql); // $pdo 執行儲存內容($sql) // 把表單資料存進資料庫
      save('users',$users);
      header("location:../member_center.php");
}else{
      $text2="編輯的個人資訊有誤,請更改後再送出";
      alert($text2);
}






?>