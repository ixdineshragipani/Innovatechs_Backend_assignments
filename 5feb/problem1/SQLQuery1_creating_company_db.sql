create table employees(emp_id int identity(1,1) primary key, emp_name varchar(30), 
emp_join_date date, dept_id int, emp_email varchar(30) unique, emp_gender varchar(10),
emp_location varchar(30), emp_phonenumber bigint unique,
constraint FK_dept_id foreign key (dept_id) references departments(dept_id));


create table departments(dept_id int identity(1000,1) primary key, dept_name varchar(30),
dept_location varchar(30), manager_id bigint);

insert into departments(dept_name,dept_location,manager_id) values
('IT','Hyderabad',202212222164),
('Sales','Banglore',202112222246),
('BA','Hyderabad',201912221616),
('QA','Chennai',201112332134),
('HR','Gurgeon',200421213456);



insert into employees
(emp_name,emp_join_date,dept_id,emp_email, emp_gender, emp_location, emp_phonenumber) 
values('Dinesh','2026-01-05',1000,'dineshragipani@gmail.com','male','Hyderabad',9347453490),
('Sujith','2026-01-05',1000,'sujith@gmail.com','male','Hyderabad',8923843922),
('Apsara','2012-04-23',1003,'apsara@gmail.com','female','Chennai',9233842213),
('Varanasi','2011-06-22',1002,'varanasi@gmail.com','male','Banglore',8238349211),
('Snigdha','2012-06-06',1004,'snigdha@gmail.com','female','Hyderabad',9876543210),
('Sushanth','2011-09-21',1000,'sushanth@gmail.com','male','Banglore',8327492112),
('Anna','2026-04-02',1004,'anna@gmail.com','female','Delhi',9843217883)
;


select * from departments;
select * from employees;

select * from employees e1 inner join departments d1 on e1.dept_id=d1.dept_id;

