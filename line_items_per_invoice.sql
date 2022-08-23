--(11)Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice.

SELECT InvoiceId, COUNT(*) as "List of Items"
        FROM InvoiceLine il 
        GROUP BY il.InvoiceId