-- Day 04 : Advanced CASE WHEN Practice

-- 1. Salary Category
SELECT FirstName, Salary,
CASE 
    WHEN Salary >= 90000 THEN 'Very High'
    WHEN Salary >= 70000 THEN 'High'
    WHEN Salary >= 50000 THEN 'Medium'
    ELSE 'Low'
END AS SalaryLevel
FROM Employees;

------------------------------------------------

-- 2. Department Group
SELECT FirstName, Department,
CASE
    WHEN Department IN ('IT','Finance') THEN 'Core'
    ELSE 'Support'
END AS DeptGroup
FROM Employees;

------------------------------------------------

-- 3. Joining Year Status
SELECT FirstName, YEAR(HireDate) AS JoinYear,
CASE
    WHEN YEAR(HireDate) <= 2019 THEN 'Old Employee'
    ELSE 'New Employee'
END AS JoinStatus
FROM Employees;

------------------------------------------------

-- 4. Bonus Calculation
SELECT FirstName, Salary,
CASE
    WHEN Salary >= 80000 THEN Salary * 0.15
    WHEN Salary >= 60000 THEN Salary * 0.10
    ELSE Salary * 0.05
END AS Bonus
FROM Employees;

------------------------------------------------

-- 5. Salary Increase
SELECT FirstName, Salary,
CASE
    WHEN Salary >= 80000 THEN Salary + 5000
    WHEN Salary >= 50000 THEN Salary + 3000
    ELSE Salary + 1000
END AS UpdatedSalary
FROM Employees;

------------------------------------------------

-- 6. Tax Slab
SELECT FirstName, Salary,
CASE
    WHEN Salary >= 90000 THEN '30%'
    WHEN Salary >= 70000 THEN '25%'
    WHEN Salary >= 50000 THEN '20%'
    ELSE '10%'
END AS TaxSlab
FROM Employees;

------------------------------------------------

-- 7. Employee Role
SELECT FirstName,
CASE
    WHEN Department = 'HR' THEN 'Admin'
    WHEN Department = 'IT' THEN 'Technical'
    ELSE 'General'
END AS Role
FROM Employees;

------------------------------------------------

-- 8. Experience Level
SELECT FirstName, HireDate,
CASE
    WHEN HireDate < '2019-01-01' THEN 'Senior'
    ELSE 'Junior'
END AS Experience
FROM Employees;

------------------------------------------------

-- 9. Salary Rating
SELECT FirstName, Salary,
CASE
    WHEN Salary >= 90000 THEN 'A'
    WHEN Salary >= 70000 THEN 'B'
    WHEN Salary >= 50000 THEN 'C'
    ELSE 'D'
END AS Rating
FROM Employees;

------------------------------------------------

-- 10. Department Flag
SELECT FirstName,
CASE
    WHEN Department = 'Finance' THEN 'Accounts'
    ELSE 'Other'
END AS DeptFlag
FROM Employees;

------------------------------------------------

-- 11. IT Employee Check
SELECT FirstName,
CASE
    WHEN Department = 'IT' THEN 'Tech'
    ELSE 'Non-Tech'
END AS Category
FROM Employees;

------------------------------------------------

-- 12. Salary Range
SELECT FirstName, Salary,
CASE
    WHEN Salary BETWEEN 50000 AND 70000 THEN 'Mid Range'
    ELSE 'Outside Range'
END AS SalaryRange
FROM Employees;

------------------------------------------------

-- 13. Hire Month Category
SELECT FirstName, MONTH(HireDate) AS JoinMonth,
CASE
    WHEN MONTH(HireDate) <= 6 THEN 'First Half'
    ELSE 'Second Half'
END AS JoinPeriod
FROM Employees;

------------------------------------------------

-- 14. Salary Even/Odd
SELECT FirstName, Salary,
CASE
    WHEN Salary % 2 = 0 THEN 'Even'
    ELSE 'Odd'
END AS SalaryType
FROM Employees;

------------------------------------------------

-- 15. Employment Status
SELECT FirstName,
CASE
    WHEN HireDate < '2020-01-01' THEN 'Confirmed'
    ELSE 'Probation'
END AS EmpStatus
FROM Employees;