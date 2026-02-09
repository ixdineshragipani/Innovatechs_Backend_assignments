select * from employees;
select * from departments;

select e1.emp_name,d1.dept_name from employees e1 join departments d1 on e1.dept_id=d1.dept_id;

select e1.emp_name , d1.dept_id from employees e1 join departments d1 on d1.dept_id=e1.dept_id;

select count(*) from employees e1 join departments d1 on d1.dept_id=e1.dept_id;

select dept_name,dept_location ,
case when dept_id=1000 then 'they belongs to IT'
when dept_id=1001 then 'They belong to Sales'
when dept_id=1002 then 'They belongs to BA'
when dept_id=1003 then 'they belong to QA'
when dept_id=1004 then 'they belong to HR'
else 'not belong to any department' end as Belongings
 from departments;