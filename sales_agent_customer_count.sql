SELECT e.FirstName || ' ' || e.LastName AS Employye_FullName, 
COALESCE(COUNT(c.SupportRepId), 0) AS CustomerCount
FROM Employee e
LEFT JOIN Customer c 
    ON c.SupportRepId = e.EmployeeId
GROUP BY Employye_FullName