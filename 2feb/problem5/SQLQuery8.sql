select count(*) from students;

select count(*) from students where active_flag=1;

select sum(fees) from courses;

select avg(fees) from courses;

select sum(fees)  from courses where fees>120000;

select min(age) from students;

select max(fees) from courses;

select min(registration_date) from students;

select max(registration_date) from students;

select count(*) from students group by active_flag;

select count(*) from students group by age;

select sum(fees) from courses group by fees;

select course_id,count(*) as total_enrollments from enrolements group by course_id having count(*)>3;

select count(*) as total_age from students group by age having avg(age)<21;

select count(*) as total_enrolement from enrolements group by course_id having count(enroll_id)>2;