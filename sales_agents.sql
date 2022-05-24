SELECT *
FROM Employee e 
WHERE e.Title LIKE "%Sales%"
    AND e.Title Like "%Agent%"