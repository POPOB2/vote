<?php include_once "./api/base.php"; ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/edit.css">
    <title>編輯會員資料</title>
</head>
<body>
    <div class="main">
    <p class="top">個人資訊</p>
    <p>您的個人資訊設定</p>
    <?php
    // if(isset($_GET['id']))// 有這個值=透過會員中心頁面進入, 沒有值=非法登入(直接知道網頁名稱打網址進入 沒帶任何的id資料給予系統)
    // $sql="SELECT * FROM `users` WHERE id='{$_GET['id']}'"; // 進入編輯頁面後 id的資料會傳給使用者 再根據這個id的資料去資料庫把該id的整筆資料撈出來
    // $user=$pdo->query($sql)->fetch();// 撈出資料後再將撈出的資料 依據下方td的value內的值 依據填入  顯示於話面上的表單內
    $user=find('users',['id'=>$_GET['id']]);

    ?>
    
    <table>
        <form action="./api/save_member.php?id=<?=$user['id'];?>" method="POST">
            <tr>
                <td>帳號 <?=$user['acc'];?></td>
            </tr>
            <tr>
                
                <!-- <td>密碼<input type="password" name="pw" value="< ?=$user['pw'];?>"></td> -->
                <td>密碼<input type="password" name="pw" value="<?=$user['pw'];?>"></td>
            </tr>
            <tr>
                <td>名稱<input type="text" name="name" value="<?=$user['name'];?>"></td>
            </tr>
            <tr>
                <td>生日<input type="date" name="birthday" value="<?=$user['birthday'];?>"></td>
            </tr>
            <tr>
                <td>住址<input type="text" name="addr" value="<?=$user['addr'];?>"></td>
            </tr>
            <tr>
                <td>信箱<input type="email" name="email" value="<?=$user['email'];?>"></td>
            </tr>
            <tr>
                <td>提示<input type="text" name="passnote" value="<?=$user['passnote'];?>"></td>
            </tr>
        
    </table>

            

        <div>
            <input type="hidden" name="id" value="<?=$user['id'];?>">
            <input class="edit" type="submit" value="編輯">
            <input class="reset" type="reset" value="重置">
            <a class="toback" href="./login.php">返回</a>
        </div>
        </form>
</body>
</html>