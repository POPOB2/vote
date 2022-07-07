
<!-- 用於判斷編輯 不需要html頁面 -->

<?php
include_once "base.php";
$pw=md5($_POST['pw']);
// 資料更新users資料表 SET設定pw 使用的值為{$_POST['pw']}以此類推 WHERE如何定位哪一筆資料進行改變 `id`='{$_POST['id']}'
$sql="UPDATE `users`
        SET `pw`='$pw',
            `name`='{$_POST['name']}',
            `birthday`='{$_POST['birthday']}',
            `addr`='{$_POST['addr']}',
            `email`='{$_POST['email']}',
            `passnote`='{$_POST['passnote']}'
      WHERE `id`='{$_POST['id']}'";



$pdo->exec($sql); // $pdo 執行儲存內容($sql) // 把表單資料存進資料庫

header("location:../member_center.php");

?>