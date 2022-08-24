--(6)Provide a query that shows the invoices associated with each sales agent. Includes agent's name, invoice id.

SELECT
    e.FirstName ||" "|| e.LastName as "Full Name",
    i.InvoiceId
    FROM Invoice i, Employee e, Customer c
        WHERE i.CustomerId = c.CustomerId AND c.SupportRepId = e.EmployeeId
        ORDER BY e.EmployeeId DESC; 
