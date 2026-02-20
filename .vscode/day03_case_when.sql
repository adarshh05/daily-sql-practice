-- Day 03 : CASE WHEN Practice

-- 1. Salary Level
SELECT FirstName, Salary,
CASE
    WHEN Salary >= 80000 THEN 'High'
    WHEN Salary >= 50000 THEN 'Medium'
    ELSE 'Low'
END AS SalaryCategory
FROM Employees;

------------------------------------------------

-- 2. Department Type
SELECT FirstName, Department,
CASE
    WHEN Department IN ('IT','Finance') THEN 'Core'
    ELSE 'Support'
END AS DeptType
FROM Employees;

------------------------------------------------

-- 3. Experience Status
SELECT FirstName, HireDate,
CASE
    WHEN HireDate < '2020-01-01' THEN 'Experienced'
    ELSE 'Fresher'
END AS EmpStatus
FROM Employees;

------------------------------------------------

-- 4. Bonus Percentage
SELECT FirstName, Salary,
CASE
    WHEN Salary >= 90000 THEN Salary * 0.15
    WHEN Salary >= 60000 THEN Salary * 0.10
    ELSE Salary * 0.05
END AS BonusAmount
FROM Employees;

------------------------------------------------

-- 5. Joining Year Category
SELECT FirstName, YEAR(HireDate) AS JoinYear,
CASE
    WHEN YEAR(HireDate) <= 2019 THEN 'Old Batch'
    ELSE 'New Batch'
END AS JoinCategory
FROM Employees;

------------------------------------------------

-- 6. Salary Slab
SELECT FirstName, Salary,
CASE
    WHEN Salary >= 90000 THEN 'A'
    WHEN Salary >= 70000 THEN 'B'
    WHEN Salary >= 50000 THEN 'C'
    ELSE 'D'
END AS SalarySlab
FROM Employees;

------------------------------------------------

-- 7. HR vs Non HR
SELECT FirstName,
CASE
    WHEN Department = 'HR' THEN 'Admin'
    ELSE 'Employee'
END AS RoleType
FROM Employees;

------------------------------------------------

-- 8. Tax Bracket
SELECT FirstName, Salary,
CASE
    WHEN Salary >= 80000 THEN '30%'
    WHEN Salary >= 50000 THEN '20%'
    ELSE '10%'
END AS TaxBracket
FROM Employees;

------------------------------------------------

-- 9. IT Employees Flag
SELECT FirstName,
CASE
    WHEN Department = 'IT' THEN 'Tech'
    ELSE 'Non-Tech'
END AS Category
FROM Employees;

------------------------------------------------

-- 10. Salary Increase
SELECT FirstName, Salary,
CASE
    WHEN Salary >= 80000 THEN Salary + 5000
    WHEN Salary >= 50000 THEN Salary + 3000
    ELSE Salary + 1000
END AS UpdatedSalary
FROM Employees;