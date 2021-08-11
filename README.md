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
<img src="https://user-images.githubusercontent.com/77444865/129076288-deb6bef8-3a4f-498d-9d67-ae43efaad586.gif" width=240px height=510px >
* 子どもがログイン(ログイン情報を間違えると、アラートが出る)
<img src="https://user-images.githubusercontent.com/77444865/129077477-b45080e4-8223-4b1f-b3ec-c82ec380ddc7.gif" width=240px height=510px >
<img src="https://user-images.githubusercontent.com/77444865/129076545-eb91a9b6-dd61-448a-937a-8dc966d52a73.gif" width=240px height=510px >

* ログイン後のページ(子どもが興味のあるクイズを自分で取捨選択して答える)
<img src="https://user-images.githubusercontent.com/77444865/129076750-80ba4868-f876-49e5-ad52-00beba79acc3.gif" width=240px height=510px >

* 解答を見て、面白いと思ったらスターボタンを押す。（面白いと思った感情のままに何回でも押せる） 
<img src="https://user-images.githubusercontent.com/77444865/129076898-265925cc-d7d2-4a19-8d6f-08ed5f749498.gif" width=240px height=510px >
* それぞれのクイズ内容に紐づいた興味分野に、誰が、スターボタンを合計何回押したのかをデータベースに記録し、集計。保護者に、子どもがどの分野に興味があるかグラフかしてお伝え。また、興味に紐づいた本を楽天BOOKSのAPIを使用し、提案する。
<img src="https://user-images.githubusercontent.com/77444865/129077088-28c12128-eafc-4133-8af9-f7bcc0ed8b6c.gif" width=240px height=510px >


## 実装予定の機能
* テストコードの実装

* UIを整える

* 本のタイトルをタップしたとき、楽天ブックスのページに飛ぶ
