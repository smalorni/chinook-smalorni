--(12)Provide a query that shows each Invoice line item, with the name of the track that was purchased.

SELECT
    i.InvoiceLineId,
    i.InvoiceId,
    i.TrackId,
    i.UnitPrice,
    i.Quantity,
    t.name
    FROM InvoiceLine i
        JOIN Track t
            ON i.TrackId = t.TrackId;