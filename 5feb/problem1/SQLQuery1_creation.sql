create table customers (customer_id bigint identity(50,1) primary key, customer_name varchar(30),
customer_email varchar(30),customer_city varchar(255),customer_registration_date date,
customer_phonenumber bigint not null);

create table products (product_id bigint identity(150,1) primary key, product_name varchar(30),
product_description varchar(255), product_price bigint);

create table orders(order_id bigint identity(1,1) primary key, 
customer_id bigint, order_date date, order_status varchar(10), order_amount bigint, 
constraint FK_customer_id
foreign key (customer_id) references customers(customer_id));


select * from products;

select * from orders;

select * from customers;

update customers set customer_phonenumber=8985092319 where customer_id=55;

alter table customers 
add constraint unq_phn unique (customer_phonenumber);

alter table products drop foreign key unq_phn ;

select * from orders;

select * from products;

alter table products
add order_id bigint references orders(order_id);

update products set order_id=5 where product_id=150;

update products set order_id=3 where product_id=151;

update products set order_id=2 where product_id=152;

update products set order_id=5 where product_id=153;

update products set order_id=5 where product_id=154;