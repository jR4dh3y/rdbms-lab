use scott;

show TABLEs;

select * 
from EMP 
JOIN DEPT on EMP.deptno = DEPT.deptno
WHERE DEPT.dname = 'SALES' and EMP.sal > 2000;


-- pi ename , dname , sal(sigma sal >=1500(EMP join dname='sales' DEPT))
-- pi ename , dname , sal(dname='sales' ^ sigma sal >=2000 (EMP join DEPT)) 

