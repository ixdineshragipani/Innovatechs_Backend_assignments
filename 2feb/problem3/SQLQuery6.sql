Insert into students(student_id,name,email,age,join_date,active_flag) values
(110,'Sahith','sahith@gmail.com',23,'05-01-2026',1),
(111,'Divya','divya@gmail.com',21,'2026-01-05',1),
(112,'Sathwik','sathwik@gmail.com',22,'2026-01-01',0);

Insert into courses values (15,'CSBS',200000.000);

Insert into enrolements(enroll_id,student_id,course_id,enroll_timestamp) values
(11,104,12,'2026-10-20 02:25:23'),
(12,103,11,'2026-10-21 03:35:23'),
(13,105,10,'2026-10-22 04:45:23');

select * from students;

select name ,email from students;

select * from students order by age desc;

select top 5 *  from students order by join_date;

select distinct(age) from students;

select distinct(course_name) from courses;


update students set age=44 where student_id=110;

update students set active_flag=1 where student_id between 100 and 104;

update courses set fees=fees*1.1;

delete from students where student_id=111;

delete from courses where fees<1000;

alter table students alter column name varchar(225)

EXEC sp_rename 'students.join_date',  'registration_date', 'COLUMN';

alter table students add phone_number varchar(15);