-- Day 05 : Subqueries Practice

------------------------------------------------
-- 1. Employees earning more than average salary
SELECT FirstName, Salary
FROM Employees
WHERE Salary > (SELECT AVG(Salary) FROM Employees);

------------------------------------------------
-- 2. Employees from same department as 'John'
SELECT *
FROM Employees
WHERE Department = (
    SELECT Department
    FROM Employees
    WHERE FirstName = 'John'
);

------------------------------------------------
-- 3. Highest salary employee
SELECT *
FROM Employees
WHERE Salary = (
    SELECT MAX(Salary) FROM Employees
);

------------------------------------------------
-- 4. Employees hired after the earliest hire date
SELECT *
FROM Employees
WHERE HireDate > (
    SELECT MIN(HireDate) FROM Employees
);

------------------------------------------------
-- 5. Employees earning less than max salary
SELECT FirstName, Salary
FROM Employees
WHERE Salary < (
    SELECT MAX(Salary) FROM Employees
);

------------------------------------------------
-- 6. Departments having average salary > 60000
SELECT Department
FROM Employees
GROUP BY Department
HAVING AVG(Salary) > 60000;

------------------------------------------------
-- 7. Employees in departments where avg salary > 60000
SELECT *
FROM Employees
WHERE Department IN (
    SELECT Department
    FROM Employees
    GROUP BY Department
    HAVING AVG(Salary) > 60000
);

------------------------------------------------
-- 8. Second highest salary
SELECT MAX(Salary) AS SecondHighest
FROM Employees
WHERE Salary < (
    SELECT MAX(Salary) FROM Employees
);

------------------------------------------------
-- 9. Employees earning above overall average
SELECT *
FROM Employees
WHERE Salary > (
    SELECT AVG(Salary) FROM Employees
);

------------------------------------------------
-- 10. Employees not in HR department
SELECT *
FROM Employees
WHERE Department NOT IN (
    SELECT Department FROM Employees WHERE Department = 'HR'
);

------------------------------------------------
-- 11. EXISTS example
SELECT *
FROM Employees e
WHERE EXISTS (
    SELECT 1
    FROM Employees
    WHERE Salary > 80000
);

------------------------------------------------
-- 12. Employees earning more than department average
SELECT *
FROM Employees e
WHERE Salary > (
    SELECT AVG(Salary)
    FROM Employees
    WHERE Department = e.Department
);

------------------------------------------------
-- 13. Employees hired in same year as 'Jane'
SELECT *
FROM Employees
WHERE YEAR(HireDate) = (
    SELECT YEAR(HireDate)
    FROM Employees
    WHERE FirstName = 'Jane'
);

------------------------------------------------
-- 14. Count employees above average salary
SELECT COUNT(*) AS CountAboveAvg
FROM Employees
WHERE Salary > (
    SELECT AVG(Salary) FROM Employees
);

------------------------------------------------
-- 15. Employees with salary equal to department max
SELECT *
FROM Employees e
WHERE Salary = (
    SELECT MAX(Salary)
    FROM Employees
    WHERE Department = e.Department
);