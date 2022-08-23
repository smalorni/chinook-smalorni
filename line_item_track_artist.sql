--(13) Provide a query that shows each Invoice line item, with the name of the track that was purchase, and the name of the artist.

SELECT 
    i.InvoiceLineId,
    i.InvoiceId,
    i.TrackId,
    i.UnitPrice,
    i.Quantity,
    t.Name AS "Name of Track",
    ar.Name AS "Artist Name"
    FROM InvoiceLine i 
        JOIN Track t ON t.TrackId = i.TrackId
        JOIN Album al ON al.AlbumId = t.AlbumId
        JOIN Artist ar ON ar.ArtistId = al.ArtistId;