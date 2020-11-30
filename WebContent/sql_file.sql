create database foodpanda_db;
use foodpanda_db;

create table members(first_name varchar(255) not null, last_name varchar(255) not null, email varchar(255) not null, uname varchar(255) not null, password varchar(255) not null);

create table items(id int not null, item_name varchar(255) not null, price_rupee double(5, 2) not null, item_image_url varchar(512));

show tables;