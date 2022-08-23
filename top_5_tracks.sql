--Provide a query that shows the top 5 most purchased tracks over all.

SELECT 
    t.Name AS "Track Name",
    COUNT(il.TrackId) AS "Number of Purchases"
        FROM Track t 
            JOIN InvoiceLine il
                ON t.TrackId = il.TrackId
                    GROUP BY t.Name
                        ORDER BY "Number of Purchases" DESC
                        LIMIT 5;
                       