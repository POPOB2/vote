<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/login.css">
    <title>會員登入</title>
</head>
<body>
    <?php
    if(!empty($_GET['error'])){
        echo "<h3 style='color:red'>{$_GET['error']}</h3>";
    }
    
    ?>
    <div class="main">
        <p class="top">Sign in</p>
        <p>Please enter account password</p>
        <form action="checklogin.php" method="post">
            <table>
                <tr>
                    <td><input type="text" name="acc"></td>
                </tr>
                <tr>
                    <td><input type="text" name="pwd"></td>
                </tr>
            </table>

            <div>
                <input class="log" type="submit" value="登 入">
            </div>
    </div>

    </form>
</body>
</html>