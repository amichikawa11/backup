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

/*
 * loginedの外部キー
 */

create table logined_status(
logined_id tinyint not null unique,
logined varchar(6) not null
);

insert into logined_status(logined_id,logined)values(0,"未ログイン");
insert into logined_status(logined_id,logined)values(1,"ログイン済");


/*
 * 会員情報テーブル
 */
create table user_info(
id int not null primary key,
user_id varchar(16) not null unique,
password varchar(16) not null,
name varchar(32) not null,
kana varchar(32) not null,
sex tinyint not null default 0,
email varchar(32) not null,
status tinyint not null default 0,
logined tinyint not null default 0,
regist_date datetime not null,
update_date datetime,
foreign key(sex) references sex_name(sex_id),
foreign key(status) references status_type(status_id),
foreign key(logined) references logined_status(logined_id)

);


/*
 * 商品情報テーブル
 */

create table product_info(
id int not null primary key,
product_id int not null unique,
product_name varchar(100) not null unique,
product_description varchar(255) not null,
category_id int not null,
price int,
image_file_path varchar(100),
image_file_name varchar(50),
release_date datetime not null,
release_company varchar(50),
status tinyint not null default 0,
regist_date datetime not null,
update_date datetime,
foreign key(status) references status_type(status_id),
foreign key(category_id) references m_category(category_id)
);

/*
 * カート情報テーブル
 */
create table cart_info(
id int not null primary key,
user_id varchar(16) not null,
temo_user_id varchar(128) unique,
product_id int not null,
product_count int not null,
price int not null,
regist_date datetime not null,
update_date datetime,
foreign key(user_id) references user_info(user_id),
foreign key(product_id) references product_info(product_id)
);

/*
 * 購入履歴情報テーブル
 */
create table purchase_history_info(
id int not null primary key,
user_id varchar(16) not null,
product_id int not null,
product_count int not null,
price int not null,
regist_date datetime not null,
update_date datetime,
foreign key(user_id) references user_info(user_id),
foreign key(product_id) references product_info(product_id)
);

/*
 * 宛先情報テーブル
 */
create table destination_info(
id int not null primary key,
user_id varchar(16) not null unique,
family_name varchar(32) not null,
first_name varchar(32) not null,
family_name_kana varchar(32) not null,
first_name_kana varchar(32) not null,
email varchar(32) not null,
tel_number varchar(13) not null,
user_address varchar(50) not null,
regist_date datetime not null,
update_date datetime
);

/*
 * カテゴリマスタテーブル
 */
create table m_category(
id int not null primary key,
category_id int not null unique,
category_name varchar(20) not null unique,
category_description varchar(100),
insert_date datetime not null,
update_date datetime
);


INSERT INTO item_info_transaction(item_name,item_price,item_stock) VALUES ("ノートBook",100,50);

INSERT INTO login_user_transaction(login_id,login_pass,user_name) VALUES("internous","internous01","test");
