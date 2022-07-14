<?php include_once "./api/base.php";?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>安安線上投票中心</title>
    <link rel="stylesheet" href="./css/basic.css">
    <link rel="stylesheet" href="./css/front.css">
    <!-- <link rel="stylesheet" href="./css/index.css"> -->
</head>
<body>
    <!-- 前台 -->
    <div id="header">
        <?php include "./layout/header.php";?>
    </div>

    <!-- 新增判斷1或0 決定是否顯示 -->
    

    <div class="main">
    
        <div id='container'>
            
            <?php

// $subject=all('subjects');
// foreach($subject as $value){
//     echo $value['closure'];
// }
           
            if(isset($_GET['do'])){
                $file='./front/'.$_GET['do'].".php";
            }
            if(isset($file)&& file_exists($file)){
                include "$file";
            }else{
                include "./front/vote_list.php";
            }
            ?>
        </div>
        <aside>
        <?php include "./layout/front_nav.php"; ?>
        </aside>
    </div>


    <div>
        <?php include "./layout/footer.php";?>
    </div>
</body>
</html>