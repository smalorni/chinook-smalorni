--(26)Provide a query that shows the top 3 best selling artists.

SELECT 
    SUM(i.Total) AS "Total Sales",
    ar.Name 
    FROM Invoice i 
        JOIN InvoiceLine il 
            ON il.InvoiceId = i.InvoiceId
        JOIN Artist ar 
            ON ar.ArtistId = al.AlbumId
        JOIN Album al 
            ON al.AlbumId = t.AlbumId
        JOIN Track t 
            ON t.TrackId = il.TrackId
        GROUP BY ar.Name
            ORDER BY "Total Sales" DESC 
            LIMIT 3;