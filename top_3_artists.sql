SELECT Artist,
TotalTracks
FROM (
SELECT COUNT(il.TrackId) AS TotalTracks,
t.Name AS Track,
ar.Name AS Artist
FROM InvoiceLine il
JOIN Track t
    ON t.TrackId = il.TrackId
JOIN Invoice i 
    ON i.InvoiceId = il.InvoiceId
JOIN Album al 
    ON al.AlbumId = t.AlbumId
JOIN Artist ar 
    ON ar.ArtistId = al.ArtistId
GROUP BY ar.Name)
ORDER BY TotalTracks DESC
LIMIT 3
