SELECT i.Total,
e.FirstName || ' ' || e.LastName AS FullName
FROM Employee e
JOIN Invoice i
    ON i.CustomerId = c.CustomerId
JOIN Customer c
    ON c.SupportRepId = e.EmployeeId
WHERE e.Title LIKE "%Sales%"
    AND e.Title Like "%Agent%"