--(23) Which country's customers spent the most?

SELECT 
    i.BillingCountry,
    SUM(i.Total) as "Country's Sales"
        FROM Invoice i
            GROUP BY BillingCountry
                ORDER BY 2 DESC
                LIMIT 1;