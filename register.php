
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/register.css">
    <title>註冊會員</title>
</head>
<body>
<div class="main">
    <p class="top">註冊會員</p>
    <form action="./api/register.php" method="post">
        <table>
            <tr>
                <td><input type="text" name="acc" placeholder="帳號"></td>
            </tr>
            <tr>
                <td><input type="password" name="pw" placeholder="密碼"></td>
            </tr>
            <tr>
                <td><input type="text" name="name" placeholder="名稱"></td>
            </tr>
            <tr>
                <td><input type="date" name="birthday"></td>
            </tr>
            <tr>
                <td><input type="text" name="addr" placeholder="住址"></td>
            </tr>
            <tr>
                <td><input type="email" name="email" placeholder="信箱"></td>
            </tr>
            <tr>
                <td><input type="text" name="passnote" placeholder="密碼提示"></td>
            </tr>
        </table>
        <div>
            <input class="register" type="submit" value="註冊">
            <input class="reset" type="reset" value="重置">
            <a class="toback" href="./login.php">返回</a>
        </div>
    </form>
    
</div>
</body>
</html>