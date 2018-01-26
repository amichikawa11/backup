set names utf8;
set foreign_key_checks = 0;

drop database if exists myec;

create database if not exists myec;
use myec;


/*ユーザーログイン情報テーブル*/

drop table if exists login_user_transaction;

create table login_user_transaction(
id int not null primary key auto_increment,
login_id varchar(16) unique,
login_pass varchar(16),
user_name varchar(50),
user_address varchar(50),
user_sex varchar(10),
user_tell varchar(13),
user_mail varchar(50),
insert_date datetime,
updated_date datetime
);


/*商品情報テーブル*/

drop table if exists item_info_transaction;

create table item_info_transaction(
id int not null primary key auto_increment,
item_name varchar(30),
item_price int,
item_stock int,
item_category varchar(50),
item_description varchar(255),
image_file_path varchar(100),
insert_date datetime,
update_date datetime
);

/*商品購入テーブル*/

drop table if exists user_buy_item_transaction;

create table user_buy_item_transaction(
id int not null primary key auto_increment,
item_transaction_id int,
total_price int,
total_count int,
user_master_id varchar(16),
pay varchar(30),
insert_date datetime,
delete_date datetime
);


INSERT INTO item_info_transaction(item_name, item_price, item_stock, item_category,item_description, image_file_path) VALUES
("生チョコケーキ", 200, 50,"cake","チョコレートのケーキです。","../WebContent/image/cake1.png"),
("チーズケーキ",170,50,"cake","チーズのコクが濃厚なケーキです。","../WebContent/image/cake4"),
("フルーツロール",150,50,"cake","季節の果物がたくさん入ったケーキです。","../WebContent/image/roll1"),
("チョコロール",150,50,"cake","甘さ控えめのロールケーキです。","../WebContent/image/roll2"),
("ラズベリーパイ",250,50,"cake","数種類のベリーが入ったパイです。","../WebContent/image/pie2.jpg1"),
("クリームマフィン",100,50,"bake","ラズベリー風味のクリームがたっぷりのったマフィンです。","../WebContent/image/muffin2.jpg"),
("チョコクリームマフィン",100,50,"bake","チョコクリームがたっぷりのったマフィンです。","../WebContent/image/muffin3.jpg"),
("シュークリーム",80,50,"bake","カスタードクリームたっぷりのシュークリームです。","../WebContent/image/bake1"),
("クッキー詰め合わせ",800,50,"bake","クッキーの詰め合わせです。","../WebContent/image/cookie2"),
("星型クッキー",100,50,"bake","星型のアイシングクッキーです。","../WebContent/image/cookie1"),
("タイ焼き",120,50,"wagashi","粒あんが入ったタイ焼きです。","../WebContent/image/wagashi"),
("桜餅",80,50,"wagashi","食べやすいサイズの桜餅です。","../WebContent/image/wagashi2"),
("金魚の水菓子",190,50,"wagashi","見た目も涼しげなお菓子です。","../WebContent/image/wagashi4");

INSERT INTO login_user_transaction(login_id, login_pass, user_name, user_address, user_sex, user_tell, user_mail) VALUES
("taro", "123", "taro","東京都","男","090-0000-0000","taro@yahoo.co.jp"),
("hanako","456","hanako","北海道","女","080-0000-0000","hanako@gmail");

