-- show databases;
-- create database Shopping;
use Shopping;

/*create table customers(
           customername varchar(25), 
		   customerId int
           );*/

insert into customers(customername, customerId)
values ('Abi', 01);
insert into customers(customername, customerId)
values ('Sam', 02);

-- Select * from customers where customerId = 02;

/* create table vendor(
        vendorname varchar(25), 
        vendorId int
        );

alter table vendor
add customerId int;*/

insert into vendor(vendorname, vendorId, customerId)
values ('Amazon', 45, 01);
insert into vendor(vendorname, vendorId, customerId)
values ('Flipkart', 54, 02);
-- show columns from vendor;

select vendor.vendorname, customers.customername
from vendor
inner join customers
on vendor.customerId = customers.customerId;




