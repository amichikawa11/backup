set names utf8;
set foreign_key_checks = 0;
drop database if exists ecsite;

create database if not exists ecsite;
use ecsite;

drop table if exists login_user_transaction;

create table login_user_transaction(
	id int not null primary key auto_increment,
	login_id varchar(16) unique,
	login_pass varchar(16),
	user_name varchar(50),
	insert_date datetime,
	updated_date datetime

);

drop table if exists item_info_transaction;

create table item_info_transaction(
id int not null primary key auto_increment,
item_name varchar(30),
item_price int,
item_stock int,
insert_date datetime,
update_date datetime
);

drop table if exists user_buy_item_transaction;

create table item_buy_item_transaction(
	id int not null primary key auto_increment,
	item_transaction_id int,
	total_price int,
	total_count int,
	user_master_id varchar(16),
	pay varchar(30),
	insert_date datetime,
	delete_date datetime
);


/*
 * 商品カタログ
 */

create table catalog(
item_id int not null primary key auto_increment,
item_name varchar(255) not null,
item_price int not null,
item_detail varchar(255) not null,
pictureurl varchar(255) not null,
primary key('id')
);


INSERT INTO item_info_transaction(item_name,item_price,item_stock) VALUES ("ノートBook",100,50);

INSERT INTO login_user_transaction(login_id,login_pass,user_name) VALUES("internous","internous01","test");

INSERT INTO catalog(item_id,item_name,item_price,item_detail,pictureurl) VALUES
(1,"焼き菓子",700,"東京バナナパイ","/image/bananapai.jpg");
(2,"洋菓子",800,"ごまたまごプリン","/image/gomatamago.jpg");
(,"和菓子",500,"栗きんとん","/image/kurikinton.jpg");