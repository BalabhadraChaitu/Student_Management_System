create database student_management_system;

use student_management_system;

create table departments(dept_id int primary key,dept_name varchar(20) not null,hod_name varchar(30),location varchar(20));
desc departments;

create table students(student_id int primary key,student_name varchar(30) not null,phone bigint unique key,email varchar(40) unique key,city varchar(30),
admission_date date,dept_id int,foreign key(dept_id) references departments(dept_id));
desc students;

create table faculty(faculty_id int primary key,faculty_name varchar(30) not null,email varchar(40) unique,designation varchar(20),
hire_date date,dept_id int,foreign key(dept_id) references departments(dept_id));
desc faculty;

create table courses(course_id int primary key,course_name varchar(30) not null,credits int,fee decimal(10,2),
dept_id int,foreign key(dept_id) references departments(dept_id));
desc courses;

create table enrollments(enrollment_id int primary key,student_id int,course_id int,enrollment_date date,enrollment_status varchar(30),
foreign key(student_id) references students(student_id),foreign key(course_id) references courses(course_id));
desc enrollments;

create table exams(exam_id int primary key,course_id int,exam_name varchar(40),exam_date date,max_marks int,foreign key(course_id) references courses(course_id));
desc exams;

create table marks(mark_id int primary key, student_id int, exam_id int, marks_obtained int,
foreign key(student_id) references students(student_id),foreign key(exam_id) references exams(exam_id));
desc marks;

insert into departments values (1, 'Computer Science', 'Dr. Meera Rao', 'Block A'), (2,
'Data Science', 'Dr. Arun Kumar', 'Block B'), (3, 'Electronics', 'Dr. S. Reddy', 'Block C'), (4,
'Commerce', 'Dr. Lakshmi', 'Block D');

insert into students values(101, 'Aarav Sharma', '9876500101', 'aarav@mail.com', 'Vijayawada', '2023-06-15', 1),
(102, 'Bhavya Reddy', '9876500102', 'bhavya@mail.com', 'Guntur', '2022-06-18', 2),
(103, 'Charan Kumar', '9876500103', 'charan@mail.com', 'Vijayawada', '2023-06-15', 1),
(104, 'Divya Rao', '9876500104', 'divya@mail.com', 'Hyderabad', '2022-06-18', 2),
(105, 'Farhan Ali', '9876500105', 'farhan@mail.com', 'Nellore', '2023-06-20', 3),
(106, 'Geetha Nair', '9876500106', 'geetha@mail.com', 'Vizag', '2022-06-18', 1),
(107, 'Harish Varma', '9876500107', 'harish@mail.com', 'Guntur', '2023-06-20', 4),
(108, 'Ishita Singh', '9876500108', 'ishita@mail.com', 'Vijayawada', '2022-06-18', 2),
(109, 'Kiran Teja', '9876500109', 'kiran@mail.com', 'Ongole', '2023-06-20', 3),
(110, 'Lavanya Devi', '9876500110', 'lavanya@mail.com', 'Hyderabad', '2022-06-18', 4);

insert into faculty values(201, 'Ananya Rao', 'ananya@college.edu', 'Professor', '2018-07-01', 1), (202, 'Rahul Varma',
'rahul@college.edu', 'Assistant Professor', '2020-06-15', 1), (203, 'Sowmya Iyer',
'sowmya@college.edu', 'Associate Professor', '2017-08-10', 2), (204, 'Vikram Reddy',
'vikram@college.edu', 'Assistant Professor', '2021-01-05', 3), (205, 'Priya Das',
'priya@college.edu', 'Professor', '2016-06-20', 4);

insert into courses values(301, 'Database Management Systems', 4, 45000, 1), (302,
'Python Programming', 4, 42000, 2), (303, 'Computer Networks', 3, 38000, 1), (304,
'Machine Learning', 4, 52000, 2), (305, 'Digital Electronics', 3, 40000, 3), (306, 'Business
Statistics', 3, 35000, 4), (307, 'Web Technologies', 3, 39000, 1),(308, 'Data Visualization', 3,
41000, 2);

