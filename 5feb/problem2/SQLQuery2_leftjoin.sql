select * from customers c1 left join  orders o1 on o1.customer_id=c1.customer_id;

select * from customers c1 left join  orders o1 on o1.customer_id=c1.customer_id where o1.order_id is null;

select * from products ;

select * from customers;

select * from orders;

select * from orders o1 left join products p1  on p1.order_id=o1.order_id where p1.product_id is null;

select * from orders o1 left join customers c1 on c1.customer_id = o1.customer_id where order_status='Success';

select * from orders o1 left join customers c1 on c1.customer_id=o1.customer_id where c1.customer_city like '%d%';