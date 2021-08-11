# What's Your Dream?
将来の夢や、目標を見つけるきっかけとなるアプリ

<img src="https://user-images.githubusercontent.com/77444865/129061939-9832afc7-5dac-409e-b172-405c5f959999.png" width=240px height=510px >

# 本アプリ作成への想い
## 目的
子どもの将来の夢や、目標を見つけるきっかけとなり、目的意識を持った人生を歩めるようにする。
## ターゲット
小学生中学年~高校生の子どもを持つ親
## ターゲットの抱える課題
勉強をやらされているという状況から、子どもが自分から塾に行きたい！という状況に変えたい。勉強に対して前のめりな姿勢になるため、子どもが将来やりたいことを見つけ、目的を持って勉強してほしい。
## 解決方法
* 様々な分野のクイズを通して、Userの興味がある分野を発見できる。
* その興味を深めるための本を勧める

# 開発環境
* 使用言語:swift (version:5.4)
* DB:FireBase
* プロジェクト管理:git(version:2.30.1)
* エディタ:xcode
* その他:楽天BOOKSのAPI通信(JSON解析)

# 実装した機能の説明

* 親が会員登録

<img src="https://user-images.githubusercontent.com/77444865/129067516-f60245f7-05c2-4304-abb0-a6ec6337699e.png" width=240px height=510px ><img src="https://user-images.githubusercontent.com/77444865/129066442-e9d1a6b6-7184-4f88-a113-9fc200918ac0.png" width=240px height=510px >
* 子どもがログイン(ログイン情報を間違えると、アラートが出る)

<img src="https://user-images.githubusercontent.com/77444865/129067720-598fc5ae-efe6-4920-9be3-95b4f18d6ea6.png" width=240px height=510px ><img src="https://user-images.githubusercontent.com/77444865/129067874-763b32a9-bc70-443e-96e4-3355330214ed.png" width=240px height=510px >

* ログイン後のページ(子どもが興味のあるクイズを自分で取捨選択して答える)
<img src="https://user-images.githubusercontent.com/77444865/129068269-6ab6750b-056d-4971-982e-6056bdd7ac4b.png" width=240px height=510px >
* 家の絵をタップすると、家に関連する画像が出現!
<img src="https://user-images.githubusercontent.com/77444865/129068827-54f73b1f-b11a-43a6-bb31-d4d7d95bcf7d.png" width=240px height=510px >
* 庭の絵をタップすると庭に関するクイズが出現!
<img src="https://user-images.githubusercontent.com/77444865/129069138-21470c42-c7a4-4b73-8391-422043d0ee9b.png" width=240px height=510px >
* 気になるクイズをタップすると、クイズ回答ページが出現
<img src="https://user-images.githubusercontent.com/77444865/129069694-c2f5dd67-6380-4747-94de-e677d79ffe8a.png" width=240px height=510px >
* 正解と思うものをタップ(正解の時)
<img src="https://user-images.githubusercontent.com/77444865/129069876-4260646f-5ff9-4caa-8be3-1d2ad5674cfa.png" width=240px height=510px >
* 解答を見て、面白いと思ったらスターボタンを押す。（面白いと思った感情のままに何回でも押せる） 

* それぞれのクイズ内容に紐づいた興味分野に、誰が、スターボタンを合計何回押したのかをデータベースに記録。

* ユーザーごとに、どの興味分野にどれだけスターボタンを押したかを集計し、グラフ化。

* また、楽天ブックスのAPIを使用し、おすすめの本を提案する。

* それを保護者が確認し、本の購入を検討する。


## 実装予定の機能
* テストコードの実装

* UIを整える

* 本のタイトルをタップしたとき、楽天ブックスのページに飛ぶ
