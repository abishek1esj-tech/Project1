-- show databases;
use abidb;
create table employeedetails(
empid int primary key,
empname varchar(25),
jobdescription varchar(30),
salary int
);

create table productiondetails(
empname varchar(25),
empid int,
production_achieved int,
target int,
foreign key (empid) references employeedetails (empId)
);

insert into employeedetails(empid, empname, jobdescription, salary) values
(1, 'Abi', 'Analyst', 30000),
(2, 'Ram', 'Senior Analyst', 40000),
(3, 'Arun', 'HR', 50000),
(4, 'Karthick', 'Manager', 60000);

insert into productiondetails(empname, empid, production_achieved, target) values
('Arun', 3, 2000, 2000),
('Ram', 2, 1800, 2000),
('Karthick', 4, 1900, 2000);

select * from employeedetails where empname = 'Arun';

select empid, empname, salary from employeedetails where salary > 40000;

select * from employeedetails where salary > 40000 and jobdescription = 'Manager';

select * from employeedetails where jobdescription = 'HR' or jobdescription = 'Analyst';

select * from employeedetails where jobdescription in ('Analyst', 'HR', 'Manager');

select * from employeedetails where jobdescription not in ('Analyst', 'HR', 'Manager');

select * from employeedetails where salary between 40000 and 60000 limit 3;

select count(empid) as empid, jobdescription
from employeedetails
group by jobdescription;

select employeedetails.empname, productiondetails.production_achieved, productiondetails.target
from employeedetails
inner join productiondetails ON employeedetails.empid = productiondetails.empid;