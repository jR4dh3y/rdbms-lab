-- Active: 1741845928797@@127.0.0.1@3306@hr
-- sub queries 
use hr;
desc employees;

select concat(first_name ," ", last_name) as full_name, salary, hire_date, DAYNAME(hire_date) from employees where DAYNAME(hire_date) = (select dayname(hire_date) from employees where last_name = "Abel");

select last_name, job_id,salary from employees where job_id = 
(select job_id from employees where employee_id = 141) and salary > (select salary from employees where employee_id=143);


-- emps jiski dpt 60 ki avg sal se zada
select concat(first_name, " ", last_name) as "full name", salary from employees where salary > (select avg(salary) from employees where department_id = 60);


-- person jinka manager same ha hunaoy ke manager se 

SELECT * from employees where manager_id = (
SELECT manager_id from employees where last_name = "Hunold");

-- vo emp jinki sal king ki sal ke barable (muly row)
select last_name, job_id,salary from employees where salary in (select salary from employees where last_name='King');

select last_name,salary,job_id from employees where salary > any (select salary from employees where job_id = "it_prog") and job_id!="it_prog"; 


-- bakwass query ha ye mat samjna, nahi aanae vali paper me :)
select * from employees where dayname(hire_date) in
(select dayname(hire_date) from employees GROUP BY dayname(hire_date) HAVING count(*) = 
(SELECT max(countemp) FROM (SELECT COUNT(DAYNAME(hire_date)) as countemp from employees GROUP BY DAYNAME(hire_date)) as max_day_count));



-- 20-3-25
select * from employees where salary in
(select min(salary) from employees GROUP BY department_id);


select last_name, manager_id, department_id from employees where (manager_id, department_id) in (select manager_id, department_id from employees where employee_id in (174,180));

-- or use non pair wise comparison

select last_name, manager_id , department_id from employees where manager_id in (select manager_id from employees where employee_id in (174,180)) and department_id in (select department_id from employees where employee_id in (174,180));


-- inline view - when a subquery is used in the FROM clause

select employees.last_name, salary, employees.department_id,avgdpet.avgsal from employees join
(select department_id,avg(salary) as avgsal from employees group by department_id) as avgdpet ON
(employees.department_id = avgdpet.department_id) WHERE employees.salary > avgdpet.avgsal;

-- same 

select last_name,salary from employees outertab
where outertab.salary > 
(select avg(salary) as avgsal from employees where department_id = outertab.department_id)

