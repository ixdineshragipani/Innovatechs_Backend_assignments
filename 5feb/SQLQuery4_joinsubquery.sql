select * from customers;
select * from products;
select * from orders;

select * from employees;
select * from departments;

select * from customers c1 join orders o1 on c1.customer_id=o1.customer_id where c1.customer_id 
in ( select customer_id from orders);

select * from customers c1 join orders o1 on c1.customer_id=o1.customer_id where c1.customer_id 
not in ( select customer_id from orders);

select * from products p1 join orders o1 on o1.order_id=p1.order_id where p1.product_name
not in (select product_name from products);

--Employees NOT IN departments table
select * from employees e1 join departments d1 on d1.dept_id=e1.dept_id
where e1.dept_id not in (select d1.dept_id from departments);

--Orders where amount > (subquery average amount)
select * from orders o1 join products p1 on p1.order_id=o1.order_id 
where p1.product_price>(select avg(p1.product_price) from products p1);

select * from orders o1 join customers c1 on c1.customer_id=o1.customer_id
where o1.order_amount>(select avg(o1.order_amount) from orders o1);

select * from employees e1 join departments d1 on d1.dept_id=e1.dept_id 
where e1.salary>(select avg(salary) from employees e1);

select * from employees e1 join departments d1 on d1.dept_id=e1.dept_id
where d1.dept_id in (select d1.dept_id from departments d1);

select * from customers c1 join orders o1 on o1.customer_id=c1.customer_id 
where o1.order_status in (select order_status from orders where order_status='Success');


--Use subquery inside JOIN condition
select * from customers c1 join (select * from orders o1) on o1.customer_id=c1.customer_id;
--Use subquery as derived table and join it
select *

select * from customers c1 join orders o1 on c1.customer_id=o1.customer_id
where exists (select * from orders o1);


select * from customers c1 join orders o1 on c1.customer_id=o1.customer_id
where not exists (select * from orders o1);

