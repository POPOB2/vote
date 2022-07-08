

<!-- 前台用的按紐 -->
<?php
include_once "./api/base.php";
?>
<nav>
    <a href="index.php">回首頁</a>
    <!-- <a href="index.php">投票列表</a> -->
    <!-- <a href="index.php">投票結果</a> -->
    <a href="member_center.php">管理帳戶</a>
    <a href="back.php">管理投票項目</a>

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