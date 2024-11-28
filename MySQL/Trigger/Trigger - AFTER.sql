create database Trigger_After_exercise;
use Trigger_After_exercise;


create table clients(
id int auto_increment primary key,
name varchar(70) not null,
email varchar(100) unique,
adress varchar(100) not null,
phone_number int not null,
birthday date not null
);	

create table products(
id INT AUTO_INCREMENT primary key,
name varchar(70) not null,
category varchar(60) not null,
price decimal(10,2) not null,
stock_amount int,
supplier_id int,

foreign key (supplier_id) references suppliers(id)
);

create table suppliers(
id INT AUTO_INCREMENT primary key,
company_name varchar(70) not null,
contact varchar(80) not null,
company_adress varchar(80) not null,
company_number varchar(20)
);

create table sales(
id int auto_increment primary key,
client_id int,
product_id int,
amount int not null,
price_itens decimal(10,2) not null,
total_value decimal(10,2) not null,
created_at timestamp,


foreign key (client_id) references clients(id),
foreign key (product_id) references products(id)
);

create table sales_audit(
id int auto_increment primary key,
sale_id int,
client_id int,
product_id int,
amount int not null,
price_itens decimal(10,2) not null,
total_value decimal(10,2) not null,
created_at timestamp
);


 DELIMITER $$
 
 create trigger audit_records
 after insert on sales
 for each row
 begin
	insert into sales_audit(sale_id,client_id,product_id,amount,price_itens,total_value,created_at)
    value(old.id, old.client_id, old.product_id, old.amount,);
 end $$
 
 DELIMITER ;

