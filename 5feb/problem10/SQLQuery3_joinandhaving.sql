select * from customers;
select * from products;
select * from orders;

select o1.order_id from orders o1 join customers c1 on o1.customer_id=c1.customer_id group by o1.order_id having count(o1.order_id)>=3;

select d1.dept_id,d1.dept_name,count(e1.emp_id) from employees e1 join departments d1 on d1.dept_id=e1.dept_id group by d1.dept_id,d1.dept_name having count(e1.emp_id)>=3;

select p1.product_id,count(o1.order_id) as ordered_times from products p1 join orders o1 on o1.order_id=p1.order_id group by p1.product_id,o1.order_id having count(o1.order_id)>1;

select c1.customer_id,c1.customer_name,sum(o1.order_amount) as total_amount from customers c1 join orders o1 
on c1.customer_id=o1.customer_id where order_status='Success' group by c1.customer_id,c1.customer_name
having sum(o1.order_amount)>200;