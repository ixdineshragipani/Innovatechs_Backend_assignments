select * from students where age>21;

select * from students where active_flag=1;

select * from courses where fees between 120000 and 130000;

select* from students where age in (20,23,25);

select * from students where age >21 and active_flag=1;

select * from students where age<21 or active_flag=0;

select * from courses where fees>140000 and name like %Data%;

select * from students where email like %gmail.com;

select * from courses where course_name like Data%;

-- select * from students where cities like %new%;

Insert into students values(113,'preetham.a','preetham.a@gmail.com',null,202511-03,1,Null);

select * from students where age is null;

select * from students where age is not null;

