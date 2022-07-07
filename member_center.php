<?php include_once "./api/base.php"; ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/member_center.css">
    <title>會員中心</title>
</head>
<body>


    <div class="main">
    <p class="top"><?=$_SESSION['user'];?>, 歡迎回到後台中心</p>
    <p>管理您的投票項目、個人資訊</p>
    
    <!-- 登入完成後,進入會員中心頁面 顯示出使用者資訊 讓使用者可以編輯資料 -->
    <?php
    $sql="SELECT * FROM `users` WHERE acc='{$_SESSION['user']}'"; // 到資料庫撈資料
    $user=$pdo->query($sql)->fetch(PDO::FETCH_ASSOC); // pdo->query獲取$sql查詢的資料->fetch(框號內容可打可不打  加這段可以只取欄位資料,不取索引資料  減少傳輸大小)
    
    ?>
    <a href="back.php">編輯與開設 投票項目</a><br>
    <a href="edit.php?id=<?=$user['id'];?>" method='POST'>編輯個人資訊</a><br>
    <a href="index.php">回到首頁</a><br>


    <br><br><br><br><br><br><br><br><br><br><br>
    <a href="">提供意見</a><br>





    <!-- <form action='edit.php?id=< ?=$user['id'];?>' method='POST'> -->
        <!-- <input type="hidden" name="id" value="< ?=$user['id'];?>"> -->
        <!-- <input type="submit" value="編輯會員資料form表單"> -->
    <!-- </form> -->

    <nav><a href="./api/logout.php">登出</a></nav>
    </div>
    <!-- 移除會員資料 注意安全性的問題 與 重複確認 -->
    <!-- <a class="remove" href="7_1remove_acc.php?id=< ?=$user['id'];?>">移除會員資料</a> -->
    <footer></footer>
</body>
</html>