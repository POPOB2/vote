<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/login.css">
    <title>投票系統 使用者登入</title>
</head>
<body>
    
    <div class="main">
    <?php
    if(!empty($_GET['error'])){
    ?>
    <p class="top"><?=$_GET['error'];?></p>
    <?php
    }else{
    ?>
    <p class="top">Sign in</p>
    <?php
    }
    ?>
        <p>Please enter account password</p>
        <form action="./login/chk_login.php" method="post">
            <table>
                <tr>
                    <td><input type="text" name="acc" placeholder="輸入帳號"></td>
                </tr>
                <tr>
                    <td><input type="text" name="pwd" placeholder="輸入密碼"></td>
                </tr>
            </table>

            <div>
                <input class="log" type="submit" value="登 入">
            </div>
        </form>
            <div class=Other_options>
                <a style="width: 6%" href="">註冊</a>
                <a style="width: 6%" href="./index.php">訪客</a>
                <a href="">&nbsp;忘記密碼?</a>
            </div>
    </div>
    


        
            
            
</body>
</html>