select * from customers;
select * from orders;
select * from products;

select c1.customer_id,c1.customer_name,c1.customer_city  from orders o1 join customers c1 on o1.customer_id=c1.customer_id where customer_registration_date>'2026-01-04';

select * from employees e1 join departments d1 on d1.dept_id=e1.dept_id where d1.dept_name='IT';

select * from customers c1 join orders o1 on c1.customer_id=o1.customer_id where c1.customer_city='Hyderabad';

select * from orders o1 join products p1 on o1.order_id=p1.order_id where p1.product_price>300;

