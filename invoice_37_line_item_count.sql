--(10)Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37.

SELECT Count (*) as "# of Line Items for Invoice Id 37"
    FROM InvoiceLine il 
        WHERE il.InvoiceId = 37