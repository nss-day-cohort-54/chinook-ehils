SELECT Track,
TotalTracks
FROM (
SELECT COUNT(il.TrackId) AS TotalTracks,
t.Name AS Track
FROM InvoiceLine il
JOIN Track t
    ON t.TrackId = il.TrackId
JOIN Invoice i 
    ON i.InvoiceId = il.InvoiceID
WHERE i.InvoiceDate LIKE "%2013%"
GROUP BY t.Name)
ORDER BY TotalTracks DESC

