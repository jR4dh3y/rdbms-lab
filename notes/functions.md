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

```sql

select concat(name, "works in dpet no ",deptid) as 'empdept' from instructors;

-- +----------------------------------------+
-- | empdept                                |
-- +----------------------------------------+
-- | Dr. Alice Johnsonworks in dpet no 1    |
-- | Dr. Robert Smithworks in dpet no 1     |
-- | Dr. Emily Davisworks in dpet no 2      |
-- | Dr. John Millerworks in dpet no 2      |
-- | Dr. Sophia Wilsonworks in dpet no 3    |
-- | Dr. James Brownworks in dpet no 3      |
-- | Dr. Olivia Martinezworks in dpet no 4  |
-- | Dr. Michael Andersonworks in dpet no 4 |
-- | Dr. William Garciaworks in dpet no 5   |
-- | Dr. Charlotte Leeworks in dpet no 5    |
-- | Dr. Daniel Harrisworks in dpet no 6    |
-- | Dr. Grace Clarkworks in dpet no 6      |
-- | Dr. Benjamin Lewisworks in dpet no 7   |
-- | Dr. Chloe Walkerworks in dpet no 7     |
-- | Dr. Henry Hallworks in dpet no 8       |
-- | Dr. Amelia Youngworks in dpet no 8     |
-- | Dr. Nathan Scottworks in dpet no 9     |
-- | Dr. Victoria Adamsworks in dpet no 9   |
-- | Dr. Lucas Bakerworks in dpet no 10     |
-- | Dr. Isabella Perezworks in dpet no 10  |
-- +----------------------------------------+

select substr(name,5) from instructors;
-- +------------------+
-- | substr(name,5)   |
-- +------------------+
-- | Alice Johnson    |
-- | Robert Smith     |
-- | Emily Davis      |
-- | John Miller      |
-- | Sophia Wilson    |
-- | James Brown      |
-- | Olivia Martinez  |
-- | Michael Anderson |
-- | William Garcia   |
-- | Charlotte Lee    |
-- | Daniel Harris    |
-- | Grace Clark      |
-- | Benjamin Lewis   |
-- | Chloe Walker     |
-- | Henry Hall       |
-- | Amelia Young     |
-- | Nathan Scott     |
-- | Victoria Adams   |
-- | Lucas Baker      |
-- | Isabella Perez   |
-- +------------------+

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
-- | Dr. Robert Smith     |              8 |
-- | Dr. Emily Davis      |              8 |
-- | Dr. John Miller      |              8 |
-- | Dr. Sophia Wilson    |              8 |
-- | Dr. James Brown      |              8 |
-- | Dr. Olivia Martinez  |              8 |
-- | Dr. Michael Anderson |              8 |
-- | Dr. William Garcia   |              8 |
-- | Dr. Charlotte Lee    |              8 |
-- | Dr. Daniel Harris    |              8 |
-- | Dr. Grace Clark      |              8 |
-- | Dr. Benjamin Lewis   |              8 |
-- | Dr. Chloe Walker     |              8 |
-- | Dr. Henry Hall       |              8 |
-- | Dr. Amelia Young     |              8 |
-- | Dr. Nathan Scott     |              8 |
-- | Dr. Victoria Adams   |              8 |
-- | Dr. Lucas Baker      |              8 |
-- | Dr. Isabella Perez   |              8 |
-- +----------------------+----------------+

select lpad(salart,10,'*') from instructors;

-- +---------------------+
-- | lpad(salary,10,'#') |
-- +---------------------+
-- | ##85000.00          |
-- | ##90000.00          |
-- | ##80000.00          |
-- | ##75000.00          |
-- | ##87000.00          |
-- | ##88000.00          |
-- | ##78000.00          |
-- | ##77000.00          |
-- | ##79000.00          |
-- | ##76000.00          |
-- | ##83000.00          |
-- | ##82000.00          |
-- | ##81000.00          |
-- | ##80000.00          |
-- | ##78000.00          |
-- | ##77000.00          |
-- | ##92000.00          |
-- | ##91000.00          |
-- | ##86000.00          |
-- | ##85000.00          |
-- +---------------------+

 select lpad(rpad(salary,10,'#'),12,'#') nesting from instructors;

-- +--------------+
-- | nesting      |
-- +--------------+
-- | ##85000.00## |
-- | ##90000.00## |
-- | ##80000.00## |
-- | ##75000.00## |
-- | ##87000.00## |
-- | ##88000.00## |
-- | ##78000.00## |
-- | ##77000.00## |
-- | ##79000.00## |
-- | ##76000.00## |
-- | ##83000.00## |
-- | ##82000.00## |
-- | ##81000.00## |
-- | ##80000.00## |
-- | ##78000.00## |
-- | ##77000.00## |
-- | ##92000.00## |
-- | ##91000.00## |
-- | ##86000.00## |
-- | ##85000.00## |
-- +--------------+

select replace(name,'Dr.','') from instructors;

-- +------------------------+
-- | replace(name,'Dr.','') |
-- +------------------------+
-- |  Alice Johnson         |
-- |  Robert Smith          |
-- |  Emily Davis           |
-- |  John Miller           |
-- |  Sophia Wilson         |
-- |  James Brown           |
-- |  Olivia Martinez       |
-- |  Michael Anderson      |
-- |  William Garcia        |
-- |  Charlotte Lee         |
-- |  Daniel Harris         |
-- |  Grace Clark           |
-- |  Benjamin Lewis        |
-- |  Chloe Walker          |
-- |  Henry Hall            |
-- |  Amelia Young          |
-- |  Nathan Scott          |
-- |  Victoria Adams        |
-- |  Lucas Baker           |
-- |  Isabella Perez        |
-- +------------------------+


```

