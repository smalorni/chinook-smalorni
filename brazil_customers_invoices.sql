--(3)Provide a query showing the Invoices of Customers who are from Brazil. Includes name, invoice id, date of invoice, billing country

SELECT
    c.FirstName ||" "|| c.LastName AS "Full Name",
    i.InvoiceId AS "Invoice Id",
    i.InvoiceDate AS "Invoice Date",
    i.BillingCountry AS "Billing Country"
    FROM Customer c
        JOIN Invoice i 
            ON c.CustomerId = i.CustomerId
                WHERE BillingCountry = "Brazil";
