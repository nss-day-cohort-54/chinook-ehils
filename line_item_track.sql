SELECT il.*,
t.name
FROM InvoiceLine il 
JOIN Track t 
    On t.TrackId = il.TrackId