# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
#
#
#
# sudo passwd postgres
# su - postgres
# psql
#
# PostgreSQLにアプリ用ユーザを作る.
# create user <ユーザ名> createdb password '<パスワード>' login;
#
# ここで一旦psqlから抜け、さらにpostgresユーザからも抜ける.
# 作成したユーザでpsql接続可能にするために、PostgreSQLの設定ファイルを編集する.
#
# いかなるIPからも接続OKとする
# sudo vi /var/lib/pgsql/9.3/data/postgresql.conf
# listen_addresses = '*'
#
# 全てのDB/ユーザでパスワード認証を経ての接続を可能にする
# sudo vi /var/lib/pgsql/9.3/data/pg_hba.conf
#
# # TYPE  DATABASE        USER            ADDRESS                 METHOD
# 
# # "local" is for Unix domain socket connections only
# local   all             all                                     peer
# 
# # IPv4 local connections:
# host    all             postgres        127.0.0.1/32            ident
# host    all             all             0.0.0.0/0               password
# 
# # IPv6 local connections:
# host    all             all             ::/0                    password
#
# 設定ファイルを書き換えた後はPostgreSQLを再起動する.
# sudo service postgresql-9.3 restart
#
# DBを作る
# createdb -U <DBのオーナとなるユーザ名> -h localhost -E UTF8 --lc-collate=ja_JP.UTF-8 --lc-ctype=ja_JP.UTF-8 <DB名>
#
#
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "CentOS 6.5 x86_64"
  # "https://github.com/2creatives/vagrant-centos/releases/download/v6.5.3/centos65-x86_64-20140116.box"
  config.vm.network "private_network", ip: "192.168.50.13"

  config.vm.provision :shell, :path => "provisioning.sh"
end
