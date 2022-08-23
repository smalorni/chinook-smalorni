--(19) Which sales agent made the most in sales in 2009? Use MAX

SELECT 
    MAX(i.Total),
        e.FirstName ||" "|| e.LastName AS "Employee's Name",
    SUM(i.Total) as "Total Sales"
        FROM Invoice i
            JOIN Customer c
                ON i.CustomerId = c.CustomerId
            JOIN Employee e 
                ON c.SupportRepId = e.EmployeeId
                WHERE strftime("%Y", InvoiceDate) = "2009"
                    GROUP BY e.EmployeeId
                    ORDER BY i.Total DESC
                    LIMIT 1;
                    