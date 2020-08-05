# rails-practice
- Rails practice / Ruby on Rails の練習

![Actions Status](https://github.com/noranuko13/rails-practice/workflows/CI/badge.svg)


## How to use
- [Docker](https://www.docker.com/)
```shell script
# Dockerコンテナの起動
docker-compose build
docker-compose up

# Dockerコンテナに入る
docker exec -it rpweb bash

# データベースの作成＆マイグレーション
rails db:create
rails db:migrate RAILS_ENV=development

# パッケージのインストール
docker-compose run rpweb yarn install

# テスト
rails db:create RAILS_ENV=test  # 初回
rails test

# 文法チェック
rubocop --auto-correct
rubocop
```
- http://localhost:3000


## コンセプト
- 一般的な業務用アプリケーションに必要な機能を作成してみるテスト
  - 検索・一覧
    - 一覧からの一括選択による削除
    - CSVファイルダウンロード
  - 一般的な CRUD（生成・読取・更新・削除）


## 対象ブラウザ
- [Google Chrome ウェブブラウザ](https://www.google.com/intl/ja_jp/chrome/) 最新版
  - 個人のキャパシティで動作確認してるので、Chromeだけでお許し下さい


## 参考文献

### Ruby on Rails
- [rails/rails - GitHub](https://github.com/rails/rails)
  - 原点にして頂点
  - フレームワークのコードを読めば大体分かる
- [Ruby on Rails Guides](https://guides.rubyonrails.org/)
  - Ruby on Railsのリファレンスガイド
　　- 日本語訳
    - [Ruby on Rails ガイド：体系的に Rails を学ぼう](https://railsguides.jp/)
- [Ruby on Rails チュートリアル：実例を使って Rails を学ぼう](https://railstutorial.jp/)
  - かの有名なRailsチュートリアル
  - 関連リンク
    - [yasslab/sample_apps](https://github.com/yasslab/sample_apps)

### Ruby
- [Documentation - Ruby](https://www.ruby-lang.org/ja/documentation/)
  - 各種Ruby関連のドキュメントへのリンク集
- [オブジェクト指向スクリプト言語 Ruby リファレンスマニュアル (Ruby 2.6.0)](https://docs.ruby-lang.org/ja/2.6.0/doc/index.html)
  - Rubyのリファレンスマニュアル

### Docker
- [Quickstart: Compose and Rails](https://docs.docker.com/compose/rails/)
  - Rails/PostgreSQL環境をDocker Composeで構築する
- [Docker + Rails 6 Application setup](https://rubyinrails.com/2019/03/29/dockerify-rails-6-application-setup/)


Outdated gems included in the bundle:
  * childprocess (newest 4.0.0, installed 3.0.0)
  * mini_portile2 (newest 2.5.0, installed 2.4.0)
  * rubocop (newest 0.89.0, installed 0.78.0, requested ~> 0.78.0) in groups "development"
  * rubocop-rails (newest 2.7.1, installed 2.5.2, requested ~> 2.4) in groups "development"
  * rubyzip (newest 2.3.0, installed 1.3.0)
  * spreadsheet_architect (newest 4.0.0, installed 3.3.1, requested ~> 3.2) in groups "default"
  * tzinfo (newest 2.0.2, installed 1.2.7)
  * unicode-display_width (newest 1.7.0, installed 1.6.1)
  * webpacker (newest 5.1.1, installed 4.2.2, requested ~> 4.0) in groups "default"
