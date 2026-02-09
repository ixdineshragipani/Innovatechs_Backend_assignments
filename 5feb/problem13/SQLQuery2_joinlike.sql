select * from customers;
select * from  orders;
select * from products;

select * from customers c1 join orders o1 on c1.customer_id!=o1.customer_id where c1.customer_name like 'A%';

select * from employees e1 join departments d1 on e1.dept_id=d1.dept_id where e1.emp_name like '%A';

select * from orders o1 join products p1 on o1.order_id=p1.order_id where p1.product_name like 'C%';