insert into enrollments values(501, 101, 301, '2026-06-20', 'Enrolled'), (502, 103, 301,
'2026-06-20', 'Enrolled'), (503, 106, 301, '2026-06-21', 'Enrolled'), (504, 110, 303, '2026-06-21', 'Enrolled'), 
(505, 102, 302, '2026-06-20', 'Enrolled'), (506, 104, 302, '2026-06-20',
'Enrolled'), (507, 108, 304, '2026-06-21', 'Enrolled'), (508, 108, 304, '2026-06-21',
'Enrolled'), (509, 101, 303, '2026-06-22', 'Enrolled'), (510, 103, 307, '2026-06-22',
'Enrolled'), (511, 105, 305, '2026-06-22', 'Enrolled'), (512, 109, 305, '2026-06-22',
'Enrolled'), (513, 102, 304, '2026-06-23', 'Enrolled'), (514, 104, 308, '2026-06-23',
'Enrolled'), (515, 108, 302, '2026-06-23', 'Enrolled'), (516, 107, 306, '2026-06-23',
'Enrolled'), (517, 110, 306, '2026-06-23', 'Enrolled'), (518, 105, 306, '2026-06-24',
'Withdrawn'), (519, 101, 307, '2026-06-24', 'Enrolled'), (520, 103, 301, '2026-06-24',
'Completed'), (521, 107, 308, '2026-06-24', 'Enrolled');

