--(17) Provide a query that shows all Invoices. Includes InvoiceId, total number of line items on each invoice

SELECT
    i.InvoiceId,
    COUNT(*) AS "Total Number of Line Items"
        FROM Invoice i 
            JOIN InvoiceLine il 
                ON il.InvoiceId = i.InvoiceId
                    GROUP BY i.InvoiceId;