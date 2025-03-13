use hr;

select * from employees;

select DISTINCT job_id from employees;

select * from employees ORDER BY salary ;

select * from employees ORDER BY department_id, job_id DESC;

select concat(first_name,' ',last_name) as full_name, salary , salary/30 as sal_day FROM employees ORDER BY salary*12;

SELECT * from employees where job_id LIKE "%CLERK" or job_id like "%ANALYST" ORDER BY job_id DESC;

select * from employees where hire_date = '2005-08-13' or hire_date = '2002-06-02' or hire_date = '1981-12-3' ORDER BY hire_date desc;

select * from employees where department_id in (10,50);
select * from employees where salary*12 BETWEEN 150000 and 200000;

select first_name from employees where first_name like '_____' ;

