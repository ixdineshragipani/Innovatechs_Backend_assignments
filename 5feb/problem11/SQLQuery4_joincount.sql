select * from customers;
select * from orders;
select * from products;

select * from employees;
select * from departments;

select count(o1.customer_id) from orders o1 join customers c1 
on o1.customer_id=c1.customer_id group by o1.customer_id;

select count(d1.dept_id) from employees e1 join departments d1
on d1.dept_id=e1.dept_id group by d1.dept_id;

select o1.order_id,count(p1.product_id) from products p1 join orders o1
on o1.order_id=p1.order_id group by p1.product_id,o1.order_id;

select * from products;
select * from orders;

select p.order_id,count(*)
from products p join orders o
on p.order_id=o.order_id
group by p.order_id 


select c1.customer_city,count(*) from orders o1 join customers c1 on o1.customer_id=c1.customer_id
group by c1.customer_city;

