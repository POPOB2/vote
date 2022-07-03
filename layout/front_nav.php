

<!-- 前台用的按紐 -->
<?php
include_once "./api/base.php";
$SES=session_destroy();
?>
<nav>
        <a href="index.php">回首頁</a>

        <?php
        if(isset($_SESSION['user'])){
        ?>
        <a href="login.php" onclick="<?=$SES;?>">登出</a>
        <?php
        }else{
        ?>
        <a href="login.php">登入</a>
        <?php
        }
        ?>

        <a href="index.php">投票列表</a>
        <a href="index.php">投票結果</a>
    </nav>
        
</nav>