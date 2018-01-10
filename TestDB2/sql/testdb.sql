drop database if exists testdb;
create database testdb;
use testdb;
create table test_table(
user_id int,
user_name varchar(255),
password varchar(255)
);

insert into test_table values(1,"tanaka","123");
insert into test_table values(2,"yamada","236");
insert into test_table values(3,"hanako","568");

