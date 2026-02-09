select * from employees e1 right join departments d1 on d1.dept_id=e1.dept_id;

select * from employees;

select * from departments;

select * from employees e1 right join departments d1 on d1.dept_id=e1.dept_id where e1.emp_join_date>'2020-01-01';

select d1.dept_id from employees e1 right join departments d1 on d1.dept_id=e1.dept_id group by d1.dept_id having count(d1.dept_id)>1;