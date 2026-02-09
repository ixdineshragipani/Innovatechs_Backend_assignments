select * from employees;

select * from departments;

select * from products;
select * from customers;
select * from orders;

select c1.customer_name, count(o1.order_id) as count_order from orders o1 
join customers c1 on c1.customer_id=o1.customer_id group by c1.customer_name;

select c1.customer_name,sum(o1.order_amount) as total_order_amount from orders o1
join customers c1 on c1.customer_id=o1.customer_id group by c1.customer_name;

select d1.dept_id, count(e1.emp_id) as emp_per_dept from employees e1 join departments d1 on e1.dept_id=d1.dept_id
group by d1.dept_id;

select count(p1.product_id),o1.order_id from products p1 join orders o1  on o1.order_id=p1.order_id group by o1.order_id;

select  from employees e1 join departments d1 on d1.dept_id=e1.dept_id

ALTER TABLE employees
ADD salary DECIMAL(10,2);


UPDATE employees SET salary = 60000 WHERE emp_id = 1;
UPDATE employees SET salary = 55000 WHERE emp_id = 2;
UPDATE employees SET salary = 70000 WHERE emp_id = 3;
UPDATE employees SET salary = 80000 WHERE emp_id = 4;
UPDATE employees SET salary = 65000 WHERE emp_id = 5;
UPDATE employees SET salary = 75000 WHERE emp_id = 6;
UPDATE employees SET salary = 50000 WHERE emp_id = 7;


SELECT d1.dept_id,d1.dept_name,SUM(e1.salary) AS total_department_salary
FROM employees e1 JOIN departments d1 ON e1.dept_id = d1.dept_id
GROUP BY d1.dept_id,d1.dept_name;
