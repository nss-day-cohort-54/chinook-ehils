SELECT i.Total,
e.FirstName || ' ' || e.LastName AS Employye_FullName,
c.FirstName || ' ' || c.LastName AS Customer_FullName
FROM Invoice i
JOIN Customer c
    ON i.CustomerId = c.CustomerId
JOIN Employee e
    ON c.SupportRepId = e.EmployeeId
WHERE e.Title LIKE "%Sales%"
    AND e.Title Like "%Agent%"