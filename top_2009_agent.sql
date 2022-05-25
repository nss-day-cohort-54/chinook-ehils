SELECT MAX(TotalSales),
Employye_FullName
FROM(SELECT SUM(i.Total) AS TotalSales,
e.FirstName || ' ' || e.LastName AS Employye_FullName
FROM Invoice i
JOIN Customer c
    ON i.CustomerId = c.CustomerId
JOIN Employee e
    ON c.SupportRepId = e.EmployeeId
WHERE e.Title LIKE "%Sales%"
    AND e.Title Like "%Agent%"
    AND i.InvoiceDate LIKE "%2009%"
GROUP BY Employye_FullName)