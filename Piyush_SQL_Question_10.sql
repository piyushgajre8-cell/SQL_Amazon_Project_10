create database company2;
use company2;
create table employees(
emp_id int primary key,
name varchar(50),
department varchar(30),
salary int,
joining_date date
);
insert into employees(emp_id,name,department,salary,joining_date)values
(1,'Ashok','HR',40000,'2020-01-10'),
(2,'Ravi','Finance',80000,'2019-03-15'),
(3,'Karan','IT',35000,'2021-07-25'),
(4,'Ajay','Manager','55000','2018-10-05'),
(5,'Kunal','Acountant',120000,'2022-02-18');
select * from employees;
select name, salary from employees;
select * from employees
where department = 'HR';
select name,salary from employees
where salary > 45000;
select name,salary from employees
order by salary desc;
select name,salary,
case
when salary >= 100000 then 'high'
when salary >= 50000 then 'medium'
else 'low'
end as salary_category
from employees;