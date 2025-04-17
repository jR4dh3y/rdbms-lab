## important sql stuf
- `in` is used when using multiple values in a where clause (like `in` `any` `all`) 
- `between` is used when using a range of values in a where clause
- `like` is used when using a pattern in a where clause
- `delete` is not an auto commit command function where as `truncate` is an auto commit command function
- `count(*)` is the only multy row function that considers null data
- `where` clause cant be used with `group by`, use `having` clause insted 
- `having` clause is used to filter the result of a group by clause
- for n tabels we need n-1 joins to get the result