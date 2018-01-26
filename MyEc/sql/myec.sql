set names utf8;
set foreign_key_checks = 0;

/**
 * データベース作成
 */
drop database if exists myec;
create database if not exists myec;
use myec;


/*
 * sexの外部キー
 */

create table sex_name(
sex_id tinyint not null unique,
sex char(2) not null
);

insert into sex_name(sex_id,sex) values(0,"男性");
insert into sex_name(sex_id,sex) values(1,"女性");


/*
 * statusの外部キー
 */
create table status_type(
status_id tinyint not null unique,
status char(2) not null
);

insert into status_type(status_id,status)values(0,"無効");
insert into status_type(status_id,status)values(1,"有効");


/**
 * ログイン情報テーブル
 */

drop table if exists login_user_transaction;
create table if not exists login_user_transaction(
id int not null primary key auto_increment,
login_id varchar(16) unique,
login_pass varchar(16),
user_name varchar(50),
user_kana varchar(50),
sex tinyint not null default 0,
tell varchar(13),
mail varchar(50),
insert_date datetime,
updated_date datetime,

foreign key(sex) references sex_name(sex_id)
);

INSERT INTO login_user_transaction(id,login_id,login_pass,user_name,user_kana,sex,tell,mail)values
(1,"internous","internous01","山本もも","やまもともも",0,"080-0000-0000","yamamoto@yahoo.co.jp");


/*
 * 会員情報テーブル
 */


/**
 * 商品情報テーブル
 */

drop table if exists item_info;
create table if not exists item_info(
id int not null primary key auto_increment,
item_id int not null unique,
category varchar(50) not null,
item_name varchar(100) not null,
item_price int not null,
description varchar(255),
image_file_path varchar(100),
deleteFlg tinyint not null default 0,
regist_date datetime,
update_date datetime,

foreign key(deleteFlg) references status_type(status_id)

);

INSERT INTO item_info(id,item_id,category,item_name,item_price,description,image_file_path,deleteFlg)values
(1,1,"choko","チョコケーキ",150,"ベルギー産のチョコレートを使用しています。","../WebContent/image/cake1.png",1);




/**
 * 購入テーブル
 */


/*
 * カート情報テーブル
 */

/*
 * 購入履歴情報テーブル
 */