create database myec_db default character set utf8;

use myec_db;

create table m_delivery_method (id int primary key AUTO_INCREMENT,
								name varchar(256) not null,
								price int not null);

insert into m_delivery_method (name,price) values ('特急配送',500),('通常配送',0),('日時指定配送',200);

create table t_buy_detail (id int primary key AUTO_INCREMENT,
						   buy_id int not null,
						   item_id int not null);

create table t_buy (id int primary key AUTO_INCREMENT,
				    user_id int not null,
				    total_price int not null,
				    delivery_method_id int not null,
				    buy_date datetime not null);

create table m_item (id int primary key AUTO_INCREMENT,
					 category_id int not null,
					 name varchar(256) not null,
					 drink_category_id int,
					 food_category_id int,
					 detail text,
					 alchol varchar(256),
					 price int,
					 file_name varchar(256),
					 create_date datetime not null,
					 update_date datetime not null);

create table m_drink_category (id int primary key AUTO_INCREMENT,
							   category_type int not null,
							   name varchar(256) not null);

insert into m_drink_category (category_type,name) values (1,'エール系'),(1,'ラガー系'),(1,'黒ビール系'),(1,'ビールその他'),
															(2,'赤'),(2,'白'),(2,'ロゼ'),(2,'スパークリング'),(2,'ワインその他'),
															(3,'日本酒'),(3,'果実酒'),(3,'焼酎'),(3,'飲み物その他');


create table m_food_category (id int primary key AUTO_INCREMENT,
							   name varchar(256) not null);

insert into m_food_category (name) values ('肉系'),('魚介系'),('野菜系'),('チーズ系'),('おつまみその他');

create table t_set (id int primary key AUTO_INCREMENT,
					item_id int not null,
					drink_category_id int not null);

create table t_user (id int primary key AUTO_INCREMENT,
					 firstname varchar(256) not null,
					 last name varchar(256) not null,
					 postcode varchar(256) not null,
					 address varchar(256) not null,
					 email varchar(256) not null,
					 login_password varchar(256) not null,
					 birth_date date not null,
					 tel_num varchar not null,
					 create_date datetime not null,
					 update_date datetime not null);

