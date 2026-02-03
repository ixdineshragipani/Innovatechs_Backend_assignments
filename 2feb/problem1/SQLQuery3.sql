create table students(student_id BIGINT  Primary Key ,
name VARCHAR(100) ,
email VARCHAR(255) UNIQUE,     
age INT,
join_date DATE, 
active_flag BIT DEFAULT 1 
);

create table courses(course_id INT primary key,
course_name varchar(100) NOT NULL,
fees decimal(10,3)
);

create table enrolements(
enroll_id BIGINT Primary Key,
student_id BIGINT, 
course_id INT,
enroll_timestamp datetime default GETDATE()
);