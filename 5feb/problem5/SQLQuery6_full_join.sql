-- Combine all customers and orders

select * from orders o1 full outer join customers c1 on c1.customer_id=o1.customer_id;

--Show matched and unmatched rows

select * from orders o1 full outer join customers c1 on c1.customer_id!=o1.customer_id;

--Employees + departments full list

select * from employees e1 full join departments d1 on e1.dept_id=d1.dept_id;

--Write FULL JOIN using LEFT + RIGHT + UNION

select * from orders o1 left join customers c1 on c1.customer_id=o1.customer_id 
right join products p1 on p1.order_id=o1.customer_id
union
select * from orders o1 left join customers c1 on c1.customer_id=o1.customer_id 
right join products p1 on p1.order_id=o1.customer_id
;

select * from orders
union 
select * from orders;