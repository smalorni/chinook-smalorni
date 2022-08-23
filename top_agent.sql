--(20) Which sales agent made the most in sales over all?

SELECT 
    e.FirstName ||" "|| e.LastName AS "Sale Agent's Name",
    SUM(i.Total) AS "Total Sales"
        FROM Invoice i
            JOIN Customer c
                ON i.CustomerId = c.CustomerId
            JOIN Employee e 
                ON c.SupportRepId = e.EmployeeId
                    GROUP BY e.EmployeeId
                    ORDER BY "Total Sales" ASC
                    LIMIT 1
                  
                  
                    