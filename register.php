
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

    <h1>註冊會員</h1>
    <form action="./api/register.php" method="post">
        <table>
            <tr>
                <td>帳號</td>
                <td><input type="text" name="acc" id=""></td>
            </tr>
            <tr>
                <td>密碼</td>
                <td><input type="password" name="pw" id=""></td>
            </tr>
            <tr>
                <td>名稱</td>
                <td><input type="text" name="name" id=""></td>
            </tr>
            <tr>
                <td>生日</td>
                <td><input type="date" name="birthday" id=""></td>
            </tr>
            <tr>
                <td>住址</td>
                <td><input type="text" name="addr" id=""></td>
            </tr>
            <tr>
                <td>信箱</td>
                <td><input type="email" name="email" id=""></td>
            </tr>
            <tr>
                <td>密碼提示</td>
                <td><input type="text" name="passnote" id=""></td>
            </tr>
        </table>
        <div>
            <input type="submit" value="註冊">
            <input type="reset" value="重置">
        </div>
    </form>
</body>
</html>