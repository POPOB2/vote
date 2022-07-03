<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/forgot.css">
    <title>找回密碼</title>
</head>
<body>
    <div class="main">
        <p class="top">找回密碼</p>
        <p>
            讓我們幫您恢復帳號存取<br>
            請提供帳號資訊
        </p>
        <form action="./api/forgot.php" method="post">
                <input class="acc" type="text" name="acc" placeholder="輸入帳號">
            <div>
                <input class="chk_acc" type="submit" value="查詢">
            </div>
        </form>
    <?php
    if(!empty($_GET['error'])){
    ?>
    <p class="top"><?=$_GET['error'];?></p>
    <?php
    }else{
    ?>
    <p class="top">密碼提示</p>
    <?php
    }
    ?>
    <form action="login.php" method="post">
        <div>
        <input class="reset" type="submit" value="回到登入">
        </div>
    </form>
    </div>
    
        
    
</body>
</html>