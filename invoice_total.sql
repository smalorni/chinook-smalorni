--(7)Provide a query that shows the customers and employees associated with each invoice. Includes invoice total, customer name, customer country, sale agent full name.

SELECT 
   i.Total,
   c.FirstName ||" "|| c.LastName as "Customer Name",
   c.Country,
   e.FirstName ||" "|| e.LastName as "Sale Agent Name"
    FROM Invoice i 
        JOIN Customer c
            ON c.CustomerId = i.CustomerId
        JOIN Employee e 
            ON e.EmployeeId = c.SupportRepId
        ORDER BY i.Total DESC;