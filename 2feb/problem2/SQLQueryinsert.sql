
Insert into students(student_id,name,email,age,join_date,active_flag) values
(100,'Dinesh','dineshragipani143@gmail.com',23,'05-01-2026',1),
(101,'Raju','raju@gmail.com',11,'2026-01-05',1),
(102,'Ramu','ramu@gmail.com',22,'2026-01-01',0),
(103,'Sujith','sujith@gmail.com',20,'2026-01-01',0),
(104,'Adithya','adithya@gmail.com',21,'2026-05-05',1),
(105,'Sushanth','sushanth@gmail.com',22,'2026-01-01',0),
(106,'Preetham','preetham@gmail.com',23,'2026-01-05',1),
(107,'Harati','harati@gmail.com',22,'2026-01-03',1),
(108,'Asmitha','asmitha@gmail.com',22,'2026-01-05',0),
(109,'Rishi','Rishi@gmail.com',22,'2026-01-05',1);

Insert into courses(course_id,course_name,fees) values
(10,'CSE',133000.000),
(11,'IT',132000.050),
(12,'AIML',123000.600),
(13,'DS',131000.090),
(14,'ECE',113000.007);

Insert into enrolements(enroll_id,student_id,course_id,enroll_timestamp) values
(1,102,10,'2026-10-20 09:45:23'),
(2,103,11,'2026-10-21 09:15:23'),
(3,105,10,'2026-10-22 08:45:23'),
(4,107,10,'2026-10-23 08:55:23'),
(5,101,10,'2026-01-20 06:45:23'),
(6,109,10,'2026-09-20 03:45:23'),
(7,105,10,'2026-10-02 07:45:23'),
(8,101,10,'2026-11-20 03:15:23'),
(9,106,10,'2026-07-21 05:45:23'),
(10,105,10,'2026-06-20 01:45:23');
