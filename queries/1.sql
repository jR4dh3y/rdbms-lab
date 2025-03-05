create database uni;
use uni;

create table student1(
	student_id int primary key,
	student_name varchar(25)
	);

describe table student1;
insert into student1 values(
	1,
    "radhey kalra"
	);

select * from student1;	


create table new1(
	p_name varchar(25),
    price int,
    category varchar(10),
    manufacturer  varchar(15)
	);
    
    insert into new1 values(
	"gizmo",
    20,
    "household",
    "abc works"
	);
    
    alter table new1 add(p_id int);
    alter table new1 modify price float;

desc table new1;
select * from new1 where price > 20;	
update new1 set p_id = "1" where p_name = "gizmo";
delete from new1 where p_name = "gizmo";

