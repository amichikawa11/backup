set names utf8;
set foreign_key_checks = 0;

drop database if exists subec;
create database if not exists subec;
use subec;


/*ログイン情報*/
drop table if exists login_user;
create table login_user(
	id int not null primary key auto_increment,
	login_id varchar(16) unique,
	login_pass varchar(16),
	user_name varchar(50),
	user_address varchar(50),
	user_sex varchar(16),
	user_tell varchar(16),
	user_mail varchar(50),
	insert_date datetime,
	updated_date datetime
);


/*商品情報*/
drop table if exists item_info;
create table item_info(
	id int not null primary key auto_increment,
	item_name varchar(30),
	item_price int,
	item_stock int,
	item_category varchar(30),
	item_description varchar(255),
	image_file_path varchar(100),
	release_date varchar(50),
	insert_date datetime,
	update_date datetime
);

/*商品購入テーブル*/
drop table if exists buy_item_transaction;
create table buy_item_transaction(
	id int not null primary key auto_increment,
	item_transaction_id  int,
	total_price int,
	total_count int,
	user_master_id varchar(16),
	pay varchar(30),
	insert_date datetime,
	delete_date datetime
);

INSERT INTO item_info(item_name,item_price,item_stock,item_category,item_description,image_file_path,release_date) VALUES
("ノート", 150, 50, "note", "シンプルで使いやすいノート", "./image/note.png", "1990/10/1");

INSERT INTO login_user(login_id, login_pass, user_name, user_address, user_sex, user_tell, user_mail) VALUES
("kanri", "123", "管理者", "***", "***", "***", "***"),
("hana", "456", "山本花子", "東京都", "女", "080-1111-2222", "hanahana@yahoo.co.jp");

