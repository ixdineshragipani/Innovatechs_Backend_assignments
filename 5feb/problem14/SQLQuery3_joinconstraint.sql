select * from orders;
select * from customers;
select * from products;

select * from customers c1 join orders o1 on o1.customer_id=c1.customer_id 
join products p1 on p1.order_id=o1.order_id;

select * from employees;
select * from departments;

insert into employees (emp_name,emp_join_date,dept_id,emp_email,emp_gender,emp_location,emp_phonenumber,manager_id,mentor_id,salary)
values ('Praneeth','2024-01-30',1005,'praneeth@gmail.com','male','Gurgeon','9922331134',2,4,55500);

select distinct(e1.dept_id) from employees e1 join departments d1 on e1.dept_id=d1.dept_id;

select * from employees e1 join departments d1 on e1.dept_id=d1.dept_id where e1.manager_id is not null;

