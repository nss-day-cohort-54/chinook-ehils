SELECT il.*,
t.name
FROM InvoiceLine il 
JOIN Track t 
    On t.TrackId = il.TrackId

SELECT Track,
TotalTracks
FROM (
SELECT COUNT(il.TrackId) AS TotalTracks,
t.Name AS Track
FROM Track t 
JOIN InvoiceLine il
    ON t.TrackId = il.TrackId
JOIN Invoice i 
    ON i.InvoiceId = il.InvoiceID
GROUP BY t.Name)
