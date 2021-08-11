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
* 子どもがログイン

<img src="hhttps://user-images.githubusercontent.com/77444865/129066376-d65955df-94ef-4a22-9c5b-cad9e072d1b2.png" width=240px height=510px >
<img src="https://user-images.githubusercontent.com/77444865/129066426-1754547c-a8b8-4542-91d2-2c6e6b323c05.png" width=240px height=510px >





* 子どもが興味のあるクイズを自分で取捨選択して答える

* 解答を見て、面白いと思ったらスターボタンを押す。（面白いと思った感情のままに何回でも押せる） 

* それぞれのクイズ内容に紐づいた興味分野に、誰が、スターボタンを合計何回押したのかをデータベースに記録。

* ユーザーごとに、どの興味分野にどれだけスターボタンを押したかを集計し、グラフ化。

* また、楽天ブックスのAPIを使用し、おすすめの本を提案する。

* それを保護者が確認し、本の購入を検討する。


## 実装予定の機能
* テストコードの実装

* UIを整える

* 本のタイトルをタップしたとき、楽天ブックスのページに飛ぶ
