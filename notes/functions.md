### sql statement working order
1. from
2. where
3. group by
4. having
5. select
6. order by


### functions in mySql
- functions used:
    - concat
    - substr
    - trim, rtrim, ltrim
    - length
    - lpad , rpad
    - replace
    - upper, lower
    - month, day, year (date functions)
    - curtime, curdate


```sql

select concat(name, "works in dpet no ",deptid) as 'empdept' from instructors;

select substr('hello world',1,5) as a;

select trim('   hello world   ') as a;

select name, length(salary) from instructors;

select lpad(salart,10,'*') from instructors;
select lpad(rpad(salary,10,'#'),12,'#') nesting from instructors;

select replace(name,'Dr.','') from instructors;


select upper(name) from instructors;
select lower(name) from instructors;

select concat(substr(name,1,1),lower(substr(name,2))) from instructors; -- self made initcap function


select name, month(dob) from students;
select name, day(dob) from students;
select name, year(dob) from students where year(dob) = 2005;
select name, dayname(dob), monthname(dob) from students;


select curtime();
select curdate();
select hour(curtime());


select name, year(curdate())-year(dob) age from students; -- age is a dreived column and is not required to be in the table as we can calculate it on the fly


```

### case statement in sql 
```sql

    select name, deptid, salary,
    case deptid
        when 3 then salary*1.3
        when 6 then salary*1.4
        when 9 then salary*1.5
        else salary
    end as incsal
    from instructors;

```