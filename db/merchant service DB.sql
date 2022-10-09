show databases;
create database merchant_service;
use merchant_service;

CREATE TABLE IF NOT EXISTS merchant (
    id INT(10) NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    join_date DATETIME NOT NULL,
    phone_number INT(20) NOT NULL,
    createdAt DATETIME NULL DEFAULT CURRENT_TIMESTAMP(),
	updatedAt DATETIME NULL,
    PRIMARY KEY (id)
)engine=InnoDB;

insert into merchant(name,password,address,join_date,phone_number)
 value ('thufeil','Thufeil123','indonesia','2022-09-27',62812727);
select*from merchant;
delete from merchant where id = 1;
show create table merchant;
show columns from merchant;
select*from product;
show columns from product;

CREATE TABLE IF NOT EXISTS Product (
    id INT(10) NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    quantity INT(10) NOT NULL,
    price INT(10) NOT NULL,
	createdAt DATETIME NULL DEFAULT CURRENT_TIMESTAMP(),
	updatedAt DATETIME NULL,
    PRIMARY KEY (id)
)engine=InnoDB;

show columns from merchant;

CREATE TABLE IF NOT EXISTS user (
    
    name VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL
    
)engine=InnoDB;
insert into user(name,password)values('thufeil','Thufeil123');
select*from user;
