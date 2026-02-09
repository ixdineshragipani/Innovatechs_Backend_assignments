select * from orders o1 left join customers c1 on o1.customer_id=c1.customer_id;

select c1.customer_name,c1.customer_city from orders o1 
inner join customers c1 on o1.customer_id=c1.customer_id;

select * from orders o1 inner join customers c1 on o1.customer_id=c1.customer_id 
inner join products p1 on p1.order_id=o1.order_id;

select o1.order_id,c1.customer_id,c1.customer_name,c1.customer_registration_date 
from orders o1 inner join customers c1 on c1.customer_id=o1.customer_id;

select * from orders o1 inner join customers c1 on 
o1.customer_id=c1.customer_id where order_amount>100;

select * from orders o1 inner join customers c1 on
o1.customer_id=c1.customer_id where c1.customer_name like '%i%';

select * from customers;
select * from orders;

