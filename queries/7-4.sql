
-- sintax for natural join for joining 4 tables 
-- select * from table1 natural join table2 natural join table3 natural join table4;


create database if not exists testdb;
use testdb;

create table student(
    student_id int primary key,
    student_name varchar(50)
);

create table stucourse(
    student_id int,
    course_id int,
    primary key(student_id, course_id),
    foreign key(student_id) references student(student_id)
);

create table course_id(
    course_id int primary key,
    course_name varchar(50),
    faculty_name varchar(50)
);

create table faculty(
    faculty_id int primary key,
    faculty_name varchar(50)
);


insert into student values(1, 'John Doe');
insert into student values(2, 'Jane Smith');
insert into student values(3, 'Alice Johnson');
insert into student values(4, 'Bob Brown');
insert into student values(5, 'Charlie Davis');


insert into stucourse values(1, 101);
insert into stucourse values(1, 102);
insert into stucourse values(2, 101);
insert into stucourse values(3, 103);
insert into stucourse values(4, 104);
insert into stucourse values(5, 105);
insert into stucourse values(5, 106);


insert into course_id values(101, 'Mathematics', 'Dr. Smith');
insert into course_id values(102, 'Physics', 'Dr. Johnson');
insert into course_id values(103, 'Chemistry', 'Dr. Brown');
insert into course_id values(104, 'Biology', 'Dr. Davis');
insert into course_id values(105, 'History', 'Dr. Wilson');



insert into faculty values(1, 'Dr. Smith');
insert into faculty values(2, 'Dr. Johnson');
insert into faculty values(3, 'Dr. Brown');
insert into faculty values(4, 'Dr. Davis');
insert into faculty values(5, 'Dr. Wilson');


select * from student natural join stucourse natural join course_id natural join faculty;       


-- how to add new column to the table

alter table faculty add COLUMN email varchar(50) not NULL;
ALTER table course_id add COLUMN faculty_id int;
ALTER table course_id add FOREIGN KEY (faculty_id) REFERENCES faculty(faculty_id);

ALTER table course_id drop column faculty_name;
    