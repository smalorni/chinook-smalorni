--(16) Provide a query that shows all the Tracks, but displays no IDs. Includes Album Name, Media Type, Genre

SELECT 
    t.Name AS "Track Name",
    al.Title AS "Album Title",
    m.Name AS "Media Type",
    g.Name AS "Genre"
        FROM Track t 
            JOIN Album al 
                ON t.AlbumId = al.AlbumId
            JOIN MediaType m 
                ON t.MediaTypeId = m.MediaTypeId
            JOIN Genre g 
                ON t.GenreId = g.GenreId
                    ORDER BY t.Name

