--(3)Provide a query showing the Invoices of Customers who are from Brazil. Includes name, invoice id, date of invoice, billing country

SELECT
    c.FirstName ||" "|| c.LastName as "Full Name",
    i.InvoiceId,
    i.InvoiceDate,
    i.BillingCountry
    FROM Customer c
        JOIN Invoice i 
        ON c.CustomerId = i.CustomerId; 