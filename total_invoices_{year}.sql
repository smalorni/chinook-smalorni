--(8)How many Invoices were there in 2009 and 2011?

SELECT COUNT (*) AS "Number of Invoices"
    FROM Invoice i
        WHERE strftime("%Y", InvoiceDate) = "2009" OR strftime("%Y", InvoiceDate) = "2011";