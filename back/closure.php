<?php
include_once "./api/base.php";

/* 1.先查詢subjects資料表的closure 欄位為幾 (1或0)
   2.每當按下"按鈕"時 改變subjects資料表的closure欄位為相反值 (1或0)
   當欄位顯示1時  為開啟狀態  按鈕則顯示為關閉
   當欄位顯示0時  為關閉狀態  按鈕則顯示為開啟
   */
?>
<?php 
$subject=find('subjects',$_GET['id']);

if($subject['closure']==0){
   $subject['closure']=1;
   save('subjects',$subject);
   to("./back.php");
}else{
   $subject['closure']=0;
   save('subjects',$subject);
   to("./back.php");
}
?>




