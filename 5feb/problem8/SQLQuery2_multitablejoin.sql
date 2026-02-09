select * from customers;
select * from orders;
select * from products;

select c1.customer_name,o1.order_id,p1.product_name from orders o1 join customers c1 on c1.customer_id=o1.customer_id 
join products p1 on o1.order_id=p1.order_id;



