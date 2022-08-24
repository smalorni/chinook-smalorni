--(18) Provide a query that shows total sales made by each sales agent. Includes Employee Fullname, total sales for each employee

SELECT
    e.FirstName ||" "|| e.LastName AS "Employee's Name",
    SUM(i.Total) as "Total Sales"
        FROM Invoice i
            JOIN Customer c
                ON i.CustomerId = c.CustomerId
            JOIN Employee e 
                ON c.SupportRepId = e.EmployeeId
                    GROUP BY e.EmployeeId;