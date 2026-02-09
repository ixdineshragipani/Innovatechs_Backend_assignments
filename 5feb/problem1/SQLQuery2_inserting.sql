insert into customers(customer_name, customer_email, customer_city, customer_registration_date,customer_phonenumber) values
('Jaisimha','jaisimha@gmail.com','Hyderabad','2026-01-05',9929192291),
('Adithya','adithya@gmail.com','Chennai','2026-02-05',9887453490),
('Sushanth','sushanth@gmail.com','Hyderabad','2026-01-08',9347753490),
('Preetham','preetham@gmail.com','Gurgeon','2026-01-07',9347453490),
('Rishi','rishi@gmail.com','Rajasthan','2026-01-08',9377453490),
('Amogh','amogh@gmail.com','Banglore','2026-01-04',9347453990),
('Snehith','snehith@gmail.com','Mumbai','2026-02-20',9347453491),
('Sahith','sahith@gmail.com','Hyderabad','2025-12-05',8347453490)
;

insert into products(product_name,product_description,product_price) values
('Coffee','Grinded coffee beans with skimmed milk',300),
('Tea','boiled in tea leafs, added white sugar and full fat milk',20),
('Latte','Grinded coffee beans with froath of milk',450),
('Cappuccino','Grinded coffee beand added to hot milk',350),
('Espresso','Grinded coffee beans with water',500)
;

insert into orders(customer_id,order_date,order_status,order_amount) values
(54,'2026-05-05','Success',300),
(52,'2026-05-22','Failed',450),
(51,'2026-05-12','Success',350),
(52,'2026-05-25','Failed',300),
(54,'2026-05-21','Failed',450),
(52,'2026-06-05','Success',20),
(55,'2026-12-22','Success',500)
;

select * from customers;

select * from products;

select * from orders;