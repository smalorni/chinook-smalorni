--(9)What are the respective total sales for each of those years?

SELECT Count(i.InvoiceId) as "Invoice Id",Sum(i.Total) as "2009 Count"
    FROM Invoice i 
        WHERE strftime("%Y", InvoiceDate) = "2009";

SELECT Count(i.InvoiceId) as "Invoice Id", SUM(i.Total) as "2011 Count"
    FROM Invoice i 
        WHERE strftime("%Y", InvoiceDate) = "2011";

