SELECT Media,
TotalTracksInMedia
FROM (
SELECT COUNT(il.TrackId) AS TotalTracksInMedia,
m.Name AS Media
FROM InvoiceLine il
JOIN Track t
    ON t.TrackId = il.TrackId
JOIN MediaType m 
    ON t.MediaTypeId = m.MediaTypeId
GROUP BY m.Name)
ORDER BY TotalTracksInMedia DESC