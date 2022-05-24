SELECT il.InvoiceLineId,
t.name,
ar.name
FROM InvoiceLine il
JOIN Track t 
    On t.TrackId = il.TrackId
JOIN Album al 
    ON al.AlbumId = t.AlbumId
JOIN Artist ar 
    ON ar.ArtistId = al.ArtistId