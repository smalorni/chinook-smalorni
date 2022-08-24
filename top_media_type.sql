--(27)Provide a query that shows the most purchased Media Type.

SELECT
    mt.Name AS "Media Type Name",
    COUNT(mt.MediaTypeId) AS "Purchased Sales"
        FROM MediaType mt
            JOIN Track t 
                ON mt.MediaTypeId = t.MediaTypeId
            GROUP BY mt.MediaTypeId
            ORDER BY "Most Purchased Media Type" DESC
            LIMIT 1;