insert into exams values(401, 301, 'Internal Assessment 1', '2026-08-05', 30), (402,
301, 'Internal Assessment 2', '2026-09-05', 30), (403, 302, 'Internal Assessment 1', '2026-08-06', 30),
(404, 303, 'Mid-Term Examination', '2026-08-07', 50), (405, 304, 'Mid-Term
Examination', '2026-08-08', 50), (406, 305, 'Mid-Term Examination', '2026-08-09', 50),
(407, 306, 'Mid-Term Examination', '2026-08-10', 50), (408, 307, 'Final Examination',
'2026-10-05', 100), (409, 308, 'Final Examination', '2026-10-06', 100);

insert into marks values(601, 101, 401, 27), (602, 103, 401, 21), (603, 106, 401, 18),
(604, 101, 402, 28), (605, 103, 402, 23), (606, 106, 402, 20), (607, 102, 403, 24), (608, 104,
403, 19), (609, 108, 403, 28), (610, 101, 404, 42), (611, 103, 404, 37), (612, 102, 405, 44),
(613, 108, 405, 39), (614, 105, 406, 36), (615, 109, 406, 41), (616, 107, 407, 38), (617, 110,
407, 45), (618, 101, 408, 86), (619, 103, 408, 78), (620, 104, 409, 88), (621, 102, 409, 82);

##------------------------------------------------ Business Reports ---------------------------------------------------##

# 1. Display all student details from the Students table. 
select*from students;

# 2. Display student names, phone numbers and email addresses of students belonging to department ID 1.
select student_name,phone,email from students where dept_id=1;

# 3. Retrieve the distinct cities from which students have been admitted. 
select distinct city from students;

# 4. Find students who belong to department ID 1 or department ID 2 using the IN operator.
select*from students where dept_id in (1,2);

# 5. Display courses having fees between ₹38,000 and ₹45,000. 
select course_name,fee from courses where fee between 38000 and 45000;

# 6. Find students whose names start with the letter 'A' or end with the letter 'a' using pattern matching.
select*from students where student_name like 'A%' or student_name like '%a';

# 7. Find the total number of students in each department.
select dept_id,count(student_id) as total_students from students group by dept_id;

# 8. Calculate the average, highest and lowest course fees for each department.
select dept_id,round(avg(fee),2) as average_fee,max(fee) as highest_fee,min(fee) as lowest_fee from courses group by dept_id;

# 9. Calculate the total marks and average marks obtained by each student across all examinations.
select student_id,sum(marks_obtained) as total_marks,round(avg(marks_obtained),2) as average_marks from marks group by student_id;

# 10. Display the ceiling and floor values of the average marks obtained by each student. 
select student_id,ceil(avg(marks_obtained)) as ceiling_avg_marks,floor(avg(marks_obtained)) as floor_avg_marks from marks group by student_id;

# 11. Calculate the percentage obtained by each student in every examination and round the result to two decimal places.
select m.student_id,e.exam_name,round((m.marks_obtained/e.max_marks)*100,2) as percentage from marks m join exams e on m.exam_id=e.exam_id;

# 12. Display student names in uppercase and their email addresses in lowercase.
select upper(student_name) as student_name ,lower(email) as email from students;

# 13. Generate a student identification display by concatenating the student name and student ID. Example: Aarav Sharma - 101.
select concat(student_name," - ",student_id) as student_identification from students;

# 14. Display student names and their completed years of study in the college using an appropriate date function.
select student_id,student_name,timestampdiff(year,admission_date,curdate()) as completed_years_of_study from students;

# 15. Display examination dates in the format DD-Month-YYYY along with the month name.
select date_format(exam_date,'%d-%M-%Y') as formatted_exam_date,monthname(exam_date) as month_name from exams;

# 16. Display a combined list of student names and faculty names using UNION.
select student_name as name from students 
union 
select faculty_name as name from faculty;

# OR -- with role name as student or faculty
select student_name as name,"student" as role from students 
union 
select faculty_name,"faculty" as role from faculty;

# 17. Display student IDs who have enrolled in courses and student IDs who have obtained examination marks using UNION ALL.
select student_id from enrollments 
union all
select student_id from marks;

# 18. Find student IDs who are present in both the Students and Enrollments tables using INTERSECT.
select student_id from students 
intersect 
select student_id from enrollments;

# 19. Find student IDs who have not enrolled in any course using EXCEPT.
select student_id from students
except
select student_id from enrollments;

# 20. Display student names along with their department names.
select s.student_name,d.dept_name from students s join departments d on s.dept_id=d.dept_id;

# 21. Display course names, department names and course fees.
select c.course_name,d.dept_name,c.fee from courses c join departments d on d.dept_id=c.dept_id;

# 22. Display faculty names, their designations and the departments in which they work.
select f.faculty_name,f.designation,d.dept_name from faculty f join departments d on f.dept_id=d.dept_id;

# 23. Display student names, course names, enrollment dates and enrollment statuses.
select s.student_name,c.course_name,e.enrollment_date,e.enrollment_status from students s join enrollments e on e.student_id=s.student_id 
join courses c on c.course_id=e.course_id;

# 24. Generate an examination result report displaying student name, course name, exam name, marks obtained and maximum marks.
select s.student_name,c.course_name,e.exam_name,m.marks_obtained,e.max_marks from marks m join students s on m.student_id=s.student_id 
join exams e on m.exam_id=e.exam_id join courses c on e.course_id=c.course_id order by s.student_name;

# 25. Find students who have not enrolled in any course using NOT EXISTS. 
select student_id,student_name from students s where not exists(select student_id from enrollments e where e.student_id=s.student_id);

# 26. Find courses whose fees are greater than the average fee of all courses.
select course_name,fee from courses c where fee>(select avg(fee) from courses);

# 27. Display students who scored more than the overall average marks.
select s.student_id,s.student_name,m.marks_obtained from students s join marks m on m.student_id=s.student_id 
where m.marks_obtained>(select avg(marks_obtained) from marks);

# 28. Find the student or students who obtained the highest marks in each examination.
select s.student_id,s.student_name,m.exam_id,m.marks_obtained from marks m join students s on s.student_id=m.student_id 
where m.marks_obtained =(select max(marks_obtained) from marks m1 where m.exam_id=m1.exam_id) order by m.exam_id;

# 29. Display students who scored above the average marks of their respective examinations using a correlated subquery.
select m1.student_id,m1.exam_id,m1.marks_obtained from marks m1 where m1.marks_obtained >
(select avg(m2.marks_obtained) from marks m2 where m1.exam_id=m2.exam_id) order by m1.exam_id;

# 30. Create a view named Student_Course_Details to display student name, department name, course name, enrollment date and enrollment status.
create view Student_Course_Details as select s.student_name,d.dept_name,c.course_name,e.enrollment_date,e.enrollment_status from students s join 
departments d on d.dept_id=s.dept_id join enrollments e on s.student_id=e.student_id join courses c on c.course_id=e.course_id;

select*from student_course_details;

# 31. Create a view named Student_Exam_Results to display student name, course name, examination name, marks obtained, maximum marks and result percentage.
create view Student_Exam_Results as select s.student_name,c.course_name,e.exam_name,m.marks_obtained,e.max_marks,round(((m.marks_obtained/e.max_marks)*100),2) as 
result_percentage from students s join marks m on m.student_id=s.student_id join exams e on e.exam_id=m.exam_id 
join courses c on c.course_id=e.course_id order by s.student_id;

select*from student_exam_results;

# 32. Demonstrate COMMIT by inserting a new enrollment record and permanently saving the transaction.
set autocommit=0;
start transaction;
insert into enrollments values(522,105,305,'2026-06-30','Completed');
commit;

select*from enrollments;

# 33. Demonstrate ROLLBACK by updating a student's email address and reversing the change before committing.
set sql_safe_updates=0; 
start transaction;
update students set email="a@gmail.com" where student_id=101;
select*from students;
rollback;
commit;

select*from students;

# 34. Use SAVEPOINT while inserting two enrollment records. Roll back to the savepoint to cancel only the second insertion, then commit the first insertion.
start transaction;
insert into enrollments values(523,104,301,'2026-06-25','Enrolled');
savepoint sp1;

insert into enrollments values(524,106,302,'2026-06-25','Enrolled');
rollback to sp1;
commit;

select*from enrollments;

# 35. Create a stored procedure that accepts a department ID as an IN parameter and displays all students belonging to that department.
call get_students_by_dept_id(2);

# 36. Create a stored procedure that accepts a student ID as an input parameter and displays all courses enrolled by that student along with enrollment status.
call get_student_courses(105);

# 37. Create a stored procedure that accepts an exam ID and returns the average marks obtained in that examination using an OUT parameter.
call get_average_marks(406,@avg_marks);
select @avg_marks;

#or 
set @exam_id=406;
call get_average_marks(@exam_id,@avg_marks);
select @avg_marks;

# 38. Create an AFTER DELETE trigger on the Students table to automatically store the details of a deleted student in a separate Students_Archive table.
create table students_archive(student_id int primary key,student_name varchar(30) not null,phone bigint unique key,email varchar(40) unique key,city varchar(30),
admission_date date,dept_id int);

delete from marks where student_id=110;
delete from enrollments where student_id=110;
delete from students where student_id=110;

select*from students_archive;

# 39. Create an AFTER UPDATE trigger on the Marks table to store the old marks and updated marks of a student in a separate Marks_History table whenever marks are changed.
create table marks_history(h_id int auto_increment primary key,mark_id int,student_id int,exam_id int,old_marks int,new_marks int);

update marks set marks_obtained=25 where student_id=103 and exam_id=402;

select*from marks_history;

# 40. Create an AFTER INSERT trigger on the Enrollments table to automatically store the student ID, course ID, and enrollment date in a separate Enrollment_Log table 
 ## whenever a new enrollment is created. 
create table enrollment_log(log_id int auto_increment primary key,student_id int,course_id int,enrollment_date date);

insert into enrollments values(524,106,302,'2026-06-25','Enrolled');

select*from enrollments;
select*from enrollment_log;