# ベースにするイメージを指定
FROM ruby:2.7.3

# RailsのインストールやMySQLへの接続に必要なパッケージをインストール
# パッケージのインストール
#Dockerイメージ内にあるUbuntuのパッケージマネージャーであるapt-getを使用して、パッケージリストを更新して、nodejsとpostgresql-clientのパッケージをインストールするという意味
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

# コンテナ内にaim-miniディレクトリを作成
RUN mkdir /aim-mini-test

# 作成したmyappディレクトリを作業用ディレクトリとして設定
WORKDIR /aim-mini-test

# ローカルの Gemfile と Gemfile.lock をコンテナ内のmyapp配下にコピー
COPY Gemfile /aim-mini-test/Gemfile
COPY Gemfile.lock /aim-mini-test/Gemfile.lock
#COPY Gemfile /aim-mini-test/Gemfile
#COPY Gemfile.lock /aim-mini-test/Gemfile.lock

# コンテナ内にコピーした Gemfile の bundle install
RUN bundle install

# ローカルのaim-mini配下のファイルをコンテナ内のaim-mini配下にコピー
COPY . /aim-mini-test

# ポート番号の設定
EXPOSE 3000

# Railsサーバの起動
CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]