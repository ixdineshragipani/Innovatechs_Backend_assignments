select * from employees;

select * from departments;

alter table employees 
add manager_id bigint;

update employees set manager_id = 4 where emp_id=1 or emp_id=4 or emp_id=6;

update employees set manager_id = null where emp_id=2;

update employees set manager_id = 3 where emp_id=3 or emp_id=7;

update employees set manager_id = 2 where emp_id=5;

alter table departments
drop column manager_id;

select * from employees e1 join employees e2 on e1.manager_id=e2.manager_id;

select e1.emp_name,e2.emp_name,e1.manager_id from employees e1 join employees e2 on e1.manager_id=e2.manager_id and e1.emp_id<>e2.emp_id;

select e2.emp_name,e1.manager_id from employees e1 join employees e2 on e1.manager_id=e2.emp_id;

alter table employees add mentor_id int;

update employees set mentor_id=4 where emp_id=3 or emp_id=6 or emp_id=7;

update employees set mentor_id=5 where emp_id=1;

update employees set mentor_id=3 where emp_id=4 or emp_id=5;

select e1.emp_name,e2.emp_name from employees e1 join employees e2 on e1.emp_id=e2.mentor_id;

select e1.emp_name as employee,e2.emp_name as manager from employees e1 join employees e2 on e1.emp_id=e2.manager_id;

