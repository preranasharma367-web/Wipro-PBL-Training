-- Topic 07 : Displaying Data from Multiple Tables Using Joins
-- Assignment 05
-- Display employee and manager details using Outer Join

SELECT E.ENAME AS "Employee",
       E.EMPNO AS "Emp#",
       M.ENAME AS "Manager",
       M.EMPNO AS "Mgr#"
FROM EMP E, EMP M
WHERE E.MGR = M.EMPNO(+);
