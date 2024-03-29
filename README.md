# 111年度資料庫程式設計作業

## 投票 / 問卷系統
**請建立一個投票或問卷系統可以提供投票或問卷功能，並能查看結果**

### 動作要求
1. 分析需要的功能
    * 功能一....
    * 功能二....


2. 設計資料表
    * 資料表一(資料表名)
        |欄位名|資料型態|主鍵|預設值|自動遞增|備註|
        |---|---|---|---|---|---|
        |||||||
        |||||||
    * 資料表二(資料表名)
        |欄位名|資料型態|主鍵|預設值|自動遞增|備註|
        |---|---|---|---|---|---|
        |||||||
        |||||||

3. 請充分運用學到的各項網頁知識來美化這個投票系統的畫面
    * html標籤的應用(語意標籤、表單、表格、分隔線、標頭..etc)
    * css的應用(行內、內嵌、外連、flexbox、偽元素、動畫..etc)
    * bootstrap的應用(排版功能、元件、類別..etc)
    * javascript or jQuery的應用(DOM的操作、CSS的切換)

4. 請上傳至220的伺服器個人空間，並自行建立所需資料表

5. 請將完成品前後台及功能截圖五張放在ScreenShot資料夾下


### 必備要求
**後台功能**
* 請設計一個頁面可以用來輸入投票的題目
* 可以控制題目的啟用與關閉

**前台功能**
* 請設計一個頁面可以看到目前進行投票的項目
* 可以進行投票
* 請設計一個頁面可以看到投票統計的結果

**進階功能**
* 請整合註冊及登入系統
* 能以長條圖或圖像化的方式來呈現統計的結果
* 能判斷使用者的狀態，避免重覆投票
----------------------------------------------------------------------------------------------------------------------------
## 評量時間
2022-07-15(星期五)
# 投票系統作業
111年投票系統範例

## 使用者故事(user story)


### 共用<!-- 前後端共用 -->
* 主畫面切割為上中下三塊
    * 上方為標題輪播 或 選單列
    * 中間為主要內容區
    * 下方為公司名稱及頁尾版權宣告/聯絡資訊

* 選單列有以下內容
    * 首頁按鈕
    * 登入按紐
    * 投票列表按鈕

* 會員註冊時須提供以下資料,以供投票分析時用
    * 生日<!-- 年齡會變化,使用生日這種不會變動的資料透過計算獲得年齡 -->
    * 性別
    * 學歷
    * 住址<!-- 分析地區,投票的使用者分析,作為樣本參考不同地區投票結果的差異原因  -->
    
    
### 使用者端<!-- 前台系統 -->
* 進入入手頁時,可以看到投票項目列表
* 可以選擇想要了解的項目,進行點選
* 未登入的使用者,只能看到投表的結果
* 已登入的使用者,可以看到投票結果及"我要投票"的按鈕
* 按下"我要投票"時,會顯示投票項目
* 選擇項目後,按送出->完成投票
* 完成投票後,跳至投票結果頁
* 投票結果頁新增按鈕可以返回首頁或留言等功能
* 可以選擇投票分類
* 可以排序投票
* 投票列表可以分頁
* 會員中心可以查看參與過的投票


### 管理者端<!-- 後臺系統 -->
* 要透過登入才能進入管理者端<!-- 登入的權限差異設置 -->
* 登入後可以看到所有的投票列表
* 有"新增投票"按紐<!-- 提供一個按鈕,用於新增投票 -->
* 點選新增投票後,進入新增投票表單頁面
* 再新增頁面可以設定投票主題

* 選項可以動態增加
    * 在主題旁有一個"增加選項"的按紐
    * 每按一次"增加選項"就會在下方增加一個項目
    * 完成設定後,按下"完成新增",即增加一個投票主題
    * 可以刪除選項

* 可查看投票結果(含統計分析)
* 可以修改投票主題或選項
* 可以刪除投票

### 功能需求<!-- 獨出的功能 -->
* 註冊/登入系統
* 前/後台頁面
<!-- 前後台=看的到的東西(頁面),前台for使用者,後台for管理者 -->
<!-- 前後端=前端是以技術呈現方式給使用者看,後端技術是背後運作的程式碼=看不到的東西 -->
* 新增投票
* 修改投票
* 刪除投票
* 投票結果統計分析
* 投票的參與者資料分析

<!-- 根據上述的user story和功能結果,設計出資料表 對應欄位與功能需求 -->
### 資料表設計
### 資料庫名稱:vote
* user
    |名稱|型態|預設值|A_I|備註|
    |--|--|--|--|--|
    |id|int(11)|--|true|序號|
    |acc|varchar(12)|--|--|帳號|
    |pw|varchar(128)|--|--|--|
    |name|varchar(12)|--|--|--|
    |birthday|date|--|--|--|
    |addr|varchar(64)|--|--|--|
    |email|varchar(36)|--|--|--|
    |passnote|varchar(36)|--|--|--|
* admin
    |名稱|型態|預設值|A_I|備註|
    |--|--|--|--|--|
    |id|int(11)|--|true|序號|
    |acc|varchar(12)|--|--|帳號|
    |pw|varchar(16)|--|--|--|
    |name|varchar(12)|--|--|--|
    |birthday|date|--|--|--|
    |gender|tinyint(1)|--|--|--|
    |addr|varcgar(64)|--|--|--|
    |education|varcgar(32)|--|--|--|
    |reg_date|date|--|--|--|
* subjects <!-- 該題目多少人來投票 -->
    |名稱|型態|預設值|A_I|備註|
    |--|--|--|--|--|
    |id|int(11)|--|true|序號|
    |option|varchar(128)|--|--|選項描述|
    |subject_id|int(11)|--|--|--|
    |multiple|boolean(1)|0|--|單/複選的選擇|<!-- 用於選擇單複選,1=複選,0=單選 -->
    |mulit_limit|tinyint(2)|1|--|單/複選項目數|<!-- 2位數可以複選到99項 -->
    |start|date|--|--|開始時間|
    |end|date|--|--|結束時間|
    |total|int(11)|--|--|總投票人數|
    |closure|boolean(1)|1|--|開關投票的選擇|
* options <!-- 每一個選項被投了幾次 -->
    |名稱|型態|預設值|A_I|備註|
    |--|--|--|--|--|
    |id|int(11)|--|true|序號|
    |option|varchar(128)|--|--|選項描述|
    |subject_id|int(11)|--|--|--|
    |total|int(11)|--|--|選項投票數|
* logs <!-- 紀錄誰對哪個選項與題目做投票動作,並對此做出細部分析 -->
    |名稱|型態|預設值|A_I|備註|
    |--|--|--|--|--|
    |id|int(11)|--|true|序號|
    |user_id|int(11)|--|--|投票者|<!-- 誰 -->
    |subject_id|int(11)|--|--|--|<!-- 投哪一個題目 -->
    |option_id|varchar(11)|--|--|--|<!-- 投的題目所選的選項為何 -->
    |vote_time|timestamp|--|--|投票時間|<!-- 因為投票時間長使用timestamp,需準確到秒數 -->
* type <!-- 通常用於當作關鍵字分類 -->
    |名稱|型態|預設值|A_I|備註|
    |--|--|--|--|--|
    |id|int(11)|--|true|序號|
    |name|varchar(128)|--|--|分類名稱|<!-- 投票內容分類名稱,對應到subjects的subject_id -->