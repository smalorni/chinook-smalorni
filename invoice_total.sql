--(7)Provide a query that shows the customers and employees associated with each invoice. Includes invoice total, customer name, customer country, sale agent full name.

SELECT 
   i.Total,
   c.FirstName ||" "|| c.LastName as "Customer Name",
   c.Country,
   e.FirstName ||" "|| e.LastName as "Sale Agent Name"
    FROM Invoice i, Customer c, Employee e 
        WHERE i.CustomerId = c.CustomerId AND c.SupportRepId = e.EmployeeId
        ORDER BY i.Total DESC
