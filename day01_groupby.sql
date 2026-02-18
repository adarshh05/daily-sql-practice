-- Day 01: GROUP BY + HAVING practice

SELECT ProductID,
       SUM(TotalAmount) AS TotalSales
FROM dbo.Sales
GROUP BY ProductID
HAVING SUM(TotalAmount) >= 161
ORDER BY ProductID;
