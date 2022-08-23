--(24) Provide a query that shows the most purchased track(s) of 2013.

SELECT 
    t.Name AS "Track Name",
        COUNT(*) AS "Track Purchased" 
            FROM Invoice i 
                JOIN InvoiceLine il 
                    ON il.InvoiceId = i.InvoiceId
                JOIN Track t 
                    ON t.TrackId = il.TrackId
                        WHERE strftime("%Y", InvoiceDate) = "2013"
                            GROUP BY t.TrackId
                            ORDER BY "Track Purchased" DESC; 
              
