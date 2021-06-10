# What's Your Dream?

## アプリケーション概要

* 様々な分野のクイズを通して、Userの興味がある分野を発見できる。

* その興味を深めるための本を勧める

## テスト用アカウント

* ID&#58;test.gmail.com

* Pass&#58;123456

## 利用方法
Swift6firestore1/masterをダウンロードし、Build

## 目指した課題解決

* 親が、自分の子どもを、勉強をやらされている状態から興味をもったことを主体的に勉強している状態にするきっかけを作ることを目的にした

* 親が子どもの興味分野を知り、興味のある分野の学習サポートをできるようにする。 

## 実装した機能の説明

* 親が会員登録

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
