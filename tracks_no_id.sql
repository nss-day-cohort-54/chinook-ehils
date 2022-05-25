SELECT t.Name,
al.Title,
m.Name,
g.Name
From Track t 
JOIN Album al 
    ON t.AlbumId = al.AlbumId
JOIN MediaType m 
    On t.MediaTypeId = m.MediaTypeId
JOIN Genre g 
    ON t.GenreId = g.GenreId