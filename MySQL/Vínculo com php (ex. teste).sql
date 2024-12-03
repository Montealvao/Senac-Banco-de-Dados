create database voucher142;
use voucher142;

create table users(
id int auto_increment primary key,
name varchar(20) not null,
password varchar(70) not null
);

select * from users;

insert into users(name,password) values
('Montealvão','123');