-- count the number of invoice lines per track
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
