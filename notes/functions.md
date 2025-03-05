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

-- +----------------------------------------+
-- | empdept                                |
-- +----------------------------------------+
-- | Dr. Alice Johnsonworks in dpet no 1    |
-- | Dr. Robert Smithworks in dpet no 1     |
-- | Dr. Emily Davisworks in dpet no 2      |
-- | Dr. John Millerworks in dpet no 2      |
-- +----------------------------------------+

select substr('hello world',1,5) as a;
-- +-------+
-- | a     |
-- +-------+
-- | hello |
-- +-------+

select trim('   hello world   ') as a;
-- +--------------+
-- | a            |
-- +--------------+
-- | hello world  |
-- +--------------+


select name, length(salary) from instructors;

-- +----------------------+----------------+
-- | name                 | length(salary) |
-- +----------------------+----------------+
-- | Dr. Alice Johnson    |              8 |
-- +----------------------+----------------+

select lpad(salart,10,'*') from instructors;
select lpad(rpad(salary,10,'#'),12,'#') nesting from instructors;

-- +--------------+
-- | nesting      |
-- +--------------+
-- | ##85000.00## |
-- | ##90000.00## |
-- +--------------+

select replace(name,'Dr.','') from instructors;

-- +------------------------+
-- | replace(name,'Dr.','') |
-- +------------------------+
-- |  Alice Johnson         |
-- |  Robert Smith          |
-- |  Emily Davis           |
-- |  John Miller           |
-- +------------------------+

select upper(name) from instructors;
select lower(name) from instructors;
-- +----------------------+
-- | lower(name)          |
-- +----------------------+
-- | dr. amelia young     |
-- | dr. nathan scott     |
-- | dr. victoria adams   |
-- | dr. lucas baker      |
-- | dr. isabella perez   |
-- +----------------------+

select concat(substr(name,1,1),lower(substr(name,2))) from instructors; -- self made initcap function

-- +----------------------+
-- | initcap              |
-- +----------------------+
-- | Dr. alice johnson    |
-- | Dr. robert smith     |
-- | Dr. emily davis      |
-- | Dr. john miller      |
-- +----------------------+

select name, month(dob) from students;
select name, day(dob) from students;
select name, year(dob) from students where year(dob) = 2005;
select name, dayname(dob), monthname(dob) from students;

-- +-------------------+--------------+----------------+
-- | name              | dayname(dob) | monthname(dob) |
-- +-------------------+--------------+----------------+
-- | Liam Johnson      | Tuesday      | May            |
-- | Olivia Brown      | Sunday       | April          |
-- | Noah Williams     | Monday       | March          |
-- | Emma Jones        | Friday       | June           |
-- +-------------------+--------------+----------------+

select curtime();
select curdate();
select hour(curtime());


select name, year(curdate())-year(dob) age from students; -- age is a dreived column and is not required to be in the table as we can calculate it on the fly

-- +-------------------+------+
-- | name              | age  |
-- +-------------------+------+
-- | Liam Johnson      |   23 |
-- | Olivia Brown      |   25 |
-- | Noah Williams     |   22 |
-- | Emma Jones        |   21 |
-- +-------------------+------+


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

-- +----------------------+--------+----------+------------+
-- | name                 | deptid | salary   | incsal     |
-- +----------------------+--------+----------+------------+
-- | Dr. Alice Johnson    |      1 | 85000.00 |   85000.00 |
-- | Dr. Robert Smith     |      1 | 90000.00 |   90000.00 |
-- | Dr. Emily Davis      |      2 | 80000.00 |   80000.00 |
-- | Dr. John Miller      |      2 | 75000.00 |   75000.00 |
-- | Dr. Sophia Wilson    |      3 | 87000.00 | 113100.000 |
-- | Dr. James Brown      |      3 | 88000.00 | 114400.000 |
-- | Dr. Olivia Martinez  |      4 | 78000.00 |   78000.00 |
-- | Dr. Michael Anderson |      4 | 77000.00 |   77000.00 |
-- | Dr. William Garcia   |      5 | 79000.00 |   79000.00 |
-- | Dr. Charlotte Lee    |      5 | 76000.00 |   76000.00 |
-- | Dr. Daniel Harris    |      6 | 83000.00 | 116200.000 |
-- | Dr. Grace Clark      |      6 | 82000.00 | 114800.000 |
-- | Dr. Benjamin Lewis   |      7 | 81000.00 |   81000.00 |
-- | Dr. Chloe Walker     |      7 | 80000.00 |   80000.00 |
-- | Dr. Henry Hall       |      8 | 78000.00 |   78000.00 |
-- | Dr. Amelia Young     |      8 | 77000.00 |   77000.00 |
-- | Dr. Nathan Scott     |      9 | 92000.00 | 138000.000 |
-- | Dr. Victoria Adams   |      9 | 91000.00 | 136500.000 |
-- | Dr. Lucas Baker      |     10 | 86000.00 |   86000.00 |
-- | Dr. Isabella Perez   |     10 | 85000.00 |   85000.00 |
-- +----------------------+--------+----------+------------+

```