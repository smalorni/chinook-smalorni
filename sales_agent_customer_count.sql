--(21) Provide a query that shows how many customers are assigned to each employee. Include Employee's name, total number of customers assigned to each employee

SELECT 
    e.FirstName ||" "|| e.LastName AS "Employee's Name",
    COUNT(c.CustomerId) AS "Total Customers"
        FROM Employee e 
            JOIN Customer c 
                ON e.EmployeeId = c.SupportRepId
                    GROUP BY e.EmployeeId;