<?php
include_once "./api/base.php";
?>

<!-- 後台用的按鈕 -->

<nav>   
        <a href="index.php">回首頁</a>
        
        <a href="back.php">投票列表</a>
        <a href="?do=add_vote">新增投票</a>
        <a href="?do=admin_type">新增分類</a>
        <a href="member_center.php">帳號管理</a>
        <?php
        if(isset($_SESSION['user'])){
        ?>
        <a href="./api/logout.php">登出</a>
        <?php
        }else{
        ?>
        <a href="login.php">登入</a>
        <?php
        }
        ?>
</nav>